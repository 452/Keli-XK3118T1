unit config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,CPortTypes, te_forms, te_controls, tefx_buttons;

type
  TFrmConfig = class(TForm)
    TeForm21: TTeForm2;
    btnsaveconfig: TtefxButton;
    btnconfigcp: TtefxButton;
    procedure btnconfigcpClick(Sender: TObject);
    procedure btnsaveconfigClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

uses main;

{$R *.dfm}

procedure TFrmConfig.btnconfigcpClick(Sender: TObject);
begin
  FrmMain.cp.ShowSetupDialog;
end;

procedure TFrmConfig.btnsaveconfigClick(Sender: TObject);
begin
  FrmMain.cp.StoreSettings(stIniFile,ExtractFileDir(Paramstr(0))+'\comconfig.ini');
  ShowMessage('Налаштування збережено');
end;

end.
