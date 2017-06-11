unit Cr_task;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, DBClient, ExtCtrls, Mask;

type
  TCreate_task = class(TForm)
    dbg_users: TDBGrid;
    Label1: TLabel;
    re_task: TRichEdit;
    Label2: TLabel;
    monthcal: TMonthCalendar;
    dtp: TDateTimePicker;
    Label3: TLabel;
    Button1: TButton;
    cds_users: TClientDataSet;
    ds_users: TDataSource;
    cds_create_task: TClientDataSet;
    Button2: TButton;
    privat: TCheckBox;
    le_impotent: TLabeledEdit;
    cds_task_tbl: TClientDataSet;
    MaskEdit1: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure dbg_usersCellClick(Column: TColumn);
    procedure dbg_usersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure monthcalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Create_task: TCreate_task;
  slave_user_id: integer;
  master_task_id: variant;
  date_end: TDateTime;
  privat_flag: integer;
  impotant: integer;

implementation

uses
main;

{$R *.dfm}

procedure TCreate_task.Button1Click(Sender: TObject);
var
  bStreamT: TMemoryStream;
  sqltxt: AnsiString;
begin
date_end := StrToDateTime(DateToStr(monthcal.Date) + ' ' + TimeToStr(dtp.Time));
if privat.Checked = true then privat_flag := 1
else privat_flag := 0;
impotant := strtoint(le_impotent.Text);
cds_create_task.Active := false;
if master_task_id = null
  then
  cds_create_task.Params.ParamByName('CODE_MASTER_TSK').IsNull
  else
  cds_create_task.Params.ParamByName('CODE_MASTER_TSK').AsInteger := master_task_id;
cds_create_task.Params.ParamByName('MASTER_ID').AsInteger := user_id;
cds_create_task.Params.ParamByName('SLAVE_ID').AsInteger := slave_user_id;
cds_create_task.Params.ParamByName('PRIVAT').AsInteger := privat_flag;
cds_create_task.Params.ParamByName('IMPOTANT').AsInteger := impotant;
cds_create_task.Params.ParamByName('TIME_END').AsDateTime := date_end;
cds_create_task.Active := true;

task_id := cds_create_task.FieldByName('CODE_TASK').Value;

cds_create_task.Active := false;

master_task_id := null;

cds_task_tbl.Active := false;
cds_task_tbl.Filtered := false;
cds_task_tbl.Filter := 'code = ' + IntToStr(task_id);
cds_task_tbl.Filtered := true;
cds_task_tbl.Active := true;

  re_task.plaintext := false;

  bStreamT :=  TMemoryStream.Create;

  cds_task_tbl.Edit;
  re_task.Lines.SaveToStream(bStreamT);
  TBlobField(cds_task_tbl.FieldByName('TEXT_TASK')).LoadFromStream(bStreamT);

  cds_task_tbl.ApplyUpdates(0);


  bStreamT.Free;

  sqltxt := Tasks.cds_tasks_v.CommandText;
  Tasks.cds_tasks_v.Close;
  Tasks.cds_tasks_v.CommandText := 'Commit';
  Tasks.cds_tasks_v.Execute;

  if flag_dorab = 1 then
  begin
    Tasks.cds_tasks_v.CommandText := 'update task ts set ts.CODE_MASTER = ' + IntToStr(task_id) + ' where code = ' + IntToStr(task_id_old);
    Tasks.cds_tasks_v.Execute;
    Tasks.cds_tasks_v.CommandText := 'update task ts set ts.MASTER_USER = ' + IntToStr(slave_user_id) + ' where code = ' + IntToStr(task_id_old);
    Tasks.cds_tasks_v.Execute;
    Tasks.cds_tasks_v.CommandText := 'update task ts set ts.status = 0 where code = ' + IntToStr(task_id_old);
    Tasks.cds_tasks_v.Execute;
    Tasks.cds_tasks_v.CommandText := 'Commit';
    Tasks.cds_tasks_v.Execute;
    //cds_tasks_v.ApplyUpdates(0);

  end;

    Tasks.cds_tasks_v.Close;
    Tasks.cds_tasks_v.Active := false;
    Tasks.cds_tasks_v.CommandText := sqltxt;
    Tasks.cds_tasks_v.Open;

  Tasks.cds_tasks_v.Refresh;

  flag_dorab := 0;

tasks.Show;
create_task.Hide;
end;

procedure TCreate_task.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
tasks.Show;
create_task.Hide;
end;

procedure TCreate_task.Button2Click(Sender: TObject);
begin
create_task.Close;
end;

procedure TCreate_task.dbg_usersCellClick(Column: TColumn);
begin
slave_user_id := cds_users.FieldByName('code').Value;
end;

procedure TCreate_task.dbg_usersKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
slave_user_id := cds_users.FieldByName('code').Value;
end;

procedure TCreate_task.monthcalClick(Sender: TObject);
begin
date_end := monthcal.Date;
end;

procedure TCreate_task.FormShow(Sender: TObject);
begin
cds_users.Close;
cds_users.CommandText := 'select code, fio from users';
cds_users.Open;
end;

end.
