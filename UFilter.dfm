object FFilter: TFFilter
  Left = 307
  Top = 90
  Width = 688
  Height = 404
  Caption = 'Cari Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 41
    Align = alTop
    Caption = 'CARI BARANG'
    Color = clGradientActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 248
    Width = 672
    Height = 118
    Align = alBottom
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 154
      Height = 16
      Caption = 'Cari Barang Berdasarkan   '
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 32
      Width = 249
      Height = 81
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 16
        Width = 105
        Height = 17
        Caption = 'Kode Barang'
        TabOrder = 0
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 104
        Top = 16
        Width = 105
        Height = 17
        Caption = 'Nama Barang'
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
    object Edit1: TEdit
      Left = 24
      Top = 80
      Width = 193
      Height = 24
      TabOrder = 1
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 672
    Height = 207
    Align = alClient
    DataSource = dsFilter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kd_barang'
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Barang'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kd_kelompok'
        Title.Alignment = taCenter
        Title.Caption = 'Kd Kelompok'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kd_merk'
        Title.Alignment = taCenter
        Title.Caption = 'Kd Merk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kd_satuan'
        Title.Alignment = taCenter
        Title.Caption = 'Kd Satuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_satuan'
        Title.Alignment = taCenter
        Title.Caption = 'Harga Satuan'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Keuntungan(%)'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_jual'
        Title.Alignment = taCenter
        Title.Caption = 'Harga Jual'
        Width = 87
        Visible = True
      end>
  end
  object AdsFilter: TADODataSet
    Active = True
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Barang'
    Parameters = <>
    Left = 352
    Top = 296
  end
  object dsFilter: TDataSource
    AutoEdit = False
    DataSet = AdsFilter
    Left = 352
    Top = 264
  end
end
