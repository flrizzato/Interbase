object frmPharmacy: TfrmPharmacy
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Pharmacy Remote Software'
  ClientHeight = 710
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 91
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelInner = bvLowered
    BevelKind = bkTile
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 1070
      Height = 83
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object edtCentralServer: TLabeledEdit
        Left = 313
        Top = 28
        Width = 408
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        EditLabel.Width = 87
        EditLabel.Height = 17
        EditLabel.Margins.Left = 4
        EditLabel.Margins.Top = 4
        EditLabel.Margins.Right = 4
        EditLabel.Margins.Bottom = 4
        EditLabel.Caption = 'Central Server'
        TabOrder = 0
        Text = '127.0.0.1:c:\data\MEDICINES.IB'
      end
    end
    object edtSite: TLabeledEdit
      Left = 83
      Top = 30
      Width = 151
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      EditLabel.Width = 80
      EditLabel.Height = 17
      EditLabel.Margins.Left = 4
      EditLabel.Margins.Top = 4
      EditLabel.Margins.Right = 4
      EditLabel.Margins.Bottom = 4
      EditLabel.Caption = 'Pharmacy ID'
      TabOrder = 1
      Text = 'P1'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 91
    Width = 1078
    Height = 619
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Medicines'
      object Splitter1: TSplitter
        Left = 201
        Top = 0
        Width = 13
        Height = 587
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        MinSize = 38
        ExplicitHeight = 584
      end
      object lvCategory: TListView
        Left = 0
        Top = 0
        Width = 201
        Height = 587
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alLeft
        Columns = <
          item
            Caption = 'Category'
            Width = 188
          end
          item
            Caption = 'Description'
            Width = 250
          end>
        Items.ItemData = {
          05460100000500000000000000FFFFFFFFFFFFFFFF02000000FFFFFFFF010000
          000641006C0065007200670079000346006F006F000000000000000000000000
          0000FFFFFFFFFFFFFFFF02000000FFFFFFFF020000000E430061007200640069
          006F00760061007300630075006C006100720000000000000000000000000000
          00FFFFFFFFFFFFFFFF02000000FFFFFFFF030000001047006100730074007200
          6F0065006E007400650072006F006C006F006700790000000000000000000000
          00000000FFFFFFFFFFFFFFFF02000000FFFFFFFF040000000949006E0066006C
          00750065006E007A0061000000000000000000000000000000FFFFFFFFFFFFFF
          FF02000000FFFFFFFF050000000F4D0075007300630075006C006F0073006B00
          65006C006500740061006C0000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
        ViewStyle = vsReport
      end
      object lvMedicine: TListView
        Left = 214
        Top = 0
        Width = 274
        Height = 587
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alLeft
        Columns = <
          item
            Caption = 'Medicines'
            Width = 263
          end>
        Items.ItemData = {
          05290100000300000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF010000
          001C4100760061006D00790073002000280066006C0075007400690063006100
          73006F006E00650020006600750072006F006100740065002900000000000000
          000000FFFFFFFFFFFFFFFF01000000FFFFFFFF02000000254200650063006F00
          6E00610073006500200028006200650063006C006F006D006500740061007300
          6F006E006500200064006900700072006F00700069006F006E00610074006500
          2900000000000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF0300000022
          46006C00690078006F006E006100730065002000280066006C00750074006900
          6300610073006F006E0065002000700072006F00700069006F006E0061007400
          650029000000000000FFFFFFFFFFFF}
        TabOrder = 1
        ViewStyle = vsReport
      end
      object PageControl2: TPageControl
        Left = 488
        Top = 0
        Width = 582
        Height = 587
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 2
        object TabSheet4: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Details'
          object Splitter2: TSplitter
            Left = 0
            Top = 270
            Width = 574
            Height = 4
            Cursor = crVSplit
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            MinSize = 38
            ExplicitWidth = 570
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 574
            Height = 270
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Patient Advice'
            TabOrder = 0
            object MemoPATIENT_ADVICE: TMemo
              Left = 2
              Top = 19
              Width = 570
              Height = 249
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Lines.Strings = (
                'For intranasal use only.'
                ''
                ''
                'Adults and adolescents (12 years and older)'
                ''
                
                  'Two sprays per nostril once daily (total daily dose, 110 microgr' +
                  'ams).'
                
                  'Once symptoms controlled, use maintenance dose of one spray per ' +
                  'nostril once daily (total '
                'daily dose, 55 micrograms).'
                
                  'Reduce to lowest dose at which effective control of symptoms is ' +
                  'maintained.'
                ''
                'Children aged 6 to 11 years'
                ''
                
                  'One spray per nostril once daily (total daily dose, 55 microgram' +
                  's).'
                
                  'If patient is not adequately responding, increase daily dose to ' +
                  '110 micrograms (two sprays '
                
                  'per nostril, once daily) and reduce back down to 55 micrograms d' +
                  'aily dose once control is '
                'achieved.')
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 274
            Width = 574
            Height = 281
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Special Precautions'
            TabOrder = 1
            object MemoSPECIAL_WARNINGS: TMemo
              Left = 2
              Top = 19
              Width = 570
              Height = 260
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Lines.Strings = (
                'Special Warnings and Precautions'
                ''
                
                  'Systemic effects of nasal corticosteroids may occur, particularl' +
                  'y when prescribed at high '
                
                  'doses for prolonged periods. These effects are much less likely ' +
                  'to occur than with oral '
                
                  'corticosteroids and may vary in individual patients and between ' +
                  'different corticosteroid '
                
                  'preparations. Potential systemic effects may include Cushing'#8217's s' +
                  'yndrome, Cushingoid '
                
                  'features, adrenal suppression, growth retardation in children an' +
                  'd adolescents, cataract, '
                
                  'glaucoma and more rarely, a range of psychological or behavioura' +
                  'l effects including '
                
                  'psychomotor hyperactivity, sleep disorders, anxiety, depression ' +
                  'or aggression (particularly '
                
                  'in children). Treatment with higher than recommended doses of na' +
                  'sal corticosteroids may '
                
                  'result in clinically significant adrenal suppression. Consider a' +
                  'dditional systemic '
                
                  'corticosteroid cover during periods of stress or elective surger' +
                  'y. Caution when prescribing '
                
                  'concurrently with other corticosteroids. A reduction in growth v' +
                  'elocity has been observed '
                
                  'in children treated with fluticasone furoate 110 micrograms dail' +
                  'y for one year. Therefore, '
                
                  'children should be maintained on the lowest possible efficacious' +
                  ' dose which delivers '
                
                  'adequate symptom control. It is recommended that growth of child' +
                  'ren receiving '
                'prolonged '
                
                  'treatment with nasal corticosteroids is regularly monitored. Con' +
                  'sider referring to a '
                
                  'paediatric specialist. May cause irritation of the nasal mucosa.' +
                  ' Caution when treating '
                
                  'patients with severe liver disease, systemic exposure likely to ' +
                  'be increased. Nasal and '
                
                  'inhaled corticosteroids may result in the development of glaucom' +
                  'a and/or cataracts. Close '
                
                  'monitoring is warranted in patients with a change in vision or w' +
                  'ith a history of increased '
                'intraocular pressure, glaucoma and/or cataracts.'
                ''
                'Drug Interactions'
                ''
                
                  'Caution is recommended when co-administering with potent CYP3A4 ' +
                  'inhibitors e.g. '
                
                  'ketoconazole and co-administration with ritonavir is not recomme' +
                  'nded because of the risk '
                'of increased systemic exposure of fluticasone furoate.'
                ''
                'Pregnancy and Lactation'
                ''
                'No adequate data available.'
                'Recommended nasal doses result in minimal systemic exposure.'
                
                  'It is unknown if fluticasone furoate nasal spray is excreted in ' +
                  'breast milk.'
                
                  'Only use if the expected benefits to the mother outweigh the pos' +
                  'sible risks to the foetus '
                'or child.')
              TabOrder = 0
            end
          end
        end
        object TabSheet5: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Web'
          ImageIndex = 1
          object lblURL: TLabel
            Left = 0
            Top = 538
            Width = 574
            Height = 17
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alBottom
            Caption = ' - '
            ExplicitTop = 533
            ExplicitWidth = 13
          end
          object WebBrowser1: TWebBrowser
            Left = 0
            Top = 31
            Width = 574
            Height = 507
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 0
            ControlData = {
              4C000000762F0000EC2900000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E12620A000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
          object btnWebdetailsLoad: TButton
            Left = 0
            Top = 0
            Width = 574
            Height = 31
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Load Current'
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Customers'
      ImageIndex = 1
      object lvCustomers: TListView
        Left = 0
        Top = 0
        Width = 281
        Height = 579
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alLeft
        Columns = <
          item
            Caption = 'Customer List'
            Width = 250
          end>
        Items.ItemData = {
          05520000000200000000000000FFFFFFFFFFFFFFFF01000000FFFFFFFF010000
          000342006F006200000000000000000000FFFFFFFFFFFFFFFF01000000FFFFFF
          FF02000000054A0061006D00650073000000000000FFFFFFFF}
        TabOrder = 0
        ViewStyle = vsReport
        ExplicitHeight = 584
      end
      object Panel4: TPanel
        Left = 281
        Top = 0
        Width = 787
        Height = 579
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 584
        object Splitter3: TSplitter
          Left = 1
          Top = 171
          Width = 782
          Height = 4
          Cursor = crVSplit
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          MinSize = 38
        end
        object gbCustomer: TGroupBox
          Left = 1
          Top = 1
          Width = 782
          Height = 170
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'Customer'
          TabOrder = 0
          object Label1: TLabel
            Left = 200
            Top = 30
            Width = 48
            Height = 17
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Address'
          end
          object LabeledEditCUSTOMER_NAME: TLabeledEdit
            Left = 20
            Top = 50
            Width = 151
            Height = 25
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            EditLabel.Width = 114
            EditLabel.Height = 17
            EditLabel.Margins.Left = 4
            EditLabel.Margins.Top = 4
            EditLabel.Margins.Right = 4
            EditLabel.Margins.Bottom = 4
            EditLabel.Caption = 'CUSTOMER_NAME'
            TabOrder = 0
            Text = 'Bob'
          end
          object MemoCUSTOMER_ADDRESS: TMemo
            Left = 200
            Top = 54
            Width = 270
            Height = 87
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            TabOrder = 1
          end
          object NavigatorBindSourceDB3: TBindNavigator
            Left = 478
            Top = 55
            Width = 300
            Height = 31
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataSource = bsCustomer
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 1
          Top = 175
          Width = 782
          Height = 408
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Caption = 'Orders'
          TabOrder = 1
          object Panel5: TPanel
            Left = 3
            Top = 320
            Width = 776
            Height = 85
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alBottom
            TabOrder = 0
            object Label2: TLabel
              Left = 18
              Top = 30
              Width = 175
              Height = 17
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Avamys (fluticasone furoate)'
            end
            object btnAddOrder: TButton
              Left = 448
              Top = 30
              Width = 122
              Height = 31
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'New Order'
              TabOrder = 0
            end
            object seQuantity: TSpinEdit
              Left = 289
              Top = 30
              Width = 151
              Height = 25
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              MaxValue = 100
              MinValue = 0
              TabOrder = 1
              Value = 20
            end
          end
          object BindNavigator1: TBindNavigator
            Left = 3
            Top = 289
            Width = 776
            Height = 31
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            DataSource = bsOrder
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbRefresh]
            Align = alBottom
            TabOrder = 1
          end
          object gridOrders: TDBGrid
            Left = 3
            Top = 19
            Width = 776
            Height = 270
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            DataSource = dtmdLocalDB.dsOrders
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DATE_TIME'
                Title.Caption = 'Order Date Time'
                Width = 188
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDICINE_NAME'
                Title.Caption = 'Medicine Name'
                Width = 463
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITY'
                Title.Caption = 'Quantity'
                Width = 80
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Data Updates'
      ImageIndex = 2
      object PageControl3: TPageControl
        Left = 0
        Top = 51
        Width = 1070
        Height = 500
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet7: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Categories'
          inline FrameCategory: TFrame1
            Left = 0
            Top = 0
            Width = 1062
            Height = 468
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 1062
            ExplicitHeight = 468
            inherited lblQry: TLabel
              Width = 1062
              Height = 21
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitWidth = 1323
              ExplicitHeight = 21
            end
            inherited Splitter2: TSplitter
              Top = 297
              Width = 1062
              Height = 4
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              MinSize = 38
              ExplicitLeft = 0
              ExplicitTop = 405
              ExplicitWidth = 1323
              ExplicitHeight = 4
            end
            inherited GroupBox1: TGroupBox
              Top = 21
              Width = 1062
              Height = 276
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitTop = 21
              ExplicitWidth = 1323
              ExplicitHeight = 384
              inherited DBGrid1: TDBGrid
                Left = 3
                Top = 19
                Width = 1312
                Height = 316
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Font.Height = -14
                Font.Name = 'Tahoma'
                ParentFont = False
                TitleFont.Height = -14
                TitleFont.Name = 'Tahoma'
              end
            end
            inherited GroupBox3: TGroupBox
              Top = 301
              Width = 1062
              Height = 167
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitTop = 409
              ExplicitWidth = 1323
              ExplicitHeight = 167
              inherited DBGrid2: TDBGrid
                Left = 3
                Top = 19
                Width = 1312
                Height = 146
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Font.Height = -14
                Font.Name = 'Tahoma'
                ParentFont = False
                TitleFont.Height = -14
                TitleFont.Name = 'Tahoma'
              end
            end
          end
        end
        object TabSheet6: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Medicine'
          inline FrameMedicine: TFrame1
            Left = 0
            Top = 0
            Width = 1062
            Height = 468
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 1062
            ExplicitHeight = 468
            inherited lblQry: TLabel
              Width = 1062
              Height = 21
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitWidth = 1323
              ExplicitHeight = 21
            end
            inherited Splitter2: TSplitter
              Top = 297
              Width = 1062
              Height = 4
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              MinSize = 38
              ExplicitLeft = 0
              ExplicitTop = 405
              ExplicitWidth = 1323
              ExplicitHeight = 4
            end
            inherited GroupBox1: TGroupBox
              Top = 21
              Width = 1062
              Height = 276
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitTop = 21
              ExplicitWidth = 1323
              ExplicitHeight = 384
              inherited DBGrid1: TDBGrid
                Left = 3
                Top = 19
                Width = 1312
                Height = 316
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Font.Height = -14
                Font.Name = 'Tahoma'
                ParentFont = False
                TitleFont.Height = -14
                TitleFont.Name = 'Tahoma'
              end
            end
            inherited GroupBox3: TGroupBox
              Top = 301
              Width = 1062
              Height = 167
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitTop = 409
              ExplicitWidth = 1323
              ExplicitHeight = 167
              inherited DBGrid2: TDBGrid
                Left = 3
                Top = 19
                Width = 1312
                Height = 146
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Font.Height = -14
                Font.Name = 'Tahoma'
                ParentFont = False
                TitleFont.Height = -14
                TitleFont.Name = 'Tahoma'
              end
            end
          end
        end
        object TabSheet8: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Medicine Categories'
          ImageIndex = 2
          inline FrameLinks: TFrame1
            Left = 0
            Top = 0
            Width = 1062
            Height = 468
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 1062
            ExplicitHeight = 468
            inherited lblQry: TLabel
              Width = 1062
              Height = 21
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitWidth = 1323
              ExplicitHeight = 21
            end
            inherited Splitter2: TSplitter
              Top = 297
              Width = 1062
              Height = 4
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              MinSize = 38
              ExplicitLeft = 0
              ExplicitTop = 405
              ExplicitWidth = 1323
              ExplicitHeight = 4
            end
            inherited GroupBox1: TGroupBox
              Top = 21
              Width = 1062
              Height = 276
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitTop = 21
              ExplicitWidth = 1323
              ExplicitHeight = 384
              inherited DBGrid1: TDBGrid
                Left = 3
                Top = 19
                Width = 1312
                Height = 316
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Font.Height = -14
                Font.Name = 'Tahoma'
                ParentFont = False
                TitleFont.Height = -14
                TitleFont.Name = 'Tahoma'
              end
            end
            inherited GroupBox3: TGroupBox
              Top = 301
              Width = 1062
              Height = 167
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Font.Height = -14
              Font.Name = 'Tahoma'
              ParentFont = False
              ExplicitTop = 409
              ExplicitWidth = 1323
              ExplicitHeight = 167
              inherited DBGrid2: TDBGrid
                Left = 3
                Top = 19
                Width = 1312
                Height = 146
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Font.Height = -14
                Font.Name = 'Tahoma'
                ParentFont = False
                TitleFont.Height = -14
                TitleFont.Name = 'Tahoma'
              end
            end
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1070
        Height = 51
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1068
        object btnFetchDeltas: TButton
          Left = 8
          Top = 6
          Width = 123
          Height = 38
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Fetch Delta'
          TabOrder = 0
        end
        object btnPostDeltas: TButton
          Left = 139
          Top = 6
          Width = 124
          Height = 38
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Post Deltas'
          TabOrder = 1
        end
        object cbShowMerged: TCheckBox
          Left = 290
          Top = 10
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Show Merged'
          TabOrder = 2
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 551
        Width = 1070
        Height = 36
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 548
        ExplicitWidth = 1068
        object Label3: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 125
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Insert'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 138
          Top = 5
          Width = 125
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Updates'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label5: TLabel
          AlignWithMargins = True
          Left = 270
          Top = 5
          Width = 125
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'Deletes'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 403
          Top = 5
          Width = 155
          Height = 17
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Alignment = taCenter
          Caption = 'Updated Fields are in Bold'
        end
      end
    end
  end
  object bsCategory: TBindSourceDB
    DataSet = dtmdLocalDB.qryCategory
    ScopeMappings = <>
    Left = 816
    Top = 248
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = bsCategory
      FieldName = 'CATEGORY_NAME'
      Control = lvCategory
      FillExpressions = <
        item
          SourceMemberName = 'DESCRIPTION'
          ControlMemberName = 'SubItems[0]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = bsMedicines
      FieldName = 'MEDICINE_NAME'
      Control = lvMedicine
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToFieldPATIENT_ADVICE: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bsMedicines
      FieldName = 'PATIENT_ADVICE'
      Control = MemoPATIENT_ADVICE
      Track = False
    end
    object LinkControlToFieldSPECIAL_WARNINGS: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bsMedicines
      FieldName = 'SPECIAL_WARNINGS'
      Control = MemoSPECIAL_WARNINGS
      Track = False
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = bsCustomer
      FieldName = 'CUSTOMER_NAME'
      Control = lvCustomers
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToFieldCUSTOMER_ADDRESS: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bsCustomer
      FieldName = 'CUSTOMER_ADDRESS'
      Control = MemoCUSTOMER_ADDRESS
      Track = False
    end
    object LinkControlToFieldCUSTOMER_NAME: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bsCustomer
      FieldName = 'CUSTOMER_NAME'
      Control = LabeledEditCUSTOMER_NAME
      Track = True
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bsPharmacy
      FieldName = 'PHARMACY_NAME'
      Control = edtSite
      Track = True
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = bsMedicines
      FieldName = 'MEDICINE_NAME'
      Component = Label2
      ComponentProperty = 'Caption'
    end
  end
  object bsMedicines: TBindSourceDB
    DataSet = dtmdLocalDB.qryMedicines
    ScopeMappings = <>
    Left = 784
    Top = 336
  end
  object bsCustomer: TBindSourceDB
    DataSet = dtmdLocalDB.qryCustomer
    ScopeMappings = <>
    Left = 776
    Top = 176
  end
  object bsOrder: TBindSourceDB
    DataSet = dtmdLocalDB.qryOrders
    ScopeMappings = <>
    Left = 776
    Top = 392
  end
  object bsPharmacy: TBindSourceDB
    DataSet = dtmdLocalDB.qryPharmacy
    ScopeMappings = <>
    Left = 776
    Top = 232
  end
end
