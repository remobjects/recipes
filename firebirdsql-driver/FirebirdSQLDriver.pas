namespace RemObjects.Elements.FirebirdSQL;
uses
  libfbclient;
type

  FirebirdSQLException = public class(Exception) end;
  FirebirdSQLDbConnection = public class(DbConnection)
  assembly
    fHandle: isc_db_handle;
    fStatusVector: ISC_STATUS_ARRAY;

    method FailErrors(aVal: ISC_STATUS);
    begin 
      if aVal <> 0 then FailErrors;
    end;

    method FailErrors();
    begin 
      var lVec := @fStatusVector[0];
      var lSB := new StringBuilder;
      var lData := new Byte[4096];
      loop begin
        var lLen := isc_interprete(^ISC_SCHAR(@lData[0]), @lVec);
        if lLen = 0 then break;
        lSB.AppendLine(Encoding.UTF8.GetString(lData, 0, lLen));
      end;
      
      var lMsg := lSB.ToString.Trim;
      raise new FirebirdSQLException(lMsg);
    end;
  public
    method Open; override;
    begin
      if State <> ConnectionState.Closed then begin
        raise new ArgumentException('Invalid state; already open');
      end;
      State := ConnectionState.Connecting;
      var lFN: String;
      var lArgsB := new MemoryStream;
      lArgsB.Write([isc_dpb_version1], 0, 1);
      for each el in ConnectionString.Split(' ', true) do begin 
        var lArgs := el.Split('=', true, 2);
        if lArgs.Length <> 2 then continue;
        case lArgs[0] of 
          'host', 'hostname': begin 
            var lData := Encoding.UTF8.GetBytes(lArgs[1]);
            var c := new Byte[2];
            c[0] := isc_dpb_host_name;
            c[1] := length(lData);
            lArgsB.Write(c, 0, 2);
            lArgsB.Write(lData, 0, c[1]);
          end;
          'user', 'username': begin 
            var lData := Encoding.UTF8.GetBytes(lArgs[1]);
            var c := new Byte[2];
            c[0] := isc_dpb_user_name;
            c[1] := length(lData);
            lArgsB.Write(c, 0, 2);
            lArgsB.Write(lData, 0, c[1]);
          end;
          'pass', 'password': begin 
            var lData := Encoding.UTF8.GetBytes(lArgs[1]);
            var c := new Byte[2];
            c[0] := isc_dpb_password;
            c[1] := length(lData);
            lArgsB.Write(c, 0, 2);
            lArgsB.Write(lData, 0, c[1]);
          end;
          'dbname', 'database', 'db': begin 
            lFN := lArgs[1];
          end;
        end;
      end;
      var lArgsA := lArgsB.ToArray;
      if isc_attach_database(@fStatusVector[0], 0, lFN, @fHandle, lArgsA.Length, ^ISC_SCHAR(@lArgsA[0])) <> 0 then 
        FailErrors;
      State := ConnectionState.Open;
    end;

    method Dispose; override;
    begin
      if fHandle <> nil then
        isc_detach_database(@fStatusVector[0], @fHandle);
      fHandle := nil;
    end;
    method CreateCommand: DbCommand; override;
    begin
      exit new FirebirdSQLDbCommand(self);
    end;


    method BeginTransaction(aLevel: :RemObjects.Elements.System.IsolationLevel := 0): DbTransaction; override;
    begin
      var lTL: isc_tr_handle;
      var lTB: array of Byte;
      case aLevel of
        :RemObjects.Elements.System.IsolationLevel.ReadCommited: lTB := [isc_tpb_version3,
          isc_tpb_write,
          isc_tpb_read_committed,
          isc_tpb_no_rec_version,
          isc_tpb_wait];
        :RemObjects.Elements.System.IsolationLevel.Serializable: lTB := [isc_tpb_version3,
          isc_tpb_write,
          isc_tpb_consistency,
          isc_tpb_wait];
        else lTB := [isc_tpb_version3,
            isc_tpb_write,
            isc_tpb_concurrency,
            isc_tpb_wait];

      end;
      FailErrors(isc_start_transaction(@fStatusVector[0], @lTL, 1, @fHandle, length(lTB), @lTB[0]));
      exit new FirebirdSQLDbTransaction(self, lTL);
    end;
  end;




  FirebirdSQLDbTransaction = public class(DbTransaction)
  assembly
    fOwner: FirebirdSQLDbConnection;
    fHandle: isc_tr_handle;
  public
    constructor(aOwner: FirebirdSQLDbConnection; aHandle: isc_tr_handle);
    begin
      fOwner := aOwner;
      fHandle := aHandle;
    end;
   
    method Commit; override;
    begin
      fOwner.FailErrors(isc_commit_transaction(@fOwner.fStatusVector[0], @fHandle));
      fHandle := nil;
    end;

    method CommitRetaining; 
    begin
      fOwner.FailErrors(isc_commit_retaining(@fOwner.fStatusVector[0], @fHandle));
      fHandle := nil;
    end;

    method Rollback; override;
    begin
      fOwner.FailErrors(isc_rollback_transaction(@fOwner.fStatusVector[0], @fHandle));
      fHandle := nil;
    end;

    method Dispose; override;
    begin
      fOwner := nil;
    end;
  end;

  FirebirdSQLDbCommand = public class(DbCommand)
  assembly
    fHandle: isc_stmt_handle;
    fOwner: FirebirdSQLDbConnection;
    fMem: ^XSQLDA;
    fImplicitTrans: Boolean;
    fParamBuffers: List<array of Byte> := new List<Array of Byte>;
    fParIdx: Dictionary<String, Integer> := new Dictionary<String, Integer>;

  public
    constructor(aOwner: FirebirdSQLDbConnection);
    begin
      fOwner := aOwner;
      fOwner.FailErrors(isc_dsql_allocate_statement(@fOwner.fStatusVector[0], @fOwner.fHandle, @fHandle));
    end;

    finalizer;
    begin 
      Dispose
    end;

    method Dispose; override;
    begin
      if fHandle <> nil then begin
        isc_dsql_free_statement(@fOwner.fStatusVector, @fHandle, DSQL_drop);
        fHandle := nil;
        if fMem <> nil then 
          free(fMem);
        fMem := nil;
      end;
    end;

    method Prepare; override;
    begin
      if fMem <> nil then raise new FirebirdSQLException('Already prepared!');
      if Transaction = nil then begin 
        fImplicitTrans := true;
        Transaction := fOwner.BeginTransaction;
      end;

      fParIdx.Clear;
      var lData := SqlQueryParameterFixer.FixString(Command, a -> begin
        var lRes: Integer;
        if not fParIdx.TryGetValue(a, out lRes) then begin
          lRes :=fParIdx.Count;
          fParIdx[a] := lRes;
        end;
        exit '?';
      end);
      fMem := ^XSQLDA(malloc(sizeOf(XSQLDA) + (sizeOf(XSQLVAR) * (fParIdx.Count -1))));
      memset(fMem, 0, sizeOf(XSQLDA) + (sizeOf(XSQLVAR) * (fParIdx.Count -1)));
      fMem^.version := SQLDA_VERSION1;
      var lH := FirebirdSQLDbTransaction(Transaction):fHandle;
      fOwner.FailErrors(isc_dsql_prepare(@fOwner.fStatusVector, if lH = nil then nil else @lH, @fHandle, 0, lData, 3, fMem));
      fMem^.sqln := fParIdx.Count;
    end;

    method BindParameters; private;
    begin
      for i: Integer := 0 to Parameters.Count -1 do begin
        if not fParIdx.TryGetValue(Parameters[i].Name, out var lIdx) then continue;
        if Parameters[i].Value = nil then 
          fMem^.sqlvar[lIdx].sqltype := SQL_NULL
        else
        if Parameters[i].Value is array of Byte then begin
          if array of Byte(Parameters[i].Value).Length <> 0 then 
            fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(array of Byte(Parameters[i].Value)[0]));
          fMem^.sqlvar[lIdx].sqllen := length(array of Byte(Parameters[i].Value));
          fMem^.sqlvar[lIdx].sqltype := SQL_BLOB;
        end else if Parameters[i].Value is DateTime then begin
          var lBuf := new Byte[sizeOf(ISC_TIMESTAMP)];
          fParamBuffers.Add(lBuf);
          var lDT := DateTime.ToOleDate(DateTime(Parameters[i].Value));
          ^ISC_TIMESTAMP(@lBuf[0])^. timestamp_date := Integer(lDT + DateOffset);
          ^ISC_TIMESTAMP(@lBuf[0])^. timestamp_time := Integer((lDT - Math.Truncate(lDT)) * TimeOffset);

          fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
          fMem^.sqlvar[lIdx].sqllen := length(lBuf);
          fMem^.sqlvar[lIdx].sqltype := SQL_TIMESTAMP;
        end else begin
          case Parameters[i].Value.GetType.Code of
            TypeCodes.Boolean: begin 
              var lBuf := new Byte[1];
              lBuf[0] := Byte(Boolean(Parameters[i].Value));
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf);
              fMem^.sqlvar[lIdx].sqltype := SQL_BOOLEAN;
            end;
            TypeCodes.Char: begin 
              var lBuf := new Byte[2];
              lBuf[0] := Byte(Char(Parameters[i].Value));
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf)-1;
              fMem^.sqlvar[lIdx].sqltype := SQL_TEXT;
            end;
            TypeCodes.String: begin 
              var lBuf := String(Parameters[i].Value).ToAnsiChars(true);
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf)-1;
              fMem^.sqlvar[lIdx].sqltype := SQL_TEXT;
            end;
            TypeCodes.SByte,
            TypeCodes.Int16,
            TypeCodes.UInt16,
            TypeCodes.Int32,
            TypeCodes.Byte: begin 
              var lBuf := new Byte[4];
              ^Int32(@(lBuf[0]))^ := Convert.ToInt32(Parameters[i].Value);
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf);
              fMem^.sqlvar[lIdx].sqltype := SQL_LONG;
            end;

            TypeCodes.UInt32,
            TypeCodes.Int64,
            TypeCodes.UInt64:  begin 
              var lBuf := new Byte[8];
              ^Int64(@(lBuf[0]))^ := Convert.ToInt64(Parameters[i].Value);
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf);
              fMem^.sqlvar[lIdx].sqltype := SQL_INT64;
            end;
            TypeCodes.Single: begin 
              var lBuf := new Byte[4];
              ^Single(@(lBuf[0]))^ := Single(Parameters[i].Value);
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf);
              fMem^.sqlvar[lIdx].sqltype := SQL_FLOAT;
            end;
            TypeCodes.Double: begin 
              var lBuf := new Byte[4];
              ^Double(@(lBuf[0]))^ := Double(Parameters[i].Value);
              fParamBuffers.Add(lBuf);
              fMem^.sqlvar[lIdx].sqldata := ^ISC_SCHAR(@(lBuf)[0]);
              fMem^.sqlvar[lIdx].sqllen := length(lBuf);
              fMem^.sqlvar[lIdx].sqltype := SQL_DOUBLE;
            end;
           else 
             raise new ArgumentException('Unknown type for parameter '+Parameters[i].Name);
          end;
        end;
      end;
    end;


    
    const
      TimeOffset = 864000000.0; assembly;
      DateOffset = 15018; assembly;


    method ExecuteNonQuery: Integer; override;
    begin
      if fMem = nil then Prepare;
      BindParameters;
      var lTrans := FirebirdSQLDbTransaction(Transaction):fHandle;
      fOwner.FailErrors(isc_dsql_execute(@fOwner.fStatusVector[0], if lTrans = nil then nil else @lTrans, @fHandle, 3, if fMem.sqln = 0 then nil else fMem));
      var lItems: array of AnsiChar := [AnsiChar(isc_info_sql_records)];
      var lData := new Byte[1024];
      fOwner.FailErrors(isc_dsql_sql_info(@fOwner.fStatusVector[0], @fHandle, 1, @lItems[0], 1024, ^ISC_SCHAR(@lData)));
      if fImplicitTrans then 
        FirebirdSQLDbTransaction(Transaction).CommitRetaining;
      var i := 0;
      while i < 1024 do begin
        if lData[i] = isc_info_end then break;
        var lLen := lData[i+2] * $100 + lData[i+1];
        if lData[i] = isc_info_sql_records then begin 
          inc(i, 3);
          var lEnd := i + lLen;
          while i < lEnd do begin
            lLen := lData[i+2] * $100 + lData[i+1];
            i := i + 3;
            if lData[i-3] in [isc_info_req_insert_count, isc_info_req_update_count, isc_info_req_delete_count] then
              result := result + ^Integer(@lData[i])^;

            i := i + lLen;
          end;

          i := lEnd;
        end else 
          i := i + lLen;
      end;
    end;

    method ExecuteReader: DbDataReader; override;
    begin
      if fMem = nil then Prepare;
      BindParameters;
      var lTrans := FirebirdSQLDbTransaction(Transaction):fHandle;
      var lMem := ^XSQLDA(malloc(sizeOf(XSQLDA) + (sizeOf(XSQLVAR) * (fMem^.sqld -1))));
      memset(lMem, 0, sizeOf(XSQLDA) + (sizeOf(XSQLVAR) * (fMem^.sqld -1)));
      lMem^.sqln := fMem^.sqld;
      lMem^.sqld := fMem^.sqld;
      lMem^.version := SQLDA_VERSION1;
      fMem^.sqld := fMem^.sqln;
      var lFailure := isc_dsql_execute(@fOwner.fStatusVector[0], if lTrans = nil then nil else @lTrans, @fHandle, 1, if fMem.sqln = 0 then nil else fMem);
      if lFailure <> 0 then begin
        free(lMem);
        fOwner.FailErrors(lFailure);
      end;

      exit new FirebirdSQLDataReader(self, lMem);
    end;
  end;

  FirebirdSQLDataReader = public class(DbDataReader)
  private
    fResult: ^XSQLDA;
    fOwner: FirebirdSQLDbCommand;
    fBuffer: array of Byte;
    fInd: array of ISC_SHORT;
  public
    method Dispose; override;
    begin
      if fResult <> nil then 
        free(fResult);
      fResult := nil;
    end;

    finalizer;
    begin 
      Dispose;
    end;

    constructor(aOwner: FirebirdSQLDbCommand; aMem: ^XSQLDA);
    begin
      fOwner := aOwner;
      fResult := aMem;
      fOwner.fOwner.FailErrors(isc_dsql_describe(@fOwner.fOwner.fStatusVector[0], @fOwner.fHandle, 1, fResult));
      var lLen := 0;
      fInd := new ISC_SHORT[fResult^.sqln];
      for i: Integer := 0 to fResult^.sqln -1 do begin 
        lLen := lLen + fResult^.sqlvar[i].sqllen + 4;
        fResult^.sqlvar[i].sqldata := ^ISC_SCHAR(lLen);
        fResult^.sqlvar[i].sqlind := @fInd[i];
      end;
      fBuffer := new Byte[lLen];
      for i: Integer := 0 to fResult^.sqln -1 do begin 
        lLen := lLen + fResult^.sqlvar[i].sqllen + 4;
        fResult^.sqlvar[i].sqldata := ^ISC_SCHAR(IntPtr(fResult^.sqlvar[i].sqldata) + IntPtr(@fBuffer[0]));
      end;
    end;

    method &Read: Boolean; override;
    begin
      var lRes := isc_dsql_fetch(@fOwner.fOwner.fStatusVector[0], @fOwner.fHandle, 1, fResult);
      if lRes = 100 then exit false;
      fOwner.fOwner.FailErrors(lRes);
      exit true;
    end;
    property FieldCount: Integer read fResult^.sqln;override;
    property FieldName[i: Integer]: String read -> begin
      result := String.FromPAnsiChars(^AnsiChar(fResult^.sqlvar[i].sqlname));
    end;override;
    property Item[i: Integer]: Object read -> begin
      if fInd[i] = -1 then exit nil;
      var lVar := @fResult^.sqlvar[i];
      case lVar.sqltype and not 1 of 
        SQL_BOOLEAN: exit lVar.sqldata^ <> 0;
        SQL_INT64: exit ^Int64(lVar.sqldata)^;
        SQL_LONG: exit ^Int32(lVar.sqldata)^;
        SQL_SHORT: exit ^Int16(lVar.sqldata)^;
        SQL_FLOAT: exit ^Single(lVar.sqldata)^;
        SQL_DOUBLE: exit ^Double(lVar.sqldata)^;
        SQL_TEXT: exit String.FromPAnsiChars(lVar.sqldata, lVar.sqllen);
        SQL_VARYING: exit String.FromPAnsiChars(lVar.sqldata+2, ^Int16(lVar.sqldata)^);
        SQL_TIMESTAMP: begin 
          exit DateTime.FromOleDate(^ISC_TIMESTAMP(lVar.sqldata)^.timestamp_date - FirebirdSQLDbCommand.DateOffset + ^ISC_TIMESTAMP(lVar.sqldata)^.timestamp_date / FirebirdSQLDbCommand.TimeOffset);
        end;
        else raise new ArgumentException('Unknown type!');
      end;
    end; override;
  end;

end.