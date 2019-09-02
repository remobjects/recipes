namespace RemObjects.Elements.MariaDb;
uses
  libmariadb;
type

  MariaDbException = public class(Exception) end;
  MariaDbConnection = public class(DbConnection)
  assembly
    fHandle: ^MYSQL;
    
    
    method FailErrors();
    begin 
      var lLast := mysql_errno(fHandle);
      if lLast = 0 then exit;
      
      raise new MariaDbException(String.FromPAnsiChars(mysql_error(fHandle)));
    end;
  public
    method Open; override;
    begin
      if State <> ConnectionState.Closed then begin
        raise new ArgumentException('Invalid state; already open');
      end;
      State := ConnectionState.Connecting;
      fHandle := mysql_init(nil);
      var lUn, lHo, lPw, lDb: String;
      lHo := '127.0.0.1';
      var lPort := 3306;
      for each el in ConnectionString.Split(' ', true) do begin 
        var lArgs := el.Split('=', true, 2);
        if lArgs.Length <> 2 then continue;
        case lArgs[0] of 
          'host', 'hostname': begin 
            lHo := lArgs[1];
          end;
          'user', 'username': begin 
            lUn := lArgs[1];
          end;
          'pass', 'password': begin 
            lPw := lArgs[1];
          end;
          'dbname', 'database', 'db': begin 
            lDb := lArgs[1];
          end;
          'port': lPort := Int32.Parse(lDb);
        end;
      end;
      if mysql_real_connect(fHandle, lHo, lUn, lPw, lDb, lPort, nil, 0) = nil then begin 
        try
          FailErrors;
        finally
          mysql_close(fHandle);
          fHandle := nil;
        end;
      end;
      State := ConnectionState.Open;
    end;

    method Dispose; override;
    begin
      if fHandle <> nil then 
      mysql_close(fHandle);
      fHandle := nil;
    end;
    method CreateCommand: DbCommand; override;
    begin
      exit new MariaDbCommand(self);
    end;


    method BeginTransaction(aLevel: :RemObjects.Elements.System.IsolationLevel := 0): DbTransaction; override;
    begin
      mysql_autocommit(fHandle, my_bool(1));
      FailErrors;
      exit new MariaDbTransaction(self);
    end;
  end;




  MariaDbTransaction = public class(DbTransaction)
  assembly
    fOwner: MariaDbConnection;
  public
    constructor(aOwner: MariaDbConnection);
    begin
      fOwner := aOwner;
    end;
   
    method Commit; override;
    begin
      fOwner.FailErrors;
      mysql_commit(fOwner.fHandle);
      fOwner.FailErrors;
    end;

    method Rollback; override;
    begin
      mysql_rollback(fOwner.fHandle);
    end;

    method Dispose; override;
    begin
      fOwner := nil;
    end;
  end;

  MariaDbCommand = public class(DbCommand)
  assembly
    fOwner: MariaDbConnection;
    fParIdx: Dictionary<String, Integer> := new Dictionary<String, Integer>;
    fHandle: ^MYSQL_STMT;
  public
    constructor(aOwner: MariaDbConnection);
    begin
      fOwner := aOwner;
    end;

    finalizer;
    begin 
      Dispose
    end;

    method Dispose; override;
    begin
      if fHandle <> nil then begin
        mysql_stmt_close(fHandle);
        fHandle := nil;
      end;
    end;

    method Prepare; override;
    begin
      if fHandle <> nil then raise new MariaDbException('Already prepared!');
      
      fHandle := mysql_stmt_init(fOwner.fHandle);
      fOwner.FailErrors;

      
      fParIdx.Clear;
      var lSQL := SqlQueryParameterFixer.FixString(Command, a -> begin
        var lRes: Integer;
        if not fParIdx.TryGetValue(a, out lRes) then begin
          lRes :=fParIdx.Count;
          fParIdx[a] := lRes;
        end;
        exit '?';
      end).ToAnsiChars;

      if mysql_stmt_prepare(fHandle, @lSQL[0], length(lSQL)) <> 0 then 
        fOwner.FailErrors;
    end;

    method BindParameters; private;
    begin
      if Parameters.Count = 0 then exit;
      var lParams := new MYSQL_BIND[Parameters.Count];
      var lDummy := new List<Array of Byte>;
      for i: Integer := 0 to lParams.Count -1 do begin 
        lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_NULL;
      end;

      for i: Integer := 0 to Parameters.Count -1 do begin 
        if not fParIdx.TryGetValue(Parameters[i].Name, out var lIdx) then continue;
        if Parameters[i].Value = nil then continue;
        if Parameters[i].Value is array of Byte then begin 
          lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_BLOB;
          lParams[i].buffer := @array of Byte(Parameters[i].Value)[0];
          lParams[i].buffer_length := array of Byte(Parameters[i].Value).Length;
          lParams[i].length_value := array of Byte(Parameters[i].Value).Length;
        end else if Parameters[i].Value is DateTime then begin
          lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_TIMESTAMP;
          var lBuf := new Byte[sizeOf(__struct_st_mysql_time)];
          lDummy.Add(lBuf);
          var d := DateTime(Parameters[i].Value);
          
          ^MYSQL_TIME(@lBuf[0])^.year := d.Year;
          ^MYSQL_TIME(@lBuf[0])^.month := d.Month;
          ^MYSQL_TIME(@lBuf[0])^.day := d.Day;
          ^MYSQL_TIME(@lBuf[0])^.hour := d.Hour;
          ^MYSQL_TIME(@lBuf[0])^.minute := d.Minute;
          ^MYSQL_TIME(@lBuf[0])^.second := d.Second;
          ^MYSQL_TIME(@lBuf[0])^.time_type := __enum_enum_mysql_timestamp_type.MYSQL_TIMESTAMP_DATETIME;
          lParams[i].buffer := @lBuf[0];
          lParams[i].buffer_length := length(lBuf);
          lParams[i].length_value := length(lBuf);
        end else 
          case Parameters[i].Value.GetType.Code of 
            TypeCodes.Boolean: begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_BIT;
              var lBuf := new Byte[sizeOf(1)];
              lDummy.Add(lBuf);
              ^Boolean(@lBuf[0])^ := Boolean(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.Char: begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_STRING;
              var lBuf := new Byte[1];
              lDummy.Add(lBuf);
              ^Byte(@lBuf[0])^ := Byte(Char(Parameters[i].Value));
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.Byte: begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_TINY;
              var lBuf := new Byte[1];
              lDummy.Add(lBuf);
              ^Byte(@lBuf[0])^ := Byte(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.SByte,
            TypeCodes.Int16:  begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_SHORT;
              var lBuf := new Byte[2];
              lDummy.Add(lBuf);
              ^Int16(@lBuf[0])^ := Convert.ToInt16(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.Int32,
            TypeCodes.UInt16:  begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_LONG;
              var lBuf := new Byte[4];
              lDummy.Add(lBuf);
              ^Int32(@lBuf[0])^ := Convert.ToInt32(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.UInt32,
            TypeCodes.Int64,
            TypeCodes.UInt64:  begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_LONGLONG;
              var lBuf := new Byte[8];
              lDummy.Add(lBuf);
              ^Int64(@lBuf[0])^ := Convert.ToInt64(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.Single:  begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_FLOAT;
              var lBuf := new Byte[4];
              lDummy.Add(lBuf);
              ^Single(@lBuf[0])^ := Convert.ToSingle(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.Double: begin 
              lParams[i].buffer_type := __enum_enum_field_types.MYSQL_TYPE_DOUBLE;
              var lBuf := new Byte[8];
              lDummy.Add(lBuf);
              ^Double(@lBuf[0])^ := Convert.ToDouble(Parameters[i].Value);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;
            TypeCodes.String: begin 
              var lBuf := Encoding.UTF8.GetBytes(String(Parameters[i].Value));
              lDummy.Add(lBuf);
              lParams[i].buffer := @lBuf[0];
              lParams[i].buffer_length := length(lBuf);
              lParams[i].length_value := length(lBuf);
            end;

          else
            raise new ArgumentException('Unsupported type for parameter '+Parameters[i].Name);
          end;
      end;


      if mysql_stmt_bind_param(fHandle, @lParams[0]) <> 0 then 
        fOwner.FailErrors;
    end;

    method ExecuteNonQuery: Integer; override;
    begin
      if fHandle = nil then Prepare;
      BindParameters;
      
      if mysql_stmt_execute(fHandle) <> 0 then 
        fOwner.FailErrors();
      exit mysql_stmt_affected_rows(fHandle);
    end;

    method ExecuteReader: DbDataReader; override;
    begin
      if fHandle = nil then Prepare;
      BindParameters;
      if mysql_stmt_execute(fHandle) <> 0 then 
        fOwner.FailErrors();
      exit new MariaDbDataReader(self, fHandle);
    end;
  end;

  MariaDbDataReader = public class(DbDataReader)
  private
    fResult: ^MYSQL_STMT;
    fOwner: MariaDbCommand;
    fMD: ^MYSQL_FIELD;
    FPMD: ^MYSQL_RES;
    fBuffer: array of Byte;
    fLengths: array of UInt32;
    fError: array of my_bool;
    fBindData: array of MYSQL_BIND;
    fInd: array of my_bool;
  public
    method Dispose; override;
    begin
      if FPMD <> nil then begin 
        mysql_free_result(FPMD);
        FPMD := nil;
      end;
      fResult := nil;
    end;

    finalizer;
    begin 
      Dispose;
    end;

    constructor(aOwner: MariaDbCommand; aMem: ^MYSQL_STMT);
    begin
      fOwner := aOwner;
      fResult := aMem;
      FPMD := mysql_stmt_result_metadata(aMem);
      var lCount := FPMD^.field_count;
      fMD := mysql_fetch_fields(FPMD);
      var lLen := 0;
      fInd := new my_bool[lCount];
      fBindData := new MYSQL_BIND[lCount];
      fLengths := new UInt32[lCount];
      fError := new my_bool[lCount];
      for i: Integer := 0 to lCount -1 do begin 
        fBindData[i].buffer_type := fMD[i].type;
        if (lLen mod 16) > 0 then lLen := lLen + (16 - (lLen mod 16));
        fBindData[i].buffer := ^Void(lLen);
        lLen := lLen + fMD[i].length + 4;
        fBindData[i].buffer_length := fMD[i].length + 4;
        fBindData[i].is_null := @fInd[i];
        fBindData[i].length := @fLengths[i];
        fBindData[i].error := @fError[i];
      end;
      fBuffer := new Byte[lLen];
      for i: Integer := 0 to lCount -1 do begin 
        //lLen := lLen + fResult^.sqlvar[i].sqllen + 4;
        fBindData[i].buffer := ^Void(IntPtr(fBindData[i].buffer) + IntPtr(@fBuffer[0]));
      end;
      if mysql_stmt_bind_result(fOwner.fHandle, @fBindData[0]) = 0 then 
        fOwner.fOwner.FailErrors;
      if mysql_stmt_store_result(fOwner.fHandle) = 0 then 
        fOwner.fOwner.FailErrors;
    end;

    method &Read: Boolean; override;
    begin
      var lRes := mysql_stmt_fetch(fResult);
      if lRes = MYSQL_NO_DATA then exit false;
      if lRes <> 0 then 
        fOwner.fOwner.FailErrors();
      exit true;
    end;
    property FieldCount: Integer read length(fLengths);override;
    property FieldName[i: Integer]: String read -> begin
      result := String.FromPAnsiChars(^AnsiChar(fMD[i].name), fMD[i].name_length);
    end;override;
    property Item[i: Integer]: Object read -> begin
      if fInd[i] <> #0 then exit nil;
      var lVar := @fBindData[i].buffer[0];
      case fMD[i].type of 
        __enum_enum_field_types.MYSQL_TYPE_BIT: exit ^Byte(lVar)^ <> 0;
        __enum_enum_field_types.MYSQL_TYPE_LONGLONG: exit ^Int64(lVar)^;
        __enum_enum_field_types.MYSQL_TYPE_LONG: exit ^Int32(lVar)^;
        __enum_enum_field_types.MYSQL_TYPE_SHORT: exit ^Int16(lVar)^;
        __enum_enum_field_types.MYSQL_TYPE_FLOAT: exit ^Single(lVar)^;
        __enum_enum_field_types.MYSQL_TYPE_DOUBLE: exit ^Double(lVar)^;
        __enum_enum_field_types.MYSQL_TYPE_VAR_STRING, __enum_enum_field_types.MYSQL_TYPE_STRING: exit String.FromPAnsiChars(^AnsiChar(lVar), fLengths[i]);
        __enum_enum_field_types.MYSQL_TYPE_TIMESTAMP2,
        __enum_enum_field_types.MYSQL_TYPE_DATETIME,
        __enum_enum_field_types.MYSQL_TYPE_TIME,
        __enum_enum_field_types.MYSQL_TYPE_TIMESTAMP: begin 
          var lTS := ^MYSQL_TIME(lVar);
          exit new DateTime(lTS^.year, lTS^.month, lTS^.day, lTS^.hour, lTS^.minute, lTS^.second);
        end;
        else raise new ArgumentException('Unknown type!');
      end;
    end; override;
  end;

end.