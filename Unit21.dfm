object propuskiadd: Tpropuskiadd
  Left = 0
  Top = 110
  Caption = #1055#1088#1086#1087#1091#1089#1082#1080
  ClientHeight = 506
  ClientWidth = 1273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
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
    Width = 249
    Height = 19
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1088#1086#1087#1091#1089#1082#1086#1074
  end
  object Label4: TLabel
    Left = 402
    Top = 125
    Width = 197
    Height = 21
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1091' '#1087#1088#1086#1087#1091#1089#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 402
    Top = 185
    Width = 220
    Height = 21
    Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1087#1091#1097#1077#1085#1085#1099#1093' '#1095#1072#1089#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
    OnClick = DBLookupComboBox1Click
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
    OnClick = DBLookupComboBox2Click
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 33
    Width = 378
    Height = 463
    DataSource = DataSource1
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
    Top = 460
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
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 402
    Top = 418
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
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 402
    Top = 460
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
    OnClick = Button3Click
  end
  object DBGrid2: TDBGrid
    Left = 829
    Top = 31
    Width = 436
    Height = 465
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataSource = DataSource3
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
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Alignment = taCenter
        Title.Caption = #1060#1040#1052#1048#1051#1048#1071
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'date'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'koll'
        Title.Alignment = taCenter
        Title.Caption = #1050#1054#1051'-'#1042#1054
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'prichina'
        Title.Alignment = taCenter
        Title.Caption = #1055#1056#1048#1063#1048#1053#1040
        Width = 125
        Visible = True
      end>
  end
  object Button4: TButton
    Left = 641
    Top = 418
    Width = 170
    Height = 36
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1086#1083'-'#1074#1086
    TabOrder = 7
    OnClick = Button4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 402
    Top = 216
    Width = 409
    Height = 97
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1087#1088#1086#1087#1091#1089#1082#1072':'
    Items.Strings = (
      #1059#1074#1072#1078#1080#1090#1077#1083#1100#1085#1072#1103
      #1053#1077#1091#1074#1072#1078#1080#1090#1077#1083#1100#1085#1072#1103)
    TabOrder = 8
  end
  object DateTimePicker1: TDateTimePicker
    Left = 402
    Top = 152
    Width = 186
    Height = 27
    Date = 41982.638858495370000000
    Time = 41982.638858495370000000
    DateFormat = dfLong
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    OnChange = DateTimePicker1Change
  end
  object Edit1: TEdit
    Left = 628
    Top = 183
    Width = 39
    Height = 27
    TabOrder = 10
  end
  object GroupBox1: TGroupBox
    Left = 402
    Top = 319
    Width = 408
    Height = 93
    Caption = #1055#1088#1086#1087#1091#1097#1077#1085#1085#1099#1077' '#1087#1072#1088#1099':'
    TabOrder = 11
    object CheckBox2: TCheckBox
      Left = 17
      Top = 32
      Width = 97
      Height = 17
      Caption = '1 '#1087#1072#1088#1072
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 55
      Width = 97
      Height = 17
      Caption = '2 '#1087#1072#1088#1072
      TabOrder = 1
    end
    object CheckBox4: TCheckBox
      Left = 128
      Top = 33
      Width = 97
      Height = 17
      Caption = '3 '#1087#1072#1088#1072
      TabOrder = 2
    end
    object CheckBox5: TCheckBox
      Left = 129
      Top = 56
      Width = 97
      Height = 17
      Caption = '4 '#1087#1072#1088#1072
      TabOrder = 3
    end
    object CheckBox6: TCheckBox
      Left = 248
      Top = 32
      Width = 97
      Height = 17
      Caption = '5 '#1087#1072#1088#1072
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 96
    Top = 432
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 216
    Top = 432
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 936
    Top = 432
  end
  object FDQuery1: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 96
    Top = 480
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 160
    Top = 432
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      '')
    Left = 936
    Top = 480
  end
  object FDQuery4: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT propuski.*, studs.fam FROM propuski, studs;')
    Left = 160
    Top = 488
  end
  object FDQuery5: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      '')
    Left = 224
    Top = 488
  end
end
