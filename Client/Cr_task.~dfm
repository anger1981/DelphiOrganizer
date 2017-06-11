object Create_task: TCreate_task
  Left = 112
  Top = 153
  Width = 1152
  Height = 796
  Caption = 'Create_task'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 88
    Top = 32
    Width = 255
    Height = 34
    Caption = #1042#1099#1073#1086#1088' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 560
    Top = 32
    Width = 178
    Height = 34
    Caption = #1058#1077#1082#1089#1090' '#1079#1072#1076#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 888
    Top = 32
    Width = 199
    Height = 34
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object dbg_users: TDBGrid
    Left = 32
    Top = 80
    Width = 369
    Height = 449
    DataSource = ds_users
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbg_usersCellClick
    OnKeyUp = dbg_usersKeyUp
  end
  object re_task: TRichEdit
    Left = 440
    Top = 80
    Width = 385
    Height = 449
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object monthcal: TMonthCalendar
    Left = 896
    Top = 80
    Width = 197
    Height = 183
    Date = 41110.410261817130000000
    TabOrder = 2
    OnClick = monthcalClick
  end
  object dtp: TDateTimePicker
    Left = 912
    Top = 296
    Width = 186
    Height = 24
    Date = 41110.491131805550000000
    Time = 41110.491131805550000000
    Kind = dtkTime
    TabOrder = 3
  end
  object Button1: TButton
    Left = 232
    Top = 616
    Width = 313
    Height = 49
    Caption = #1057#1086#1079#1076#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 600
    Top = 616
    Width = 313
    Height = 49
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object privat: TCheckBox
    Left = 928
    Top = 456
    Width = 169
    Height = 33
    Caption = #1055#1088#1080#1074#1072#1090#1085#1086#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object le_impotent: TLabeledEdit
    Left = 896
    Top = 400
    Width = 217
    Height = 24
    EditLabel.Width = 205
    EditLabel.Height = 24
    EditLabel.Caption = #1042#1072#1078#1085#1086#1089#1090#1100' ('#1086#1090' 1 '#1076#1086' 100)'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -20
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 7
  end
  object MaskEdit1: TMaskEdit
    Left = 912
    Top = 544
    Width = 170
    Height = 24
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 8
    Text = '  :  '
  end
  object cds_users: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_users'
    RemoteServer = Login.SocketConnection1
    Left = 40
    Top = 576
  end
  object ds_users: TDataSource
    DataSet = cds_users
    Left = 40
    Top = 624
  end
  object cds_create_task: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODE_MASTER_TSK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MASTER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SLAVE_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRIVAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPOTANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIME_END'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp_create_task'
    RemoteServer = Login.SocketConnection1
    Left = 112
    Top = 576
  end
  object cds_task_tbl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_task_tbl'
    RemoteServer = Login.SocketConnection1
    Left = 112
    Top = 624
  end
end
