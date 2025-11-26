object MainForm: TMainForm
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Interbase ToGo 101 CPP'
  ClientHeight = 744
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 120
  TextHeight = 20
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 1076
    Height = 63
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 1064
      Height = 51
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      Caption = 'Open'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ControlList1: TControlList
    AlignWithMargins = True
    Left = 6
    Top = 81
    Width = 1076
    Height = 657
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    Color = clBtnFace
    ItemColor = clBtnFace
    ItemWidth = 313
    ItemHeight = 110
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ColumnLayout = cltMultiTopToBottom
    ItemSelectionOptions.HotColorAlpha = 20
    ItemSelectionOptions.SelectedColorAlpha = 30
    ItemSelectionOptions.FocusedColorAlpha = 40
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 14
      Top = 39
      Width = 287
      Height = 71
      Margins.Left = 16
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = False
      Caption = 'This is example of item with multi-line text.'
      ShowAccelChar = False
      Transparent = True
      WordWrap = True
    end
    object Label2: TLabel
      Left = 10
      Top = 6
      Width = 40
      Height = 24
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE ORDER BY FULL_NAME')
    Left = 200
    Top = 208
    object FDQuery1EMP_NO: TSmallintField
      FieldName = 'EMP_NO'
      Origin = 'EMP_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1FIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object FDQuery1LAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
    end
    object FDQuery1PHONE_EXT: TStringField
      FieldName = 'PHONE_EXT'
      Origin = 'PHONE_EXT'
      Size = 4
    end
    object FDQuery1HIRE_DATE: TSQLTimeStampField
      FieldName = 'HIRE_DATE'
      Origin = 'HIRE_DATE'
      Required = True
    end
    object FDQuery1DEPT_NO: TStringField
      FieldName = 'DEPT_NO'
      Origin = 'DEPT_NO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object FDQuery1JOB_CODE: TStringField
      FieldName = 'JOB_CODE'
      Origin = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object FDQuery1JOB_GRADE: TSmallintField
      FieldName = 'JOB_GRADE'
      Origin = 'JOB_GRADE'
      Required = True
    end
    object FDQuery1JOB_COUNTRY: TStringField
      FieldName = 'JOB_COUNTRY'
      Origin = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object FDQuery1SALARY: TFMTBCDField
      FieldName = 'SALARY'
      Origin = 'SALARY'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDQuery1FULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Origin = 'FULL_NAME'
      Size = 37
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 80
    Top = 304
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 80
    Top = 248
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\data\employee.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 80
    Top = 192
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 200
    Top = 272
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 196
    Top = 341
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FIRST_NAME'
      Component = Label2
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FULL_NAME'
      Component = Label1
      ComponentProperty = 'Caption'
    end
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = ControlList1
      Columns = <>
    end
  end
end
