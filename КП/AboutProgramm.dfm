object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  ClientHeight = 350
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 79
    Height = 25
    Caption = 'PCHelper'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 47
    Width = 63
    Height = 25
    Caption = #1042#1077#1088#1089#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 112
    Top = 47
    Width = 134
    Height = 25
    Caption = '1.0 (20.06.2024)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 104
    Width = 131
    Height = 15
    Caption = '2024 Nikita Khartanovich'
  end
  object Label5: TLabel
    Left = 32
    Top = 136
    Width = 254
    Height = 15
    Caption = #1041#1077#1083#1072#1088#1091#1089#1100', '#1043#1088#1086#1076#1085#1086', '#1055#1086#1083#1080#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1083#1083#1077#1076#1078
  end
  object Label6: TLabel
    Left = 420
    Top = 57
    Width = 156
    Height = 15
    Caption = #1061#1072#1088#1090#1072#1085#1086#1074#1080#1095' '#1053#1080#1082#1080#1090#1072' 2007 '#1075'.'#1088'.'
  end
  object RadioGroup1: TRadioGroup
    Left = 404
    Top = 16
    Width = 185
    Height = 89
    Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 32
    Top = 185
    Width = 393
    Height = 17
    Columns = 2
    ItemHeight = 15
    Items.Strings = (
      #1058#1080#1087
      #1050#1086#1084#1087#1086#1085#1077#1085#1090)
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 32
    Top = 208
    Width = 393
    Height = 121
    Columns = 2
    ItemHeight = 15
    Items.Strings = (
      #1050#1072#1088#1090#1080#1085#1082#1072
      #1050#1085#1086#1087#1082#1072
      #1060#1080#1075#1091#1088#1072
      #1055#1088#1086#1079#1088#1072#1095#1085#1072#1103' '#1082#1085#1086#1087#1082#1072
      #1055#1077#1088#1077#1082#1083#1102#1095#1072#1090#1077#1083#1080
      #1055#1086#1083#1077' '#1076#1083#1103' '#1090#1077#1082#1089#1090#1072
      #1052#1077#1085#1102
      'TImage'
      'TButton'
      'TShape'
      'TSpeedButton'
      'TRadioGroup'
      'TMemo'
      'TMainMenu')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 501
    Top = 304
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 3
    OnClick = Button1Click
  end
end
