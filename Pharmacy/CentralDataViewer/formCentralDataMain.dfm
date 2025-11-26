object Form2: TForm2
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Simple Editor'
  ClientHeight = 554
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 17
  object Splitter1: TSplitter
    Left = 441
    Top = 17
    Width = 4
    Height = 367
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    MinSize = 38
    ExplicitTop = 16
    ExplicitHeight = 368
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 883
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Caption = 
      'Simple Data Editor so you can change the central medicine databa' +
      'se and see Change Views in action at the remote pharmacy databas' +
      'e'
    ExplicitWidth = 825
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 384
    Width = 883
    Height = 4
    Cursor = crVSplit
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    MinSize = 38
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 388
    Width = 883
    Height = 115
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    DataSource = dsLinks
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 441
    Height = 367
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 439
      Height = 334
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      DataSource = dsCategory
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 335
      Width = 439
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataSource = dsCategory
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 445
    Top = 17
    Width = 438
    Height = 367
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 436
      Height = 334
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      DataSource = dsMedicine
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 335
      Width = 436
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataSource = dsMedicine
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 503
    Width = 883
    Height = 51
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      883
      51)
    object Panel4: TPanel
      Left = 324
      Top = 0
      Width = 231
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop]
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        231
        51)
      object btnAdd: TButton
        Left = 8
        Top = 10
        Width = 93
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = DatasetInsert1
        Anchors = [akTop]
        TabOrder = 0
      end
      object btnDelete: TButton
        Left = 128
        Top = 10
        Width = 93
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = DatasetDelete1
        Anchors = [akTop]
        Caption = '&Delete Link'
        TabOrder = 1
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 72
    Top = 24
    object Data1: TMenuItem
      Caption = 'Data'
      object Refresh1: TMenuItem
        Caption = 'Refresh'
        OnClick = Refresh1Click
      end
    end
  end
  object dsCategory: TDataSource
    Left = 128
    Top = 152
  end
  object dsMedicine: TDataSource
    Left = 488
    Top = 152
  end
  object dsLinks: TDataSource
    Left = 488
    Top = 360
  end
  object ActionList1: TActionList
    Left = 16
    Top = 24
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Add link'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsLinks
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsLinks
    end
  end
end
