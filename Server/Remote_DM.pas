unit Remote_DM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, ORGANAIZER_SRV_TLB, StdVcl, ExtCtrls, IBStoredProc, IBQuery,
  Provider, DB, IBCustomDataSet, IBTable, IBDatabase, main;

type
  TServer_DM = class(TRemoteDataModule, IRDM)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    tbl_task_v: TIBTable;
    dsp_task_v: TDataSetProvider;
    ibq_create_task: TIBQuery;
    dsp_create_task: TDataSetProvider;
    tbl_users: TIBTable;
    tbl_status: TIBTable;
    dsp_users: TDataSetProvider;
    dsp_status: TDataSetProvider;
    ibsp_norm_task: TIBStoredProc;
    t_norm_task: TTimer;
    ibq_user_id: TIBQuery;
    dsp_user_id: TDataSetProvider;
    procedure t_norm_taskTimer(Sender: TObject);
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure RemoteDataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TServer_DM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
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

procedure TServer_DM.t_norm_taskTimer(Sender: TObject);
begin
  ibsp_norm_task.ExecProc;
end;

procedure TServer_DM.RemoteDataModuleCreate(Sender: TObject);
begin
 count_user := count_user + 1;
 Form1.CNT_USERS.Caption:= inttostr(count_user);
end;

procedure TServer_DM.RemoteDataModuleDestroy(Sender: TObject);
begin
 count_user := count_user - 1;
 Form1.CNT_USERS.Caption:= inttostr(count_user);
end;

initialization
  TComponentFactory.Create(ComServer, TServer_DM,
    Class_Server_DM, ciMultiInstance, tmApartment);
end.
