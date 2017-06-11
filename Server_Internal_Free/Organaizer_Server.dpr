program Organaizer_Server;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Organaizer_Server_TLB in 'Organaizer_Server_TLB.pas',
  Unit2 in 'Unit2.pas' {RemoteDM: TRemoteDataModule} {RemoteDM: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
