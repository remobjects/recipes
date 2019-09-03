namespace RemObjects.Elements.TLS;

uses 
  libmbedtls;

type
  TLSException = public class(Exception) end;
  ProcFN = function(aCtx: ^Void; aData: ^Byte; aLen: IntPtr): IntPtr;
  X509Certificate = public class(IDisposable)
  assembly  
    fCAValid: Boolean;
    fCA: mbedtls_x509_crt;
  public
    constructor;
    begin 
      mbedtls_x509_crt_init(@fCA);
      fCAValid := true;
    end;

    
    method Load(aData: array of Byte);
    begin 
      TLSStream.FailError('mbedtls_x509_crt_parse', mbedtls_x509_crt_parse(@fCA, (@aData[0]), length(aData)));
    end;

    method Load(aFN: String);
    begin 
      using fs := new FileStream(aFN, FileMode.Open, FileAccess.Read) do begin
        var lByte := new Byte[fs.Length+1];
        fs.Read(lByte, lByte.Length);
        Load(lByte);
      end;
    end;

    finalizer;
    begin 
      Dispose;
    end;

    method Dispose;
    begin
      if fCAValid then 
        mbedtls_x509_crt_free(@fCA);
      fCAValid := false;
    end;
  end;

  PrivateKey = public class(IDisposable)
  assembly  
    fPKValid: Boolean;
    fPK: mbedtls_pk_context;
  public
    constructor;
    begin 
      mbedtls_pk_init(@fPK);
      fPKValid := true;
    end;

    
    method Load(aData: array of Byte; aPassword: String);
    begin 
      var lPW := if aPassword = nil then nil else Encoding.UTF8.GetBytes(aPassword);
      TLSStream.FailError('mbedtls_pk_parse_key', mbedtls_pk_parse_key(@fPK, (@aData[0]), length(aData), if (lPW = nil) or (length(lPW) = 0) then nil else @lPW[0], length(lPW)));
    end;

    method Load(aFN: String; aPassword:String);
    begin 
      using fs := new FileStream(aFN, FileMode.Open, FileAccess.Read) do begin
        var lByte := new Byte[fs.Length+1];
        fs.Read(lByte, lByte.Length);
        Load(lByte, aPassword);
      end;
    end;

    finalizer;
    begin 
      Dispose;
    end;

    method Dispose;
    begin
      if fPKValid then 
        mbedtls_pk_free(@fPK);
      fPKValid := false;
    end;
  end;
  TLSStream = public class(Stream)
  private
    fSession: mbedtls_ssl_context;
    fConfig: mbedtls_ssl_config;
    fMy, fCA: X509Certificate;
    fPW: PrivateKey;
    fVerify: Boolean;
    fDidHandshake: Boolean;
    fUnderlyingStream: Stream;
    class var fRNG: mbedtls_ctr_drbg_context;
    class var fEntropy:  mbedtls_entropy_context;

    // This isn't used but forces the compiler to link these symbols.
    class method Dummy;
    begin 
      rtl.lstrlenW(nil);
      rtl.FindClose(nil);
      rtl.QueryPerformanceCounter(nil);
      rtl.QueryPerformanceFrequency(nil);
    end;


    class constructor;
    begin 
      mbedtls_entropy_init(@fEntropy);
      FailError('mbedtls_ctr_drbg_seed', mbedtls_ctr_drbg_seed(@fRNG, @mbedtls_entropy_func, @fEntropy, nil, 0));
    end;
  public
    property CanRead: Boolean read true; override;
    property CanWrite: Boolean read true; override;
    property CanSeek: Boolean read false; override;
    method IsValid: Boolean; override;
    begin 
      exit fUnderlyingStream <> nil;
    end;

    constructor(aStream: Stream; aServer: Boolean);
    begin 
      if aStream = nil then raise new ArgumentException('aStraem is not set');
      mbedtls_ssl_init(@fSession);
      mbedtls_ssl_config_init(@fConfig);


      mbedtls_ssl_conf_rng( @fConfig, @mbedtls_ctr_drbg_random, @fRNG );


      FailError('mbedtls_ssl_config_defaults', mbedtls_ssl_config_defaults(@fConfig, if aServer then MBEDTLS_SSL_IS_SERVER else MBEDTLS_SSL_IS_CLIENT, MBEDTLS_SSL_TRANSPORT_STREAM, MBEDTLS_SSL_PRESET_DEFAULT));
      fUnderlyingStream := aStream;
    end;

    method SetVerifyTLS(aValue: Boolean);
    begin 
      fVerify := aValue;
      mbedtls_ssl_conf_authmode(@fConfig, if aValue then MBEDTLS_SSL_VERIFY_OPTIONAL else MBEDTLS_SSL_VERIFY_NONE);
    end; 

    method SetCAChain(aChain: X509Certificate);
    begin 
      fCA := aChain;
      mbedtls_ssl_conf_ca_chain( @fConfig, @aChain.fCA, nil);
    end;

    method SetCertificate(aCert: X509Certificate; aPrivateKey: PrivateKey);
    begin 
      fMy := aCert;
      fPW := aPrivateKey;
      FailError('mbedtls_ssl_conf_own_cert', mbedtls_ssl_conf_own_cert( @fConfig, @aCert.fCA, @aPrivateKey.fPK));
    end;

    class method FailError(s: String; aError: Integer); assembly;
    begin 
      if aError = 0 then exit;
      var lBuf: array[0..1024] of AnsiChar;
      mbedtls_strerror(aError, @lBuf[0], 1024);
      raise new TLSException('Method '+s+' failed with error '+String.FromPAnsiChars(@lBuf[0], 1024)+' ('+aError+')');
    end;

    method Initialize(aHostname: String);
    begin 
      if fDidHandshake then exit;
      fDidHandshake := true;
      FailError('mbedtls_ssl_setup', mbedtls_ssl_setup(@fSession, @fConfig));
      FailError('mbedtls_ssl_set_hostname', mbedtls_ssl_set_hostname(@fSession, aHostname));
      var lReceive: ProcFN := @IntReceive;
      var lSend: ProcFN := @IntSend;
      mbedtls_ssl_set_bio(@fSession, InternalCalls.Cast(self), ^Void(lSend), ^Void(lReceive), nil);
      loop begin
        var lRes := mbedtls_ssl_handshake(@fSession);
        if lRes = 0 then break;
        if lRes in [MBEDTLS_ERR_SSL_WANT_READ, MBEDTLS_ERR_SSL_WANT_WRITE] then continue;
        FailError('mbedtls_ssl_handshake', lRes);
      end;
      if fVerify then begin 
        var flags := mbedtls_ssl_get_verify_result(@fSession);
        if &flags <> 0 then begin 
          var vrfy_buf: array[0..512] of AnsiChar;

          mbedtls_x509_crt_verify_info(vrfy_buf, sizeof( vrfy_buf ), "  ! ", flags );

          raise new TLSException('Error verifying certificate '+String.FromPAnsiChars(vrfy_buf));
        end;
      end;
    end;

    class method IntReceive(aCtx: ^Void; aData: ^Byte; aLen: IntPtr): IntPtr;
    begin 
      var lSelf := InternalCalls.Cast<TLSStream>(aCtx);
      exit lSelf.fUnderlyingStream.Read(aData, aLen);
    end;

    class method IntSend(aCtx: ^Void; aData: ^Byte; aLen: IntPtr): IntPtr;
    begin 
      var lSelf := InternalCalls.Cast<TLSStream>(aCtx);
      exit lSelf.fUnderlyingStream.Write(aData, aLen);
    end;

    method Close; override;
    begin 
      if fUnderlyingStream <> nil then begin 
        mbedtls_ssl_close_notify(@fSession);
        fUnderlyingStream.Close;
        mbedtls_ssl_free(@fSession);
        mbedtls_ssl_config_free(@fConfig);
        fUnderlyingStream := nil;
      end;
    end;

    finalizer;
    begin 
      Close;
    end;

    method Seek(Offset: Int64; Origin: SeekOrigin): Int64; override;
    begin 
      raise new NotSupportedException;
    end;


    method &Read(aSpan: Span<Byte>): Integer; override;
    begin 
      result := mbedtls_ssl_read(@fSession, aSpan.Pointer, aSpan.Length);
      if result < 0 then exit 0;
    end;

    method &Write(aSpan: ImmutableSpan<Byte>): Integer; override;
    begin 
      result := mbedtls_ssl_write(@fSession, aSpan.Pointer, aSpan.Length);
      if result < 0 then exit 0;
    end;
  end;



end.