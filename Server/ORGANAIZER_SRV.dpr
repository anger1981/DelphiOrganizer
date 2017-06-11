program ORGANAIZER_SRV;

uses
  Forms,
  main in 'main.pas' {Form1},
  ORGANAIZER_SRV_TLB in 'ORGANAIZER_SRV_TLB.pas',
  Remote_DM in 'Remote_DM.pas' {Server_DM: TRemoteDataModule} {RDM: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.ShowMainForm := false;
  img_id:=$0;
  count_user:=0;
  Application.Run;
end.
