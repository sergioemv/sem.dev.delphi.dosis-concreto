object f_resultado: Tf_resultado
  Left = 219
  Top = 299
  Width = 536
  Height = 460
  Caption = 'Resultados'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 513
    Height = 121
    Caption = 'ACI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 24
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Volumenes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label2: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label3: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label4: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText1: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'Agua1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText2: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'Volarena'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText3: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'VolGrueso'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText4: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'Cemento'
        DataSource = DataModule2.Ds_entrada
      end
    end
    object GroupBox5: TGroupBox
      Left = 184
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label6: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label7: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label8: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText5: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'Agua1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText6: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'PesoArena'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText7: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'PesoAG'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText8: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'Cemento'
        DataSource = DataModule2.Ds_entrada
      end
    end
    object GroupBox6: TGroupBox
      Left = 344
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Peso Corregido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label9: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label10: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label11: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label12: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText9: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'Agua2'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText10: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'Arena1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText11: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'Grava1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText12: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'Cemento'
        DataSource = DataModule2.Ds_entrada
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 400
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 144
    Width = 513
    Height = 121
    Caption = 'Nagashiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 24
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Volumenes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label13: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label14: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label15: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label16: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText13: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'Agua1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText14: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'VolarenaN'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText15: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'VolGruesoN'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText16: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'Cemento'
        DataSource = DataModule2.Ds_entrada
      end
    end
    object GroupBox7: TGroupBox
      Left = 184
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label17: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label18: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label19: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label20: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText17: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'Agua1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText18: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'PesoArenaN'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText19: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'PesoAGN'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText20: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'Cemento'
        DataSource = DataModule2.Ds_entrada
      end
    end
    object GroupBox8: TGroupBox
      Left = 344
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Peso Corregido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label21: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label22: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label23: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label24: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText21: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'agua2N'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText22: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'arena1N'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText23: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'Grava1N'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText24: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'Cemento'
        DataSource = DataModule2.Ds_entrada
      end
    end
  end
  object GroupBox13: TGroupBox
    Left = 7
    Top = 272
    Width = 513
    Height = 121
    Caption = 'J. Montoya'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 3
    object GroupBox14: TGroupBox
      Left = 24
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Volumenes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label37: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label38: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label39: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label40: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText37: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'LITROS'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText38: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'VOLUARENA'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText39: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'VOLUGRAVA'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText40: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'MCEMENTO'
        DataSource = DataModule2.Ds_entrada
      end
    end
    object GroupBox15: TGroupBox
      Left = 184
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label41: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label42: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label43: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label44: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText41: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'LITROS'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText42: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'G1'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText43: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'G2|'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText44: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'MCEMENTO'
        DataSource = DataModule2.Ds_entrada
      end
    end
    object GroupBox16: TGroupBox
      Left = 344
      Top = 16
      Width = 153
      Height = 89
      Caption = 'Peso Corregido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label45: TLabel
        Left = 26
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Agua'
      end
      object Label46: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Arena'
      end
      object Label47: TLabel
        Left = 24
        Top = 48
        Width = 29
        Height = 13
        Caption = 'Grava'
      end
      object Label48: TLabel
        Left = 11
        Top = 64
        Width = 42
        Height = 13
        Caption = 'Cemento'
      end
      object DBText45: TDBText
        Left = 64
        Top = 17
        Width = 65
        Height = 14
        DataField = 'MCAGUA'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText46: TDBText
        Left = 64
        Top = 33
        Width = 65
        Height = 14
        DataField = 'MARENA'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText47: TDBText
        Left = 64
        Top = 49
        Width = 65
        Height = 14
        DataField = 'MGRAVA'
        DataSource = DataModule2.Ds_entrada
      end
      object DBText48: TDBText
        Left = 64
        Top = 65
        Width = 65
        Height = 14
        DataField = 'MCEMENTO'
        DataSource = DataModule2.Ds_entrada
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 174
    Top = 400
    Width = 83
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object PrintDialog1: TPrintDialog
    Left = 440
    Top = 400
  end
end
