object Specialnost: TSpecialnost
  Left = 0
  Top = 0
  Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  ClientHeight = 303
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 48
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 184
    Width = 88
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 102
    Top = 184
    Width = 88
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 32
    Top = 248
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      'SELECT * FROM asu.spec;')
    Left = 152
    Top = 248
  end
  object FDQuery2: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 216
    Top = 248
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id;id'
    Connection = DataModule4.FDConnection1
    UpdateOptions.UpdateTableName = 'asu.spec'
    TableName = 'asu.spec'
    Left = 96
    Top = 248
  end
  object FDQuery3: TFDQuery
    Connection = DataModule4.FDConnection1
    Left = 280
    Top = 248
  end
end
