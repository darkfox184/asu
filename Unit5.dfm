object redstuds: Tredstuds
  Left = 397
  Top = 372
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 208
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 5
    Height = 19
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 5
    Height = 19
  end
  object Label3: TLabel
    Left = 8
    Top = 49
    Width = 71
    Height = 19
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 82
    Width = 35
    Height = 19
    Caption = #1048#1084#1103':'
  end
  object Label5: TLabel
    Left = 8
    Top = 115
    Width = 75
    Height = 19
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label6: TLabel
    Left = 8
    Top = 148
    Width = 117
    Height = 19
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Label7: TLabel
    Left = 8
    Top = 181
    Width = 57
    Height = 19
    Caption = #1043#1088#1091#1087#1087#1072':'
  end
  object Label8: TLabel
    Left = 8
    Top = 16
    Width = 110
    Height = 19
    Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#8470':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object fam: TEdit
    Left = 131
    Top = 41
    Width = 209
    Height = 27
    TabOrder = 0
  end
  object imya: TEdit
    Left = 131
    Top = 74
    Width = 209
    Height = 27
    TabOrder = 1
  end
  object otch: TEdit
    Left = 131
    Top = 107
    Width = 209
    Height = 27
    TabOrder = 2
  end
  object Button1: TButton
    Left = 346
    Top = 173
    Width = 158
    Height = 27
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object gpComboBox2: TDBLookupComboBox
    Left = 131
    Top = 173
    Width = 209
    Height = 27
    ListFieldIndex = 1
    TabOrder = 4
  end
  object spComboBox1: TDBLookupComboBox
    Left = 131
    Top = 140
    Width = 373
    Height = 27
    KeyField = 'id'
    ListField = 'name'
    ListFieldIndex = 1
    ListSource = DataModule4.sp_addDataSource
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = spComboBox1Click
  end
  object nomer: TEdit
    Left = 131
    Top = 8
    Width = 373
    Height = 27
    ReadOnly = True
    TabOrder = 6
  end
  object FDQuery14: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      '')
    Left = 184
    Top = 183
  end
  object DataSource3: TDataSource
    DataSet = FDQuery14
    Left = 251
    Top = 184
  end
end
