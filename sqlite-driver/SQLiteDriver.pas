namespace RemObjects.Elements.SQLite;
uses
  sqlite3;

type
  SQLiteException = public class(Exception) end;
  SQLiteDbConnection = public class(DbConnection)
  assembly
    fHandle: ^sqlite3;

    method Throw(res: Integer);
    begin
      case res of
        0: ;
        SQLITE_ERROR:
        if fHandle = nil then
          raise new SQLiteException("SQL error or missing database ")
        else
          raise new SQLiteException(String.FromPChar(^Char(sqlite3_errmsg16(fHandle))));
        SQLITE_INTERNAL: raise new SQLiteException("Internal logic error in SQLite ");
        SQLITE_PERM: raise new SQLiteException("Access permission denied ");
        SQLITE_ABORT: raise new SQLiteException("Callback routine requested an abort ");
      SQLITE_BUSY: raise new SQLiteException("The database file is locked ");
      SQLITE_LOCKED: raise new SQLiteException("A table in the database is locked ");
      SQLITE_NOMEM: raise new SQLiteException("A malloc() failed ");
      SQLITE_READONLY: raise new SQLiteException("Attempt to write a readonly database ");
      SQLITE_INTERRUPT: raise new SQLiteException("Operation terminated by sqlite3_interrupt()");
      SQLITE_IOERR: raise new SQLiteException("Some kind of disk I/O error occurred ");
      SQLITE_CORRUPT: raise new SQLiteException("The database disk image is malformed ");
      SQLITE_NOTFOUND: raise new SQLiteException("Unknown opcode in sqlite3_file_control() ");
      SQLITE_FULL: raise new SQLiteException("Insertion failed because database is full ");
      SQLITE_CANTOPEN: raise new SQLiteException("Unable to open the database file ");
      SQLITE_PROTOCOL: raise new SQLiteException("Database lock protocol error ");
      SQLITE_EMPTY: raise new SQLiteException("Database is empty ");
      SQLITE_SCHEMA: raise new SQLiteException("The database schema changed ");
      SQLITE_TOOBIG: raise new SQLiteException("String or BLOB exceeds size limit ");
      SQLITE_CONSTRAINT: raise new SQLiteException("Abort due to constraint violation ");
      SQLITE_MISMATCH: raise new SQLiteException("Data type mismatch ");
      SQLITE_MISUSE: raise new SQLiteException("Library used incorrectly ");
      SQLITE_NOLFS: raise new SQLiteException("Uses OS features not supported on host ");
      SQLITE_AUTH: raise new SQLiteException("Authorization denied ");
      SQLITE_FORMAT: raise new SQLiteException("Auxiliary database format error ");
      SQLITE_RANGE: raise new SQLiteException("2nd parameter to sqlite3_bind out of range ");
      SQLITE_NOTADB: raise new SQLiteException("File opened that is not a database file ");
      SQLITE_NOTICE: raise new SQLiteException("Notifications from sqlite3_log() ");
      SQLITE_WARNING: raise new SQLiteException("Warnings from sqlite3_log() ");
      SQLITE_ROW: raise new SQLiteException("sqlite3_step() has another row ready ");
      SQLITE_DONE: raise new SQLiteException("sqlite3_step() has finished executing ");
      else
        raise new SQLiteException("unknown error");
    end;
  end;
  public
    method Open; override;
    begin
      if State <> ConnectionState.Closed then begin
        raise new ArgumentException('Invalid state; already open');
      end;
      State := ConnectionState.Connecting;
      var lArg := ConnectionString.ToCharArray;
      Throw(sqlite3_open16(@lArg[0], @fHandle));
      State := ConnectionState.Open;
    end;

    method BeginTransaction(aLevel: IsolationLevel := 0): DbTransaction; override;
    begin
      Execute('begin transaction', nil, nil);

      exit new SQLiteDbTransaction(self);
    end;

  method CreateCommand: DbCommand; override;
  begin
    exit new SQLiteDbCommand(self);
  end;


  method Dispose; override;
  begin
    if State = ConnectionState.Open then begin
      sqlite3_close_v2(fHandle);
      State := ConnectionState.Closed;
    end;
  end;
end;
  SQLiteDbTransaction = public class(DbTransaction)
  assembly
    fOwner: SQLiteDbConnection;
  public
    constructor(aOwner: SQLiteDbConnection);
    begin
      fOwner := aOwner;
    end;
    method Commit; override;
    begin
      fOwner:Execute('commit', nil);
      fOwner := nil;
    end;

    method Rollback; override;
    begin
      fOwner:Execute('rollback', nil);
      fOwner := nil;
    end;

    method Dispose; override;
    begin
      fOwner := nil;
    end;
  end;

  SQLiteDbCommand = public class(DbCommand)
  assembly
    fCommand: ^sqlite3_stmt;
    fOwner: SQLiteDbConnection;

  public
    constructor(aOwner: SQLiteDbConnection);
    begin
      fOwner := aOwner;
    end;

    method Dispose; override;
    begin
      if fCommand <> nil then begin
        sqlite3_finalize(fCommand);
        fCommand := NIL;
      end;
    end;

    method ExecuteNonQuery: Integer; override;
    begin
      if fCommand = nil then Prepare;
      BindParameters;

      var lStep := sqlite3_step(fCommand);

      if lStep <> SQLITE_DONE then begin
        sqlite3_reset(fCommand);
        fOwner.Throw(lStep);
      end;
      var lRevs := sqlite3_changes(fOwner.fHandle);
      sqlite3_reset(fCommand);
      exit lRevs;
    end;

    method Prepare; override;
    begin
      if fCommand <> nil then raise new SQLiteException('Already prepared!');
      var lData := Command.ToCharArray;
      fOwner.Throw(sqlite3_prepare16(fOwner.fHandle, @lData[0], lData.Length * 2, @fCommand, nil));

    end;

    method BindParameters;
    begin
      for i: Integer := 0 to Parameters.Count -1 do begin
        var n := sqlite3_bind_parameter_index(fCommand, if Parameters[i].Name.StartsWith('@') then Parameters[i].Name else '@'+Parameters[i].Name);
        if n = 0 then raise new SQLiteException('No parameter in query for '+Parameters[i].Name);
        if Parameters[i].Value = nil then
          sqlite3_bind_null(fCommand, n)
        else begin
          case Parameters[i].Value.GetType of
            typeOf(Byte): sqlite3_bind_int64(fCommand, n, Byte(Parameters[i].Value));
            typeOf(SByte): sqlite3_bind_int64(fCommand, n, SByte(Parameters[i].Value));
            typeOf(Int16): sqlite3_bind_int64(fCommand, n, Int16(Parameters[i].Value));
            typeOf(UInt16): sqlite3_bind_int64(fCommand, n, UInt16(Parameters[i].Value));
            typeOf(Int32): sqlite3_bind_int64(fCommand, n, Int32(Parameters[i].Value));
            typeOf(UInt32): sqlite3_bind_int64(fCommand, n, UInt32(Parameters[i].Value));
            typeOf(Int64): sqlite3_bind_int64(fCommand, n, Int64(Parameters[i].Value));
            typeOf(UInt64): sqlite3_bind_int64(fCommand, n, UInt64(Parameters[i].Value));
            typeOf(IntPtr): sqlite3_bind_int64(fCommand, n, IntPtr(Parameters[i].Value));
            typeOf(UIntPtr): sqlite3_bind_int64(fCommand, n, UIntPtr(Parameters[i].Value));
            typeOf(DateTime): sqlite3_bind_int64(fCommand, n, DateTime(Parameters[i].Value).Ticks);

            typeOf(Single): sqlite3_bind_double(fCommand, n, Single(Parameters[i].Value));
            typeOf(Double): sqlite3_bind_double(fCommand, n, Double(Parameters[i].Value));

            typeOf(String): begin
                var c := String(Parameters[i].Value).ToCharArray;
                sqlite3_bind_text16(fCommand, n, @c[0], -1, nil);
            end;
            typeOf(array of Byte): sqlite3_bind_blob(fCommand, n, @array of Byte(Parameters[i].Value)[0], array of Byte(Parameters[i].Value).Length, nil);
            else raise new SQLiteException('Unknown type for parameter '+Parameters[i].Name);
          end;
        end;
      end;
    end;

    method ExecuteReader: DbDataReader; override;
    begin
      if fCommand = nil then Prepare;
      BindParameters;
      exit new SQLiteDataReader(self);
    end;
  end;

  SQLiteDataReader = public class(DbDataReader)
  private
    fOwner: SQLiteDbCommand;
  public
    method Dispose; override; empty;
    constructor(aOwner: SQLiteDbCommand);
    begin
      fOwner := aOwner;
    end;

    method &Read: Boolean; override;
    begin
      var lRes := sqlite3_step(fOwner.fCommand);
      if lRes = SQLITE_ROW then exit true;
      if lRes = SQLITE_DONE then exit false;
      fOwner.fOwner.Throw(lRes);
    end;
    property FieldCount: Integer read sqlite3_column_count(fOwner.fCommand); override;
    property FieldName[i: Integer]: String read String.FromPChar(^Char(sqlite3_column_name16(fOwner.fCommand, i))); override;
    property Item[i: Integer]: Object read -> begin
      case sqlite3_column_type(fOwner.fCommand, i) of
        SQLITE_NULL: exit nil;
        SQLITE_FLOAT: exit sqlite3_column_double(fOwner.fCommand, i);
        SQLITE_BLOB: begin
            var lTmp := new Byte[sqlite3_column_bytes(fOwner.fCommand, i)];
            Array.Copy(^Byte(sqlite3_column_blob(fOwner.fCommand, i)), lTmp, 0, lTmp.Length);

            exit lTmp;
        end;
        SQLITE3_TEXT: exit String.FromPChar(^Char(sqlite3_column_text16(fOwner.fCommand, i)));
        SQLITE_INTEGER: exit sqlite3_column_int64(fOwner.fCommand, i);

      end;
    end; override;
  end;

end.