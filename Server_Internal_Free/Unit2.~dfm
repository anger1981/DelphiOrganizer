object RemoteDM: TRemoteDM
  OldCreateOrder = False
  Left = 227
  Top = 178
  Height = 603
  Width = 931
  object IBDatabase1: TIBDatabase
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
  object tbl_task: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    StoreDefs = True
    TableName = 'TASK'
    Left = 584
    Top = 176
  end
  object dsp_task_v: TDataSetProvider
    DataSet = ibq_task_v
    ResolveToDataSet = True
    Options = [poAllowCommandText]
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
    Top = 104
  end
  object tbl_status: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SPR_STATUS'
    Left = 472
    Top = 176
  end
  object dsp_users: TDataSetProvider
    DataSet = ibq_users
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 344
    Top = 248
  end
  object dsp_status: TDataSetProvider
    DataSet = tbl_task
    ResolveToDataSet = True
    Left = 472
    Top = 248
  end
  object ibsp_norm_task: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'NORM_TASKS'
    Left = 672
    Top = 96
  end
  object t_norm_task: TTimer
    Interval = 5000
    OnTimer = t_norm_taskTimer
    Left = 672
    Top = 32
  end
  object ibq_user_id: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select us.code, us.fio from users us where us.login = :login and' +
        ' us."PASSWORD" = :password')
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
  object ibq_users: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '')
    Left = 344
    Top = 176
  end
  object ibq_task_v: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 80
    Top = 176
  end
  object dsp_task_tbl: TDataSetProvider
    DataSet = tbl_task
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 584
    Top = 248
  end
  object ibq_task_tree: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TREE_TASK ('
      '    :TASK_CODE)')
    Left = 224
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TASK_CODE'
        ParamType = ptUnknown
      end>
  end
  object dsp_task_tree: TDataSetProvider
    DataSet = ibq_task_tree
    Left = 224
    Top = 448
  end
end
