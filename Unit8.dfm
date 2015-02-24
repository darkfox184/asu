object newlkrod: Tnewlkrod
  Left = 309
  Top = 326
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1083#1080#1095#1085#1086#1081' '#1082#1072#1088#1090#1099' '#1088#1086#1076#1080#1090#1077#1083#1103
  ClientHeight = 202
  ClientWidth = 642
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
    Left = 8
    Top = 40
    Width = 56
    Height = 19
    Caption = #1060'.'#1048'.'#1054'.:'
  end
  object mestorab: TLabel
    Left = 8
    Top = 77
    Width = 109
    Height = 19
    Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099':'
  end
  object Label3: TLabel
    Left = 8
    Top = 146
    Width = 71
    Height = 19
    Caption = #1058#1077#1083#1077#1092#1086#1085':'
  end
  object Label4: TLabel
    Left = 309
    Top = 146
    Width = 138
    Height = 19
    Caption = #1058#1077#1083#1077#1092#1086#1085' '#1088#1072#1073#1086#1095#1080#1081':'
  end
  object Label5: TLabel
    Left = 8
    Top = 110
    Width = 88
    Height = 19
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
  end
  object Label6: TLabel
    Left = 8
    Top = 179
    Width = 50
    Height = 19
    Caption = #1040#1076#1088#1077#1089':'
  end
  object Label7: TLabel
    Left = 465
    Top = 40
    Width = 129
    Height = 19
    Caption = #1057#1090#1077#1087#1077#1085#1100' '#1088#1086#1076#1089#1090#1074#1072':'
  end
  object Label8: TLabel
    Left = 8
    Top = 8
    Width = 145
    Height = 19
    Caption = #1056#1086#1076#1080#1090#1077#1083#1100' '#1089#1090#1091#1076#1077#1085#1090#1072':'
  end
  object Label9: TLabel
    Left = 465
    Top = 8
    Width = 24
    Height = 19
    Caption = #8470':'
  end
  object fiol: TLabel
    Left = 159
    Top = 8
    Width = 18
    Height = 19
    Caption = 'fio'
  end
  object nomer: TLabel
    Left = 489
    Top = 8
    Width = 46
    Height = 19
    Caption = 'nomer'
  end
  object fio: TEdit
    Left = 70
    Top = 32
    Width = 372
    Height = 27
    TabOrder = 0
  end
  object mesto_rab: TEdit
    Left = 123
    Top = 69
    Width = 319
    Height = 27
    TabOrder = 1
  end
  object dolgnost: TEdit
    Left = 123
    Top = 102
    Width = 319
    Height = 27
    TabOrder = 2
  end
  object tel_dom: TEdit
    Left = 123
    Top = 138
    Width = 180
    Height = 27
    TabOrder = 3
  end
  object tel_rab: TEdit
    Left = 465
    Top = 138
    Width = 169
    Height = 27
    TabOrder = 4
  end
  object adress: TEdit
    Left = 123
    Top = 171
    Width = 319
    Height = 27
    TabOrder = 5
  end
  object Button1: TButton
    Left = 465
    Top = 171
    Width = 169
    Height = 27
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
  object fam_id: TDBLookupComboBox
    Left = 465
    Top = 69
    Width = 169
    Height = 27
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.tiprodstvaSource
    TabOrder = 7
  end
  object FDQuery: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 512
    Top = 240
  end
end
