object frmMergeMain: TfrmMergeMain
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Update Medicine Data'
  ClientHeight = 364
  ClientWidth = 930
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 930
    Height = 95
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 461
      Top = 1
      Width = 4
      Height = 93
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      MinSize = 38
    end
    object Panel2: TPanel
      Left = 465
      Top = 1
      Width = 464
      Height = 93
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 462
        Height = 91
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Caption = 'Central MSSQL Database'
        TabOrder = 0
        DesignSize = (
          462
          91)
        object edtMSSQLDatabase: TEdit
          Left = 30
          Top = 59
          Width = 374
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'Pharmacy'
        end
        object edtMSSQLServer: TEdit
          Left = 30
          Top = 25
          Width = 374
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = 'lEnterYourServerName\MSSQL2014'
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 460
      Height = 93
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 458
        Height = 91
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Caption = 'Central InterBase Database'
        TabOrder = 0
        DesignSize = (
          458
          91)
        object sbInterBase: TSpeedButton
          Left = 389
          Top = 30
          Width = 29
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
          Caption = '...'
        end
        object edtIBDatabase: TEdit
          Left = 20
          Top = 30
          Width = 371
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'c:\data\MEDICINES.IB'
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 95
    Width = 930
    Height = 269
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    DesignSize = (
      930
      269)
    object Label1: TLabel
      Left = 1
      Top = 129
      Width = 928
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Alignment = taCenter
      Caption = 
        'This application was a sample used to get a MS-SQL database sync' +
        '-ed into a central InterBase database that then managed the chan' +
        'geviews to provide delta'#39's for remote databases to collect. This' +
        ' reduced network traffic, and speeded up the time it took to upd' +
        'ate a remote database. - This is provided as an example only as ' +
        'the MSSQL data is not shipped with the demo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 901
    end
    object btnMerge: TButton
      Left = 418
      Top = 205
      Width = 93
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop]
      Caption = 'Merge'
      TabOrder = 0
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 928
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 1
    end
    object ProgressBar2: TProgressBar
      Left = 1
      Top = 23
      Width = 928
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 2
    end
    object ProgressBar3: TProgressBar
      Left = 1
      Top = 44
      Width = 928
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 3
    end
    object ProgressBar4: TProgressBar
      Left = 1
      Top = 65
      Width = 928
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 4
    end
    object ProgressBar5: TProgressBar
      Left = 1
      Top = 86
      Width = 928
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 5
    end
    object ProgressBar6: TProgressBar
      Left = 1
      Top = 108
      Width = 928
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 6
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'InterBase'
        FileMask = '*.ib;*.gdb'
      end>
    Options = []
    Left = 768
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 152
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Action = FileExit1
      end
    end
  end
  object ActionList1: TActionList
    Left = 448
    Top = 160
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
  end
end
