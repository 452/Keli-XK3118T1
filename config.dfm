object FrmConfig: TFrmConfig
  Left = 433
  Top = 270
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
  ClientHeight = 72
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnsaveconfig: TtefxButton
    Left = 8
    Top = 37
    Width = 185
    Height = 25
    OnClick = btnsaveconfigClick
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080
    FXEnabled = True
    ThemeLink = FrmMain.TL
    TabOrder = 0
    FXTime = 100
    FXMouseEnter = '[ FADE ] - SmoothDiagonalIn'
    FXMouseLeave = '[ FADE ] - SmoothDiagonalOut'
  end
  object btnconfigcp: TtefxButton
    Left = 8
    Top = 5
    Width = 185
    Height = 25
    OnClick = btnconfigcpClick
    Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1090#1080' ComPort'
    FXEnabled = True
    ThemeLink = FrmMain.TL
    TabOrder = 1
    FXTime = 100
    FXMouseEnter = '[ FADE ] - SmoothDiagonalIn'
    FXMouseLeave = '[ FADE ] - SmoothDiagonalOut'
  end
  object TeForm21: TTeForm2
    ThemeLink = FrmMain.TL
    ThemeObject = 'default'
    Left = 8
    Top = 8
  end
end
