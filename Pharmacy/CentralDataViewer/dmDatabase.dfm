object dtmdDatabase: TdtmdDatabase
  Height = 409
  Width = 634
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\data\MEDICINES.IB'
      'Protocol=TCPIP'
      'Server=localhost'
      'DriverID=IB')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 60
    Top = 30
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 180
    Top = 30
  end
  object qryCategory: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    OnNewRecord = qryCategoryNewRecord
    IndexFieldNames = 'CATEGORY_ID'
    Connection = FDConnection
    SQL.Strings = (
      'Select * FROM CATEGORY')
    Left = 90
    Top = 170
  end
  object qryMedicine: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    OnNewRecord = qryMedicineNewRecord
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM MEDICINE')
    Left = 90
    Top = 240
  end
  object qryMedicineCategories: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    OnNewRecord = qryMedicineCategoriesNewRecord
    IndexFieldNames = 'CATEGORY_ID'
    MasterSource = dsCategory
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM MEDICINE_CATEGORIES'
      'WHERE CATEGORY_ID = :CATEGORY_ID')
    Left = 190
    Top = 330
    ParamData = <
      item
        Name = 'CATEGORY_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryMedicineCategoriesCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
      Origin = 'CATEGORY_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMedicineCategoriesMEDICINE_ID: TIntegerField
      FieldName = 'MEDICINE_ID'
      Origin = 'MEDICINE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMedicineCategoriesMEDICINE_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'MEDICINE_NAME'
      LookupDataSet = qryMedicine
      LookupKeyFields = 'MEDICINE_ID'
      LookupResultField = 'MEDICINE_NAME'
      KeyFields = 'MEDICINE_ID'
      Size = 100
      Lookup = True
    end
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 300
    Top = 180
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 400
    Top = 90
  end
  object FDStoredProc1: TFDStoredProc
    Connection = FDConnection
    StoredProcName = 'GETID'
    Left = 440
    Top = 290
    ParamData = <
      item
        Position = 1
        Name = 'NEWID'
        DataType = ftInteger
        ParamType = ptOutput
      end>
    object FDStoredProc1NEWID: TIntegerField
      FieldName = 'NEWID'
      Origin = 'NEWID'
    end
  end
  object dsCategory: TDataSource
    DataSet = qryCategory
    Left = 190
    Top = 260
  end
end
