program Weight;

uses
  Forms,
  main in 'main.pas' {FrmMain},
  config in 'config.pas' {FrmConfig},
  about in 'about.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Електронні терези Keli XK3118T1';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmConfig, FrmConfig);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.Run;
end.
