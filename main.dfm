object FrmMain: TFrmMain
  Left = 221
  Top = 159
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1045#1083#1077#1082#1090#1088#1086#1085#1085#1110' '#1090#1077#1088#1077#1079#1080' Keli XK3118T1'
  ClientHeight = 136
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    477
    136)
  PixelsPerInch = 96
  TextHeight = 13
  object lblweight: TTeLabel
    Left = 16
    Top = 72
    Width = 166
    Height = 24
    ActiveGlyph = True
    Caption = #1042#1072#1075#1072': 000.000(kg)'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    HotTrack = False
    ThemeLink = TL
  end
  object lblweighttitle: TTeLabel
    Left = 8
    Top = 24
    Width = 144
    Height = 13
    Caption = #1053#1072#1079#1074#1072' '#1079#1074#1072#1078#1077#1085#1086#1075#1086' '#1087#1088#1077#1076#1084#1077#1090#1091':'
    Color = clBtnFace
    ParentColor = False
    HotTrack = False
    ThemeLink = TL
  end
  object tedttitle: TTeEdit
    Left = 8
    Top = 40
    Width = 457
    Height = 21
    Cursor = crIBeam
    Anchors = [akLeft, akTop, akRight]
    BevelWidth = 1
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ThemeLink = TL
  end
  object MenuBar: TTeMenuBar
    Left = 0
    Top = 0
    Width = 477
    Height = 19
    Align = alTop
    AutoSize = True
    ThemeObject = 'default'
    PopupThemeObject = 'default'
    ThemeLink = TL
    object tifile: TTeItem
      Caption = #1060#1072#1081#1083
      object miconnect: TTeItem
        Caption = #1047#39#1108#1076#1085#1072#1090#1080#1089#1100
        OnClick = miconnect_oldClick
      end
      object tiexit: TTeItem
        Caption = #1042#1080#1093#1110#1076
        OnClick = N1_oldClick
      end
    end
    object tiadvenced: TTeItem
      Caption = #1044#1086#1076#1072#1090#1082#1086#1074#1086
      object ticonfig: TTeItem
        Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
        OnClick = N3_oldClick
      end
      object tiAbout: TTeItem
        Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
        OnClick = tiAboutClick
      end
    end
  end
  object btnadddata: TtefxButton
    Left = 16
    Top = 104
    Width = 75
    Height = 25
    OnClick = btnadddataClick
    Caption = #1047#1073#1077#1088#1077#1075#1090#1080
    FXEnabled = True
    ThemeLink = TL
    TabOrder = 2
    FXTime = 100
    FXMouseEnter = '[ FADE ] - SmoothDiagonalIn'
    FXMouseLeave = '[ FADE ] - SmoothDiagonalOut'
  end
  object rbnetto: TtefxRadioButton
    Left = 192
    Top = 72
    Width = 57
    Height = 20
    Caption = #1053#1077#1090#1090#1086
    Alignment = kalLeftJustify
    Checked = True
    GroupIndex = 0
    Spacing = 5
    ThemeLink = TL
    ThemeObject = 'default'
    TabOrder = 3
    TabStop = True
    WordWrap = False
    FXEnabled = False
    FXTime = 100
    FXMouseEnter = '[ FADE ] - FadeIn'
    FXMouseLeave = '[ FADE ] - Plasma'
  end
  object rbbrutto: TtefxRadioButton
    Left = 192
    Top = 96
    Width = 57
    Height = 20
    Caption = #1041#1088#1091#1090#1090#1086
    Alignment = kalLeftJustify
    Checked = False
    GroupIndex = 0
    Spacing = 5
    ThemeLink = TL
    ThemeObject = 'default'
    TabOrder = 4
    WordWrap = False
    FXEnabled = False
    FXTime = 100
    FXMouseEnter = '[ FADE ] - FadeIn'
    FXMouseLeave = '[ FADE ] - Plasma'
  end
  object cp: TComPort
    BaudRate = br9600
    Port = 'COM21'
    Parity.Bits = prNone
    Parity.Check = True
    StopBits = sbOneStopBit
    DataBits = dbEight
    DiscardNull = True
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = True
    FlowControl.XonXoffIn = True
    FlowControl.DSRSensitivity = True
    Timeouts.WriteTotalMultiplier = 0
    Timeouts.WriteTotalConstant = 0
    OnRxChar = cpRxChar
    Left = 392
    Top = 96
  end
  object Manifest: TXPManifest
    Left = 424
    Top = 96
  end
  object AQuery: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Mode=ReadW' +
      'rite;Persist Security Info=False;Jet OLEDB:Database Password=033' +
      '9992914'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM data')
    Left = 424
    Top = 64
  end
  object ds: TDataSource
    DataSet = AQuery
    Left = 392
    Top = 64
  end
  object TL: TTeThemeLink
    DeltaHue = 0
    DeltaBrightness = 0
    ThemeFile = 'macos.theme'
    ThemeBuilding = 'No theme'
    ThemeIndex = 0
    Left = 360
    Top = 96
  end
  object TForm: TTeForm
    BorderIcons = [kbiClose, kbiSystemMenu, kbiMinimize, kbiRollup, kbiTray]
    BorderStyle = kbsDialog
    Dragging.Sizeable = False
    Gravitation.OwnedForm = False
    MenuBar = MenuBar
    SystemMenuLinkMerge = False
    SystemMenuLinkMergeAtFirst = False
    Performance = ksfpNoBuffer
    ThemeLink = TL
    Left = 328
    Top = 96
  end
end
