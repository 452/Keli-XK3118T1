unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CPort,CPortTypes, Menus, StdCtrls, XPMan, te_forms, te_theme,
  te_engine, DB, ADODB, te_controls, tefx_buttons;

type
  TFrmMain = class(TForm)
    cp: TComPort;
    Manifest: TXPManifest;
    AQuery: TADOQuery;
    ds: TDataSource;
    TL: TTeThemeLink;
    TForm: TTeForm;
    lblweight: TTeLabel;
    tedttitle: TTeEdit;
    MenuBar: TTeMenuBar;
    tifile: TTeItem;
    miconnect: TTeItem;
    tiexit: TTeItem;
    tiadvenced: TTeItem;
    ticonfig: TTeItem;
    btnadddata: TtefxButton;
    lblweighttitle: TTeLabel;
    tiAbout: TTeItem;
    rbnetto: TtefxRadioButton;
    rbbrutto: TtefxRadioButton;
    procedure N1_oldClick(Sender: TObject);
    procedure N3_oldClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cpRxChar(Sender: TObject; Count: Integer);
    procedure miconnect_oldClick(Sender: TObject);
    procedure btnadddataClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tiAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  tstr,weight: String;
  CRbyte: Shortint = 13; // HEX 0x0D
  LFbyte: Shortint = 10; // HEX 0x0A
implementation

uses config, about;

{$R *.dfm}

procedure TFrmMain.miconnect_oldClick(Sender: TObject);
begin
    if cp.Connected then
    begin
    miconnect.Caption:='З''єднатись';
    AQuery.Active:=false;
    cp.Close
    end else begin
    cp.Open;
    AQuery.Active:=true;
    miconnect.Caption:='Відєднатись';
    end;
end;

procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  AQuery.Active:=false;
  cp.Close
end;

procedure TFrmMain.N1_oldClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.N3_oldClick(Sender: TObject);
begin
  FrmConfig.ShowModal;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  cp.LoadSettings(stIniFile,ExtractFileDir(Paramstr(0))+'\comconfig.ini');
end;

function cweight(wght:String):String;
begin
  result:= Copy(wght,2,Length(wght));
end;

procedure TFrmMain.cpRxChar(Sender: TObject; Count: Integer);
var
  i:integer;
  s:String;
begin
cp.ReadStr(s,Count);
for i:=1 to Count do
begin
  tstr:=tstr+s[i];
  if(s[i]=Char(LFbyte)) then begin
    lblweight.Caption:= 'Вага: '+cweight(tstr);
    weight:=tstr;
    tstr:='';
  end;
end;
end;

procedure TFrmMain.btnadddataClick(Sender: TObject);
begin
//if AQuery.Active then
begin
  //if ((tedttitle.Text<>'') AND (weight<>'')) then
  begin
  AQuery.Active:=true;
    ds.DataSet.Append;
    begin
      ds.DataSet.FieldByName('title').AsString:=tedttitle.Text;
      ds.DataSet.FieldByName('weight').AsString:=cweight(weight);
      if rbnetto.Checked then begin
        ds.DataSet.FieldByName('type').AsString:='Netto';
      end else begin
        ds.DataSet.FieldByName('type').AsString:='Brutto';
      end;
      ds.DataSet.Refresh;
      ShowMessage('Данні внесено');
    end;
  end;// else begin ShowMessage('Введіть назву предмету  ');end;
end;// else begin ShowMessage('Виконайте з''єднання з терезами!');end;
end;

procedure TFrmMain.tiAboutClick(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

end.
