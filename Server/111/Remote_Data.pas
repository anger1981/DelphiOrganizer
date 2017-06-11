unit Remote_Data;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ORGANAIZER_SERVER_TLB, StdVcl, ExtCtrls, IBStoredProc, IBQuery,
  Provider, DB, IBCustomDataSet, IBTable, IBDatabase, main;

type
  TServer_Data = class(TRemoteDataModule, IServer_Data)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    tbl_task: TIBTable;
    dsp_task_v: TDataSetProvider;
    ibq_create_task: TIBQuery;
    dsp_create_task: TDataSetProvider;
    tbl_users: TIBTable;
    tbl_status: TIBTable;
    dsp_users: TDataSetProvider;
    dsp_status: TDataSetProvider;
    ibq_user_id: TIBQuery;
    dsp_user_id: TDataSetProvider;
    ibq_users: TIBQuery;
    ibq_task_v: TIBQuery;
    dsp_task_tbl: TDataSetProvider;
    ibq_task_tree: TIBQuery;
    dsp_task_tree: TDataSetProvider;
    Trans_time: TIBTransaction;
    ibq_time: TIBQuery;
    dsp_time: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation



{$R *.DFM}

class procedure TServer_Data.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TServer_Data,
    Class_Server_Data, ciMultiInstance, tmApartment);
end.
