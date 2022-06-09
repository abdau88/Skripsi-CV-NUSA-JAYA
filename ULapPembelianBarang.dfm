object FLapPembelian: TFLapPembelian
  Left = 241
  Top = 215
  Width = 616
  Height = 485
  Caption = 'Laporan Pembelian'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    Align = alTop
    Caption = 'LAPORAN PEMBELIAN BARANG'
    Color = clGradientActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 88
    Width = 600
    Height = 359
    Align = alBottom
    Color = clSkyBlue
    ParentColor = False
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 596
      Height = 342
      Align = alClient
      DataSource = dsLapBeli
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'no_faktur_beli'
          Title.Alignment = taCenter
          Title.Caption = 'No Faktur'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tgl_faktur'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Suplier'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamat'
          Title.Alignment = taCenter
          Title.Caption = 'Alamat'
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kd_barang'
          Title.Alignment = taCenter
          Title.Caption = 'Kd Barang'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama_barang'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Barang'
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jumlah_harga_beli'
          Title.Alignment = taCenter
          Title.Caption = 'Jumlah Harga'
          Width = 79
          Visible = True
        end>
    end
    object QuickRep1: TQuickRep
      Left = -160
      Top = -16
      Width = 816
      Height = 1056
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = AdsLapBeli
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Letter
      Page.Values = (
        127.000000000000000000
        2794.000000000000000000
        127.000000000000000000
        2159.000000000000000000
        127.000000000000000000
        127.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = Inches
      Zoom = 100
      object QRBand1: TQRBand
        Left = 48
        Top = 48
        Width = 720
        Height = 110
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clMedGray
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          291.041666666666700000
          1905.000000000000000000)
        BandType = rbTitle
        object QRLabel1: TQRLabel
          Left = 200
          Top = 10
          Width = 295
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            82.020833333333340000
            529.166666666666800000
            26.458333333333330000
            780.520833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'LAPORAN PEMBELIAN BARANG'
          Color = clMedGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 16
        end
        object QRLabel2: TQRLabel
          Left = 270
          Top = 40
          Width = 154
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            82.020833333333340000
            714.375000000000000000
            105.833333333333300000
            407.458333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CV. NUSA JAYA '
          Color = clMedGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 16
        end
        object QRLabel3: TQRLabel
          Left = 150
          Top = 70
          Width = 419
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            82.020833333333340000
            396.875000000000000000
            185.208333333333300000
            1108.604166666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'K e b o n d a l e m   P l a z a   B l o k  C / V'
          Color = clMedGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 16
        end
      end
      object QRGroup1: TQRGroup
        Left = 48
        Top = 158
        Width = 720
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          132.291666666666700000
          1905.000000000000000000)
        Master = QuickRep1
        ReprintOnNewPage = False
        object QRLabel4: TQRLabel
          Left = 90
          Top = 20
          Width = 58
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            238.125000000000000000
            52.916666666666660000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No Faktur'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = 0
          Top = 20
          Width = 46
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            0.000000000000000000
            52.916666666666660000
            121.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tanggal'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel6: TQRLabel
          Left = 190
          Top = 20
          Width = 62
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            502.708333333333400000
            52.916666666666660000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Kd Barang'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 260
          Top = 20
          Width = 80
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            687.916666666666800000
            52.916666666666660000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nama Barang'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel8: TQRLabel
          Left = 410
          Top = 20
          Width = 41
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            1084.791666666667000000
            52.916666666666660000
            108.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Suplier'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 620
          Top = 20
          Width = 80
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            1640.416666666667000000
            52.916666666666660000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Jumlah Harga'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel15: TQRLabel
          Left = 520
          Top = 20
          Width = 42
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            1375.833333333333000000
            52.916666666666660000
            111.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Jumlah'
          Color = clSilver
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object QRBand2: TQRBand
        Left = 48
        Top = 208
        Width = 720
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          105.833333333333300000
          1905.000000000000000000)
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 90
          Top = 10
          Width = 81
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            238.125000000000000000
            26.458333333333330000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'no_faktur_beli'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 0
          Top = 10
          Width = 54
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            0.000000000000000000
            26.458333333333330000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'tgl_faktur'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 190
          Top = 10
          Width = 61
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            502.708333333333400000
            26.458333333333330000
            161.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'kd_barang'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 260
          Top = 10
          Width = 79
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            687.916666666666800000
            26.458333333333330000
            209.020833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'nama_barang'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 410
          Top = 10
          Width = 33
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            1084.791666666667000000
            26.458333333333330000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'nama'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 640
          Top = 10
          Width = 105
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            1693.333333333333000000
            26.458333333333330000
            277.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'jumlah_harga_beli'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText7: TQRDBText
          Left = 530
          Top = 10
          Width = 71
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            1402.291666666667000000
            26.458333333333330000
            187.854166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clSilver
          DataSet = AdsLapBeli
          DataField = 'jumlah_item'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 600
    Height = 47
    Align = alClient
    Color = clSkyBlue
    ParentColor = False
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 304
      Top = 16
      Width = 23
      Height = 22
      Caption = 'Go'
      OnClick = SpeedButton1Click
    end
    object BitBtn2: TBitBtn
      Left = 376
      Top = 11
      Width = 97
      Height = 30
      Caption = 'Preview'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
    end
    object Edit1: TEdit
      Left = 168
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnClick = ComboBox1Click
      Items.Strings = (
        'Kode Barang'
        'Nama Barang')
    end
  end
  object AdsPembelian: TADODataSet
    Active = True
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Pembelian'
    Parameters = <>
    Left = 56
  end
  object AdsLapBeli: TADODataSet
    Active = True
    Connection = FMenu.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from QLapBeli'
    Parameters = <>
    Left = 88
  end
  object dsPembelian: TDataSource
    AutoEdit = False
    DataSet = AdsPembelian
    Left = 56
    Top = 32
  end
  object dsLapBeli: TDataSource
    AutoEdit = False
    DataSet = AdsLapBeli
    Left = 88
    Top = 32
  end
end
