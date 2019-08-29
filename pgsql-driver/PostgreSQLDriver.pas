namespace RemObjects.Elements.PostgreSQL;
uses
  libpq;
type
  
  PostgreSQLOid = public enum (
    boolean = 16, //boolean, 'true'/'false'
    bytea = 17, //variable-length string, binary values escaped
    char = 18, //single character
    name = 19, //63-byte type for storing system identifiers
    bigint = 20, //~18 digit integer, 8-byte storage
    smallint = 21, //-32 thousand to 32 thousand, 2-byte storage
    int2vector = 22, //array of int2, used in system tables
    integer = 23, //-2 billion to 2 billion integer, 4-byte storage
    regproc = 24, //registered procedure
    text = 25, //variable-length string, no limit specified
    oid = 26, //object identifier(oid), maximum 4 billion
    tid = 27, //(block, offset), physical location of tuple
    xid = 28, //transaction id
    cid = 29, //command identifier type, sequence in transaction id
    oidvector = 30, //array of oids, used in system tables
    pg_ddl_command = 32, //internal type for passing CollectedCommand
    json = 114, //
    xml = 142, //XML content
    pg_node_tree = 194, //string representing an internal node tree
    smgr = 210, //storage manager
    index_am_handler = 325, //
    point = 600, //geometric point '(x, y)'
    lseg = 601, //geometric line segment '(pt1,pt2)'
    path = 602, //geometric path '(pt1,...)'
    box = 603, //geometric box '(lower left,upper right)'
    polygon = 604, //geometric polygon '(pt1,...)'
    line = 628, //geometric line
    cidr = 650, //network IP address/netmask, network address
    real = 700, //single-precision floating point number, 4-byte storage
    doubleprecision = 701, //double-precision floating point number, 8-byte storage
    abstime = 702, //absolute, limited-range date and time (Unix system time)
    reltime = 703, //relative, limited-range time interval (Unix delta time)
    tinterval = 704, //(abstime,abstime), time interval
    unknown = 705, //
    circle = 718, //geometric circle '(center,radius)'
    money = 790, //monetary amounts, $d,ddd.cc
    macaddr = 829, //XX:XX:XX:XX:XX:XX, MAC address
    inet = 869, //IP address/netmask, host address, netmask optional
    aclitem = 1033, //access control list
    character = 1042, //char(length), blank-padded string, fixed storage length
    character_varying = 1043, //varchar(length), non-blank-padded string, variable storage length
    date = 1082, //date
    time_without_timezone = 1083, //time of day
    timestamp_without_timezone = 1114, //date and time
    timestamp_withtimezone = 1184, //date and time with time zone
    interval = 1186, //@ <number> <units>, time interval
    time_with_time_zone = 1266, //time of day with time zone
    bit = 1560, //fixed-length bit string
    bit_varying = 1562, //variable-length bit string
    numeric = 1700, //numeric(precision, decimal), arbitrary precision number
    refcursor = 1790, //reference to cursor (portal name)
    regprocedure = 2202, //registered procedure (with args)
    regoper = 2203, //registered operator
    regoperator = 2204, //registered operator (with args)
    regclass = 2205, //registered class
    regtype = 2206, //registered type
    &record = 2249, //
    cstring = 2275, //
    any = 2276, //
    anyarray = 2277, //
    void = 2278, //
    trigger = 2279, //
    language_handler = 2280, //
    internal = 2281, //
    opaque = 2282, //
    anyelement = 2283, //
    anynonarray = 2776, //
    uuid = 2950, //UUID datatype
    txid_snapshot = 2970, //txid snapshot
    fdw_handler = 3115, //
    pg_lsn = 3220, //PostgreSQL LSN datatype
    tsm_handler = 3310, //
    anyenum = 3500, //
    tsvector = 3614, //text representation for text search
    tsquery = 3615, //query representation for text search
    gtsvector = 3642, //GiST index internal text representation for text search
    regconfig = 3734, //registered text search configuration
    regdictionary = 3769, //registered text search dictionary
    jsonb = 3802, //Binary JSON
    anyrange = 3831, //
    event_trigger = 3838, //
    int4range = 3904, //range of integers
    numrange = 3906, //range of numerics
    tsrange = 3908, //range of timestamps without time zone
    tstzrange = 3910, //range of timestamps with time zone
    daterange = 3912, //range of dates
    int8range = 3926, //range of bigints
    regnamespace = 4089, //registered namespace
    regrole = 4096, //registered role
  );
  PostgreSQLException = public class(Exception) end;
  PostgreSQLDbConnection = public class(DbConnection)
  assembly
    fHandle: ^PGconn;
    fCounter: Integer;
  public
    method Open; override;
    begin
      if State <> ConnectionState.Closed then begin
        raise new ArgumentException('Invalid state; already open');
      end;
      State := ConnectionState.Connecting;
      var lConn := ConnectionString.ToAnsiChars(true);
      fHandle := PQconnectdb(@lConn[0]);
      if PQstatus(fHandle) = libpq.ConnStatusType.CONNECTION_BAD then begin
        var lError := String.FromPAnsiChars(PQerrorMessage(fHandle));
        PQfinish(fHandle);
        fHandle := nil;
        raise new PostgreSQLException(lError);
      end;
      State := ConnectionState.Open;
    end;

    method Dispose; override;
    begin
      if fHandle <> nil then
        PQfinish(fHandle);
      fHandle := nil;
    end;
    method CreateCommand: DbCommand; override;
    begin
      exit new PostgreSQLDbCommand(self);
    end;


    method BeginTransaction(aLevel: IsolationLevel := 0): DbTransaction; override;
    begin
      case aLevel of
        IsolationLevel.ReadUncommited:  Execute('start transaction read uncommitted', nil, nil);
        IsolationLevel.ReadCommited:  Execute('start transaction read committed', nil, nil);
        IsolationLevel.RepeatedRead:  Execute('start transaction repeatable read', nil, nil);
        IsolationLevel.Serializable:   Execute('start transaction serializable', nil, nil);
        else Execute('start transaction', nil, nil);
      end;

      exit new PostgreSQLDbTransaction(self);
    end;
  end;




  PostgreSQLDbTransaction = public class(DbTransaction)
  assembly
    fOwner: PostgreSQLDbConnection;
  public
    constructor(aOwner: PostgreSQLDbConnection);
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

  PostgreSQLDbCommand = public class(DbCommand)
  assembly
    fName: String;
    fCommand: ^PGresult;
    fOwner: PostgreSQLDbConnection;
    fParIdx: Dictionary<String, Integer> := new Dictionary<String, Integer>;

  public
    constructor(aOwner: PostgreSQLDbConnection);
    begin
      fOwner := aOwner;
      fOwner.fCounter := fOwner.fCounter +1;
      fName := 'st'+fOwner.fCounter;
    end;

    method Dispose; override;
    begin
      if fCommand <> nil then begin
        PQclear(fCommand);
        fCommand := nil;
      end;
    end;

    method ExecuteNonQuery: Integer; override;
    begin
      if fCommand = nil then Prepare;
      var lRes := BindParameters;
      if not Int32.TryParse(String.FromPAnsiChars(PQcmdTuples(lRes)), out var lRevs) then lRevs := -1;
      PQclear(lRes);
      exit lRevs;
    end;

    method Prepare; override;
    begin
      if fCommand <> nil then raise new PostgreSQLException('Already prepared!');
      fParIdx.Clear;
      var lData := SqlQueryParameterFixer.FixString(Command, a -> begin
        var lRes: Integer;
        if not fParIdx.TryGetValue(a, out lRes) then begin
          lRes :=fParIdx.Count + 1;
          fParIdx[a] := lRes;
        end;
        exit '$'+lRes.ToString;
      end);

      fCommand := PQprepare(fOwner.fHandle, fName, lData, 0, nil);
      case PQresultStatus(fCommand) of
        ExecStatusType.PGRES_BAD_RESPONSE,
        ExecStatusType.PGRES_FATAL_ERROR: begin
          var lError := String.FromPAnsiChars(PQerrorMessage(fOwner.fHandle));
          PQclear(fCommand);
          fCommand := nil;
          raise new PostgreSQLException(lError);
          end;
      end;
    end;

    method BindParameters: ^PGresult; private;
    begin
      var lPVOrg := new array of AnsiChar[fParIdx.Count];
      var lPV := new ^Byte[fParIdx.Count+1];
      var lPVL := new Integer[fParIdx.Count+1];
      var lPVT := new Integer[fParIdx.Count+1];
      for i: Integer := 0 to Parameters.Count -1 do begin
        if not fParIdx.TryGetValue(Parameters[i].Name, out var lIdx) then continue;
        if Parameters[i].Value is array of Byte then begin
          lPV[lIdx] := @(array of Byte(Parameters[i].Value)[0]);
          lPVL[lIdx] := array of Byte(Parameters[i].Value).Length;
          lPVT[lIdx] := 1;
        end else begin
          lPVOrg[lIdx] := Parameters[i].Value:ToString.ToAnsiChars(true);
          lPV[lIdx] := ^Byte(@lPVOrg[lIdx][0]);
        end;
      end;
      // FIX
      result := PQexecPrepared(fOwner.fHandle, fName, fParIdx.Count, ^^AnsiChar(@lPV[0]), @lPVL[0], @lPVT[0], 1);
      case PQresultStatus(fCommand) of
        ExecStatusType.PGRES_BAD_RESPONSE,
        ExecStatusType.PGRES_FATAL_ERROR: begin
          var lError := String.FromPAnsiChars(PQerrorMessage(fOwner.fHandle));
          PQclear(result);
          result := nil;
          raise new PostgreSQLException(lError);
        end;
      end;
    end;

    method ExecuteReader: DbDataReader; override;
    begin
      if fCommand = nil then Prepare;
      var lRes := BindParameters;
      exit new PostgreSQLDataReader(self, lRes);
    end;
  end;

  PostgreSQLDataReader = public class(DbDataReader)
  private
    //fOwner: PostgreSQLDbCommand;
    fRes: ^PGresult;
    fIndex: Integer;
  public
    method Dispose; override;
    begin
      if fRes <> nil then
      PQclear(fRes);
      fRes := nil;
    end;
    constructor(aOwner: PostgreSQLDbCommand; aRes: ^PGresult);
    begin
      fRes := aRes;
      //fOwner := aOwner;
      RowCount := PQntuples(aRes);
      fIndex := -1;
    end;

    property RowCount: Integer; readonly;

    method &Read: Boolean; override;
    begin
      if fIndex ≥ RowCount -1 then begin
        fIndex := RowCount;
        exit false;
      end;
      inc(fIndex);
      exit true;
    end;
    property FieldCount: Integer read -> begin 
      result := PQnfields(fRes); 
    end;override; 
    property FieldName[i: Integer]: String read -> begin 
      result := String.FromPAnsiChars(^AnsiChar(PQfname (fRes, i))); 
    end;override; 
    property Item[i: Integer]: Object read -> begin
      if PQgetisnull(fRes, fIndex, i) <> 0 then exit nil;
      var lLen := PQgetlength(fRes, fIndex, i);
      var lVal := ^Byte(PQgetvalue(fRes, fIndex, i));
      var lOid := PQftype(fRes, i) as PostgreSQLOid;
      case lOid of
        PostgreSQLOid.boolean: exit lVal[0] <> #0;
        PostgreSQLOid.bytea: begin
            var lData := new Byte[lLen];
            Array.Copy(lVal, lData, 0, lLen);
            exit lData;
          end;
        PostgreSQLOid.char:
          exit Char(lVal[0]);
        PostgreSQLOid.bigint:
          exit( Int64(lVal[0]) shl 56) or ( Int64(lVal[1]) shl 48) or ( Int64(lVal[2]) shl 40)or ( Int64(lVal[3]) shl 32) or( Int64(lVal[4]) shl 24) or ( Int64(lVal[5]) shl 16) or ( Int64(lVal[6]) shl 8)or ( Int64(lVal[7]) shl 0);
        PostgreSQLOid.smallint://-32 thousand to 32 thousand, 2-byte storage
          exit( Int16(lVal[0]) shl 8) or ( Int16(lVal[1]) shl 0);
        PostgreSQLOid.integer:
          exit( Int32(lVal[0]) shl 24) or ( Int32(lVal[1]) shl 16) or ( Int32(lVal[2]) shl 8)or ( Int32(lVal[3]) shl 0);
        PostgreSQLOid.json,PostgreSQLOid.xml, PostgreSQLOid.text:begin
            var lData := new Byte[lLen];
            Array.Copy(lVal, lData, 0, lLen);
            exit Encoding.UTF8.GetString(lData);
        end;

        PostgreSQLOid.real: begin
            var lRes: Single;
            ^Byte(@lRes)[0] := lVal[3];
            ^Byte(@lRes)[1] := lVal[2];
            ^Byte(@lRes)[2] := lVal[1];
            ^Byte(@lRes)[3] := lVal[0];
            exit lRes;
          end;
        PostgreSQLOid.doubleprecision: begin
            var lRes: Double;
            ^Byte(@lRes)[0] := lVal[7];
            ^Byte(@lRes)[1] := lVal[6];
            ^Byte(@lRes)[2] := lVal[5];
            ^Byte(@lRes)[3] := lVal[4];
            ^Byte(@lRes)[4] := lVal[3];
            ^Byte(@lRes)[5] := lVal[2];
            ^Byte(@lRes)[6] := lVal[1];
            ^Byte(@lRes)[7] := lVal[0];
            exit lRes;
          end;
        PostgreSQLOid.timestamp_without_timezone,
        PostgreSQLOid.timestamp_withtimezone: begin 
          var lValue := ( Int64(lVal[0]) shl 56) or ( Int64(lVal[1]) shl 48) or ( Int64(lVal[2]) shl 40)or ( Int64(lVal[3]) shl 32) or( Int64(lVal[4]) shl 24) or ( Int64(lVal[5]) shl 16) or ( Int64(lVal[6]) shl 8)or ( Int64(lVal[7]) shl 0);
          exit new DateTime(lValue * 10  + new DateTime(2000, 1, 1).Ticks);
        end;
        
      /*
        abstime = 702, //absolute, limited-range date and time (Unix system time)
        reltime = 703, //relative, limited-range time interval (Unix delta time)
        tinterval = 704, //(abstime,abstime), time interval
        money = 790, //monetary amounts, $d,ddd.cc
        character = 1042, //char(length), blank-padded string, fixed storage length
        character_varying = 1043, //varchar(length), non-blank-padded string, variable storage length
        date = 1082, //date
        time_without_timezone = 1083, //time of day
        interval = 1186, //@ <number> <units>, time interval
        time_with_time_zone = 1266, //time of day with time zone
        bit = 1560, //fixed-length bit string
        bit_varying = 1562, //variable-length bit string
        numeric = 1700, //numeric(precision, decimal), arbitrary precision number
*/
      else
        raise new PostgreSQLException('Unknown type for column '+i+' oid: '+lOid);
      end;
    end; override;
  end;

end.