object newlkst: Tnewlkst
  Left = 309
  Top = 372
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1083#1080#1095#1085#1086#1081' '#1082#1072#1088#1090#1099' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 188
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 50
    Height = 19
    Caption = #1040#1076#1088#1077#1089':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 86
    Width = 71
    Height = 19
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Label3: TLabel
    Left = 8
    Top = 126
    Width = 177
    Height = 19
    Caption = #1057#1077#1088#1080#1103', '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072':'
  end
  object Label4: TLabel
    Left = 378
    Top = 48
    Width = 119
    Height = 19
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
  end
  object Label5: TLabel
    Left = 378
    Top = 86
    Width = 39
    Height = 19
    Caption = #1048#1053#1053':'
  end
  object Label6: TLabel
    Left = 378
    Top = 126
    Width = 88
    Height = 19
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
  end
  object Label7: TLabel
    Left = 8
    Top = 165
    Width = 84
    Height = 19
    Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 19
    Caption = #1060'.'#1048'.'#1054'.:'
  end
  object Label9: TLabel
    Left = 378
    Top = 8
    Width = 24
    Height = 19
    Caption = #8470':'
  end
  object fio: TLabel
    Left = 98
    Top = 8
    Width = 18
    Height = 19
    Caption = 'fio'
  end
  object nomer: TLabel
    Left = 408
    Top = 8
    Width = 46
    Height = 19
    Caption = 'nomer'
  end
  object dolgnost: TDBLookupComboBox
    Left = 503
    Top = 118
    Width = 186
    Height = 27
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.dolDataSource
    TabOrder = 0
  end
  object adress: TEdit
    Left = 98
    Top = 40
    Width = 266
    Height = 27
    TabOrder = 1
  end
  object tell: TEdit
    Left = 98
    Top = 78
    Width = 266
    Height = 27
    TabOrder = 2
  end
  object inn: TEdit
    Left = 423
    Top = 78
    Width = 266
    Height = 27
    TabOrder = 3
  end
  object dater: TDateTimePicker
    Left = 503
    Top = 40
    Width = 186
    Height = 27
    Date = 41927.930941875000000000
    Time = 41927.930941875000000000
    TabOrder = 4
  end
  object pass: TEdit
    Left = 191
    Top = 118
    Width = 173
    Height = 27
    TabOrder = 5
  end
  object vidan: TEdit
    Left = 98
    Top = 157
    Width = 266
    Height = 27
    TabOrder = 6
  end
  object Button1: TButton
    Left = 380
    Top = 157
    Width = 309
    Height = 27
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button1Click
  end
  object FDQuery: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 728
    Top = 416
  end
end
