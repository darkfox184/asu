object uchplanst: Tuchplanst
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
  ClientHeight = 656
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 344
    Top = 0
    Width = 523
    Height = 177
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091':'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 28
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 16
      Top = 66
      Width = 138
      Height = 19
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074':'
    end
    object Label4: TLabel
      Left = 16
      Top = 104
      Width = 132
      Height = 19
      Caption = #1053#1072#1095#1072#1083#1086' '#1080#1079#1091#1095#1077#1085#1080#1103':'
    end
    object Edit1: TEdit
      Left = 94
      Top = 25
      Width = 419
      Height = 27
      TabOrder = 0
      TextHint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
    end
    object Edit2: TEdit
      Left = 160
      Top = 58
      Width = 193
      Height = 27
      TabOrder = 1
      TextHint = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074
    end
    object DateTimePicker1: TDateTimePicker
      Left = 154
      Top = 96
      Width = 186
      Height = 27
      Date = 41936.893814108790000000
      Time = 41936.893814108790000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 424
      Top = 133
      Width = 83
      Height = 30
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 344
    Top = 183
    Width = 523
    Height = 226
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1091':'
    TabOrder = 1
    object Label10: TLabel
      Left = 14
      Top = 41
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label11: TLabel
      Left = 16
      Top = 74
      Width = 138
      Height = 19
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1095#1072#1089#1086#1074':'
    end
    object Label12: TLabel
      Left = 16
      Top = 112
      Width = 132
      Height = 19
      Caption = #1053#1072#1095#1072#1083#1086' '#1080#1079#1091#1095#1077#1085#1080#1103':'
    end
    object Edit3: TEdit
      Left = 160
      Top = 71
      Width = 193
      Height = 27
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 94
      Top = 38
      Width = 419
      Height = 27
      TabOrder = 1
    end
    object DateTimePicker3: TDateTimePicker
      Left = 154
      Top = 109
      Width = 186
      Height = 27
      Date = 41936.893814108790000000
      Time = 41936.893814108790000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 384
      Top = 175
      Width = 121
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 4
    end
    object Button3: TButton
      Left = 304
      Top = 175
      Width = 74
      Height = 34
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 154
      Width = 177
      Height = 17
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1072#1088#1093#1080#1074
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 338
    Height = 409
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099':'
    TabOrder = 2
    object Label2: TLabel
      Left = 12
      Top = 28
      Width = 118
      Height = 19
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 3
      Top = 53
      Width = 332
      Height = 27
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataModule4.DataSourcesp_ucsp
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 104
      Width = 332
      Height = 288
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 415
    Width = 338
    Height = 241
    Caption = #1052#1086#1076#1091#1083#1080':'
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 0
      Top = 32
      Width = 329
      Height = 206
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox5: TGroupBox
    Left = 344
    Top = 415
    Width = 523
    Height = 114
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1086#1076#1091#1083#1100':'
    TabOrder = 4
    object Label6: TLabel
      Left = 3
      Top = 28
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Edit5: TEdit
      Left = 83
      Top = 33
      Width = 422
      Height = 24
      TabOrder = 0
      TextHint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
    end
    object Button4: TButton
      Left = 424
      Top = 63
      Width = 83
      Height = 30
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
    end
  end
  object GroupBox6: TGroupBox
    Left = 344
    Top = 535
    Width = 523
    Height = 121
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1086#1076#1091#1083#1100':'
    TabOrder = 5
    object Label7: TLabel
      Left = 3
      Top = 36
      Width = 74
      Height = 19
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Edit6: TEdit
      Left = 83
      Top = 33
      Width = 422
      Height = 24
      TabOrder = 0
    end
    object Button5: TButton
      Left = 384
      Top = 71
      Width = 121
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
    end
    object Button6: TButton
      Left = 304
      Top = 70
      Width = 74
      Height = 34
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
  end
end