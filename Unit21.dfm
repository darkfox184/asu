object propuskiadd: Tpropuskiadd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1087#1091#1089#1082#1080
  ClientHeight = 385
  ClientWidth = 1097
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
    Left = 402
    Top = 7
    Width = 205
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 402
    Top = 65
    Width = 263
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1087#1087#1091' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 6
    Width = 217
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1091#1076#1077#1085#1090#1072' '#1075#1088#1091#1087#1087#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 829
    Top = 7
    Width = 231
    Height = 19
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1086#1094#1077#1085#1086#1082':'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 402
    Top = 33
    Width = 409
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = 'name'
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataModule4.sp_addDataSource
    ParentFont = False
    TabOrder = 0
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 402
    Top = 90
    Width = 263
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 33
    Width = 378
    Height = 345
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1060#1040#1052#1048#1051#1048#1071
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imya'
        Title.Caption = #1048#1052#1071
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otch'
        Title.Caption = #1054#1058#1063#1045#1057#1058#1042#1054
        Width = 100
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 641
    Top = 300
    Width = 170
    Height = 36
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 402
    Top = 258
    Width = 170
    Height = 36
    Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1087#1088#1086#1087#1091#1089#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button3: TButton
    Left = 402
    Top = 300
    Width = 170
    Height = 36
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid2: TDBGrid
    Left = 829
    Top = 31
    Width = 260
    Height = 347
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1060#1040#1052#1048#1051#1048#1071
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1055#1056#1054#1055#1059#1057#1050
        Width = 90
        Visible = True
      end>
  end
  object Button4: TButton
    Left = 641
    Top = 258
    Width = 170
    Height = 36
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 7
  end
  object Button5: TButton
    Left = 641
    Top = 342
    Width = 170
    Height = 36
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 8
  end
  object RadioGroup1: TRadioGroup
    Left = 402
    Top = 144
    Width = 409
    Height = 97
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1087#1088#1086#1087#1091#1089#1082#1072':'
    Items.Strings = (
      #1059#1074#1072#1078#1080#1090#1077#1083#1100#1085#1072#1103
      #1053#1077#1091#1074#1072#1078#1080#1090#1077#1083#1100#1085#1072#1103)
    TabOrder = 9
  end
end
