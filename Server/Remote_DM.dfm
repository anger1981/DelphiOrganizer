object Server_DM: TServer_DM
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  OnDestroy = RemoteDataModuleDestroy
  Left = 357
  Top = 168
  Height = 661
  Width = 839
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'Mvk1:C:\Program Files\ORGANAIZER_SERVER\ORGANAIZER_.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=crjhjktnj')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 120
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Active = False
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 240
    Top = 32
  end
  object tbl_task_v: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TASK_V'
    Left = 80
    Top = 176
  end
  object dsp_task_v: TDataSetProvider
    DataSet = tbl_task_v
    ResolveToDataSet = True
    Left = 80
    Top = 248
  end
  object ibq_create_task: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODE_TASK from CREATE_TASK(:CODE_MASTER_TSK,'
      '    :MASTER_ID,'
      '    :SLAVE_ID,'
      '    :PRIVAT,'
      '    :IMPOTANT,'
      '    :TIME_END)')
    Left = 200
    Top = 176
    ParamData = <
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
  end
  object dsp_create_task: TDataSetProvider
    DataSet = ibq_create_task
    Left = 200
    Top = 248
  end
  object tbl_users: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'USERS'
    Left = 344
    Top = 176
  end
  object tbl_status: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SPR_STATUS'
    Left = 480
    Top = 176
  end
  object dsp_users: TDataSetProvider
    DataSet = tbl_users
    ResolveToDataSet = True
    Left = 344
    Top = 248
  end
  object dsp_status: TDataSetProvider
    DataSet = tbl_task_v
    ResolveToDataSet = True
    Left = 480
    Top = 248
  end
  object ibsp_norm_task: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'NORM_TASKS'
    Left = 640
    Top = 96
  end
  object t_norm_task: TTimer
    Interval = 5000
    OnTimer = t_norm_taskTimer
    Left = 640
    Top = 32
  end
  object ibq_user_id: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select id from users where login = :login and password = :passwo' +
        'rd')
    Left = 88
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'password'
        ParamType = ptUnknown
      end>
  end
  object dsp_user_id: TDataSetProvider
    DataSet = ibq_user_id
    Left = 88
    Top = 448
  end
end
