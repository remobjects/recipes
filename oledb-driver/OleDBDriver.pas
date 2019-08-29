namespace RemObjects.Elements.OleDb;

uses
  rtl;

type
  OleDbConnection = public class(DbConnection)
  assembly
    fDataInit: IDataInitialize;
    fDB: IDBInitialize;
    fRowset: IOpenRowset;
    class var fMalloc: IMalloc;
    class var CLSID_DataLink: rtl.GUID := new rtl.GUID(Data1 := 570871218, Data2 := 6593, Data3 := 4561, Data4 := [137, 224, 0, 192, 79, 215, 168, 41]);
    class var IID_IDBInitialize: rtl.GUID := new rtl.GUID(Data1 := $0c733a8b, Data2 := $2a1c, Data3 := $11ce, Data4 := [$ad,$e5,$00,$aa,$00,$44,$77,$3d]);

    class var IID_IOpenRowset: rtl.GUID := new rtl.GUID(Data1 := $0c733a69, Data2 := $2a1c, Data3 := $11ce, Data4 := [$ad,$e5,$00,$aa,$00,$44,$77,$3d]);

    class var IID_IRowSet: rtl.GUID := new rtl.GUID(Data1 := $0c733a7c, Data2 := $2a1c, Data3 := $11ce, Data4 := [$ad,$e5,$00,$aa,$00,$44,$77,$3d]);
    //class var IID_ICommand: rtl.GUID := new rtl.GUID(Data1 := $0c733a63, Data2 := $2a1c, Data3 := $11ce, Data4 := [$ad,$e5,$00,$aa,$00,$44,$77,$3d]);
    class var IID_ICommandText: rtl.GUID := new rtl.GUID(Data1 := $0c733a27, Data2 := $2a1c, Data3 := $11ce, Data4 := [$ad,$e5,$00,$aa,$00,$44,$77,$3d]);
    class var IID_IDataInitialize: rtl.GUID := new rtl.GUID(Data1 := $2206CCB1, Data2 := $19C1, Data3 := $11D1, Data4 := [$89, $E0, $00, $C0, $4F, $D7, $A8, $29]);
    class var DBGUID_DEFAULT: rtl.GUID := new rtl.GUID(Data1 := $c8b521fb, Data2 := $5cf3, Data3 := $11ce, Data4 := [$ad,$e5,$00,$aa,$00,$44,$77,$3d]);
    //fDB: rtl.Oledb;
  protected
  public
    class constructor;
    begin
      CoGetMalloc(Integer(MEMCTX.MEMCTX_TASK), @fMalloc);
    end;

    constructor();
    begin
      CoCreateInstance(@CLSID_DataLink, nil, CLSCTX_INPROC, @IID_IDataInitialize, ^LPVOID(@fDataInit));
      //IDBProperties(fDBInit).SetProperties(
    end;

    method Open; override;
    begin
      if State <> ConnectionState.Closed then begin
        raise new ArgumentException('Invalid state; already open');
      end;
      State := ConnectionState.Connecting;
      try
        HResultCheck(fDataInit.GetDataSource(nil, CLSCTX_INPROC, ConnectionString, @IID_IDBInitialize, ^IUnknown(@fDB)));
        HResultCheck(fDB.Initialize);
        HResultCheck(IDBCreateSession(fDB).CreateSession(nil, @IID_IOpenRowset, ^IUnknown(@fRowset)));
      except
        State := ConnectionState.Closed;
        raise;
      end;
      State := ConnectionState.Open;
    end;

    method BeginTransaction(aLevel: RemObjects.Elements.System.IsolationLevel := 0): DbTransaction; override;
    begin
      var lTrans := (fRowset as ITransactionLocal);
      case aLevel of 
        RemObjects.Elements.System.IsolationLevel.ReadUncommited: HResultCheck(lTrans.StartTransaction(__enum_ISOLATIONLEVEL.ISOLATIONLEVEL_READUNCOMMITTED, 0, nil, nil));
        RemObjects.Elements.System.IsolationLevel.ReadCommited: HResultCheck(lTrans.StartTransaction(__enum_ISOLATIONLEVEL.ISOLATIONLEVEL_READCOMMITTED, 0, nil, nil));
        RemObjects.Elements.System.IsolationLevel.RepeatedRead: HResultCheck(lTrans.StartTransaction(__enum_ISOLATIONLEVEL.ISOLATIONLEVEL_REPEATABLEREAD, 0, nil, nil));
        RemObjects.Elements.System.IsolationLevel.Serializable: HResultCheck(lTrans.StartTransaction(__enum_ISOLATIONLEVEL.ISOLATIONLEVEL_SERIALIZABLE, 0, nil, nil));
      else HResultCheck(lTrans.StartTransaction(__enum_ISOLATIONLEVEL.ISOLATIONLEVEL_UNSPECIFIED, 0, nil, nil));
      end;
      
      exit new OleDbTransaction(lTrans);
    end;

    method CreateCommand: DbCommand; override;
    begin
      OpenIfNeeded;
      var lCommand: ICommandText;
      HResultCheck(IDBCreateCommand(fRowset).CreateCommand(nil, @IID_ICommandText, ^IUnknown(@lCommand)));
      exit new OleDbCommand(self, lCommand);
    end;

    method Dispose; override;
    begin
      fRowset := nil;
      if fDB <> nil then
        fDB.Uninitialize;
      fDB := nil;
    end;
  end;

  OleDbTransaction = public class(DbTransaction)
  private
     fTrans: ITransactionLocal;
  public
    constructor(aTrans: ITransactionLocal);
    begin 
      fTrans := aTrans;
    end;

    method Dispose; override;
    begin 
      fTrans := nil;
    end;

    method Commit; override;
    begin 
      HResultCheck(fTrans.Commit(false, 0, 0));
    end;

    method Rollback; override;
    begin 
      HResultCheck(fTrans.Abort(nil, false, false));
    end;
  end;

  OleDbCommand = public class(DbCommand)
  private
    //fOwner: OleDbConnection;
    fInst: ICommandText;
    fPrepared: ICommandPrepare;
    fParamCount: Integer;
    fParamMap: Dictionary<String, array of Integer> := new Dictionary<String, array of Integer>;
  public
    constructor(aOwner: OleDbConnection; aInst: ICommandText);
    begin
      fInst := aInst;
    end;

    method Prepare; override;
    begin
      if fPrepared <> nil then raise new ArgumentException('Already prepared!');
      fPrepared := fInst as ICommandPrepare;
      fParamMap.Clear;
      var c := 1;
      var lCmd := SqlQueryParameterFixer.FixString(Command, a -> begin 
        if fParamMap.TryGetValue(a, out var lVal) then begin 
          var lNarr := new Integer[lVal.Count];
          Array.Copy(lVal, lNarr, lVal.Count);
          lNarr[lNarr.Count-1] := c;
          inc(c);
          fParamMap[a] := lNarr;
        end else begin
          fParamMap[a] := [c];
          inc(c);
        end;
        exit '?'
      end);
      fParamCount := c-1;
      HResultCheck(fInst.SetCommandText(@OleDbConnection. DBGUID_DEFAULT, lCmd));
      var lRes := fPrepared.Prepare(1);
      if lRes <> S_OK then fPrepared := nil;
      HResultCheck(lRes);
    end;

    method FillArguments(aWantRowset: Boolean; out Count: Integer): IRowset; private;
    begin
      if fPrepared = nil then Prepare;
      var lAcc: IAccessor;
      var lAccH: HACCESSOR;
      var lBind: array of DBBINDING;
      var lRowData: array of DBRESULT;
      var lDB: DBPARAMS;
      if fParamCount >  0 then begin
        lAcc := fInst as IAccessor;
        lDB.cParamSets := fParamCount;
        lBind := new DBBINDING[fParamCount];
        lRowData := new DBRESULT[fParamCount];
        var lOffset := 0;

        
        for i: Integer := 0 to fParamCount -1 do begin 
          //lRowData[i].Data := ObjectToVar(Parameters[i].Value);
          lBind[i].dwPart := Integer(__enum_DBPARTENUM.DBPART_VALUE or __enum_DBPARTENUM.DBPART_STATUS or __enum_DBPARTENUM.DBPART_LENGTH);
          lBind[i].eParamIO := __enum_DBPARAMIOENUM.DBPARAMIO_INPUT as Integer;
          lBind[i].iOrdinal := i+1;
          lBind[i].wType := __enum_DBTYPEENUM.DBTYPE_VARIANT;
          lBind[i].obStatus := lOffset;
          lBind[i].obLength := lOffset + sizeOf(DBSTATUS);
          lBind[i].obValue := lOffset + sizeOf(DBSTATUS) + sizeOf(ULONG);
          lBind[i].cbMaxLen := sizeOf(VARIANT);
          lOffset := lBind[i].obValue + sizeOf(VARIANT);
        end;
        for i: Integer := 0 to Parameters.Count -1 do begin 
          if not fParamMap.TryGetValue(Parameters[i].Name, out var lndex) then continue;
          for j: Integer := 0 to length(lndex) -1 do begin 
            lRowData[lndex[j]-1].Data := ObjectToVar(Parameters[i].Value);
        end;
        end;
        HResultCheck(lAcc.CreateAccessor(Integer(__enum_DBACCESSORFLAGSENUM.DBACCESSOR_PARAMETERDATA), lDB.cParamSets, @lBind[0], sizeOf(DBRESULT) *lDB.cParamSets , @lAccH, nil));
        lDB.pData := @lRowData[0];
        lDB.hAccessor := lAccH;
      end;
      //var lAcc := fInst as IAccessor;
      //var x: DBPARAMS;
      //var r: DB_UPARAMS;
      //x.cParamSets

      var lRes: Integer;
      if aWantRowset then 
        HResultCheck(fInst.Execute(nil, @OleDbConnection.IID_IRowSet, if lAcc = nil then nil else @lDB, @Count, ^IUnknown(@result)))
      else 
        HResultCheck(fInst.Execute(nil, nil, if lAcc = nil then nil else @lDB, @Count, nil));
      if lAcc <> nil then begin 
        lAcc.ReleaseAccessor(lAccH, nil);
        lAcc := nil;
      end;
      HResultCheck(lRes);
    end;

    method Dispose; override; empty;


    method ExecuteNonQuery: Integer; override;
    begin
      FillArguments(false, out result);
    end;

    method ExecuteReader: DbDataReader; override;
    begin
      var lCount: Integer;
      var lRowSet: IRowset := FillArguments(true, out lCount);

      exit new OleDbDataReader(lRowSet);
    end;
  end;

  DBRESULT = record
  private
  public
    {$HIDE H8}
    Status: DBSTATUS;
    Length: ULONG;
    Data: VARIANT;
    {$SHOW H8}
  end;

  OleDbDataReader = public class(DbDataReader)
  private
    fRows: HROW;
    fAccessor: IAccessor;
    fRowSet: IRowset;
    fColDatas: ^DBCOLUMNINFO;
    fStrings: ^WCHAR;
    fCols: Integer;
    fAccessorHandle: HACCESSOR;
    fBind: array of DBBINDING;
    fRowData: array of DBRESULT;
  public
    constructor(aVal: IRowset);
    begin
      fRowSet := aVal;
      var lCI := IColumnsInfo(fRowSet);
      HResultCheck(lCI.GetColumnInfo(^DBORDINAL(@fCols), @fColDatas, @fStrings));
      fAccessor := fRowSet as IAccessor;
      fBind := new DBBINDING[fCols];
      var lOffset := 0;
      for i: Integer := 0 to fCols -1 do begin
        fBind[i].dwPart := Integer(__enum_DBPARTENUM.DBPART_VALUE or __enum_DBPARTENUM.DBPART_STATUS or __enum_DBPARTENUM.DBPART_LENGTH);
        fBind[i].eParamIO := 0;
        fBind[i].iOrdinal := fColDatas[i].iOrdinal;
        fBind[i].wType := __enum_DBTYPEENUM.DBTYPE_VARIANT;
        fBind[i].obStatus := lOffset;
        fBind[i].obLength := lOffset + sizeOf(DBSTATUS);
        fBind[i].obValue := lOffset + sizeOf(DBSTATUS) + sizeOf(ULONG);
        fBind[i].bPrecision := fColDatas[i].bPrecision;
        fBind[i].bScale := fColDatas[i].bScale;
        fBind[i].cbMaxLen := sizeOf(VARIANT);
        lOffset := fBind[i].obValue + sizeOf(VARIANT);
      end;
      fRowData := new DBRESULT[fCols];
      HResultCheck(fAccessor.CreateAccessor(Integer(__enum_DBACCESSORFLAGSENUM.DBACCESSOR_ROWDATA), fCols, @fBind[0], lOffset, @fAccessorHandle, nil));
    end;
    method &Read: Boolean; override;
    begin
      if fRows <> 0 then
        fRowSet.ReleaseRows(1, @fRows, nil, nil, nil);
      fRows := 0;
      var lCount: DBCOUNTITEM;
      var lRows: array[0..0] of HROW;
      var lWork := @lRows[0];
      fRowSet.GetNextRows(DB_NULL_HCHAPTER, 0, 1, @lCount, @lWork);
      if lCount > 0 then begin
        fRows := lRows[0];
        HResultCheck(fRowSet.GetData(fRows, fAccessorHandle, ^Void(@fRowData[0])));
      end;
      exit lCount > 0;
    end;

    property FieldName[i: Integer]: String read String.FromPChar(fColDatas[i].pwszName); override;
    property Item[i: Integer]: Object read -> begin
        var v := fRowData[i];
        exit VarToObject(v.Data);
      end; override;

    property FieldCount: Integer read fCols; override;

    method Dispose; override;
    begin
      if fRows <> 0 then
        fRowSet.ReleaseRows(1, @fRows, nil, nil, nil);
      fRows := 0;
      if fStrings <> nil then begin
        OleDbConnection.fMalloc.Free(fStrings);
        fStrings := nil;
      end;
      if fColDatas <> nil then begin
        OleDbConnection.fMalloc.Free(fColDatas);
        fStrings := nil;
      end;
      if fAccessorHandle <> 0 then
        fAccessor.ReleaseAccessor(fAccessorHandle, nil);
      fAccessorHandle := 0;
      fRowSet := nil;
    end;
  end;

end.