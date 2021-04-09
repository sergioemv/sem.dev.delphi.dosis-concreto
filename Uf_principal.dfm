object f_principal: Tf_principal
  Left = 63
  Top = 120
  Width = 664
  Height = 420
  Caption = 'Dosificaciones'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 51
    Width = 122
    Height = 13
    Caption = 'Resistencia Caracteristica'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 424
    Top = 184
    Width = 96
    Height = 13
    Caption = 'Tam. Max. Nom. AG'
  end
  object Label5: TLabel
    Left = 344
    Top = 288
    Width = 83
    Height = 13
    Caption = 'Modulo Finura AF'
    FocusControl = DBEdit5
  end
  object Label8: TLabel
    Left = 240
    Top = 184
    Width = 75
    Height = 13
    Caption = '% Absorsion AG'
    FocusControl = DBEdit8
  end
  object Label11: TLabel
    Left = 48
    Top = 288
    Width = 61
    Height = 13
    Caption = 'Peso Esp AF'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 48
    Top = 184
    Width = 63
    Height = 13
    Caption = 'Peso Esp AG'
    FocusControl = DBEdit12
  end
  object Label15: TLabel
    Left = 264
    Top = 104
    Width = 29
    Height = 13
    Caption = '% Aire'
    FocusControl = DBEdit15
  end
  object Label14: TLabel
    Left = 344
    Top = 104
    Width = 93
    Height = 13
    Caption = 'Peso Esp. Cemento'
  end
  object Label9: TLabel
    Left = 248
    Top = 288
    Width = 73
    Height = 13
    Caption = '% Absorsion AF'
    FocusControl = DBEdit3
  end
  object Label13: TLabel
    Left = 336
    Top = 184
    Width = 81
    Height = 13
    Caption = '% Reduccion AG'
    FocusControl = DBEdit9
  end
  object Label16: TLabel
    Left = 16
    Top = 272
    Width = 83
    Height = 13
    Caption = 'Agregado Fino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 16
    Top = 168
    Width = 99
    Height = 13
    Caption = 'Agregado Grueso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 16
    Top = 150
    Width = 633
    Height = 9
  end
  object Bevel2: TBevel
    Left = 16
    Top = 259
    Width = 633
    Height = 9
  end
  object Bevel3: TBevel
    Left = 240
    Top = 64
    Width = 9
    Height = 81
    Shape = bsRightLine
  end
  object Label10: TLabel
    Left = 203
    Top = 237
    Width = 119
    Height = 13
    Caption = 'Peso U. Compactado AG'
    FocusControl = DBEdit13
  end
  object Label19: TLabel
    Left = 136
    Top = 186
    Width = 89
    Height = 13
    Caption = 'Peso U. Suelto AG'
    FocusControl = DBEdit14
  end
  object Label20: TLabel
    Left = 136
    Top = 288
    Width = 87
    Height = 13
    Caption = 'Peso U. Suelto AF'
    FocusControl = DBEdit16
  end
  object Label6: TLabel
    Left = 16
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Procedencia'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 42
    Top = 237
    Width = 82
    Height = 13
    Caption = 'Modulo finura AG'
    FocusControl = DBEdit2
  end
  object Label18: TLabel
    Left = 16
    Top = 102
    Width = 64
    Height = 13
    Caption = 'Asentamiento'
    FocusControl = DBLookupComboBox1
  end
  object Label2: TLabel
    Left = 15
    Top = 67
    Width = 58
    Height = 13
    Caption = 'Condiciones'
    FocusControl = DBLookupComboBox2
  end
  object Label3: TLabel
    Left = 48
    Top = 336
    Width = 73
    Height = 13
    Caption = '% Humedad AF'
    FocusControl = DBEdit4
  end
  object Label21: TLabel
    Left = 444
    Top = 236
    Width = 75
    Height = 13
    Caption = '% Humedad AG'
    FocusControl = DBEdit7
  end
  object Label22: TLabel
    Left = 464
    Top = 64
    Width = 81
    Height = 13
    Caption = 'Tipo de Cemento'
    FocusControl = DBLookupComboBox3
  end
  object Label23: TLabel
    Left = 464
    Top = 104
    Width = 104
    Height = 13
    Caption = 'Consistencia Montoya'
    FocusControl = DBLookupComboBox4
  end
  object Bevel4: TBevel
    Left = 448
    Top = 64
    Width = 9
    Height = 81
    Shape = bsRightLine
  end
  object Label24: TLabel
    Left = 536
    Top = 184
    Width = 94
    Height = 13
    Caption = 'Tam. Max. Montoya'
    FocusControl = DBEdit17
  end
  object DBEdit1: TDBEdit
    Left = 159
    Top = 47
    Width = 72
    Height = 21
    DataField = 'Fck'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 264
    Top = 81
    Width = 97
    Height = 17
    Caption = 'Sin Aire'
    DataField = 'Aire'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 3
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBEdit5: TDBEdit
    Left = 344
    Top = 304
    Width = 65
    Height = 21
    DataField = 'ModfinuraAF'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 15
  end
  object DBEdit8: TDBEdit
    Left = 240
    Top = 200
    Width = 81
    Height = 21
    DataField = 'PorcabsAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 344
    Top = 120
    Width = 73
    Height = 21
    DataField = 'PesoEspCem'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 5
  end
  object DBEdit11: TDBEdit
    Left = 48
    Top = 304
    Width = 73
    Height = 21
    DataField = 'PesoEspAF'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 12
  end
  object DBEdit12: TDBEdit
    Left = 48
    Top = 203
    Width = 73
    Height = 21
    DataField = 'PesoEspAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 6
  end
  object DBEdit15: TDBEdit
    Left = 264
    Top = 119
    Width = 65
    Height = 21
    DataField = 'PorAire'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 304
    Width = 81
    Height = 21
    DataField = 'PorcabsAF'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 14
  end
  object DBEdit9: TDBEdit
    Left = 336
    Top = 200
    Width = 81
    Height = 21
    DataField = 'PorcReducAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 9
  end
  object DBEdit13: TDBEdit
    Left = 336
    Top = 232
    Width = 81
    Height = 21
    DataField = 'PesoUnComAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 11
  end
  object DBEdit14: TDBEdit
    Left = 136
    Top = 202
    Width = 89
    Height = 21
    DataField = 'PesoUnSueAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 7
  end
  object DBEdit16: TDBEdit
    Left = 136
    Top = 304
    Width = 89
    Height = 21
    DataField = 'PesoUnSueAF'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 13
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 22
    Width = 401
    Height = 21
    DataField = 'Procedencia'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 0
  end
  object DBCheckBox2: TDBCheckBox
    Left = 264
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Rodado'
    DataField = 'Clase'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 232
    Width = 57
    Height = 21
    DataField = 'ModfinuraAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 118
    Width = 225
    Height = 21
    DataField = 'AsentDesc'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 16
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 81
    Width = 224
    Height = 21
    DataField = 'CondDesc'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 17
  end
  object DBComboBox1: TDBComboBox
    Left = 424
    Top = 200
    Width = 97
    Height = 21
    Style = csDropDownList
    DataField = 'Tammax'
    DataSource = DataModule2.Ds_entrada
    ItemHeight = 13
    Items.Strings = (
      '9.5 '
      '12.5'
      '19'
      '25'
      '37.5'
      '50'
      '75'
      '150')
    TabOrder = 18
  end
  object DBEdit4: TDBEdit
    Left = 136
    Top = 336
    Width = 89
    Height = 21
    DataField = 'PorcHumedAF'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 19
  end
  object DBEdit7: TDBEdit
    Left = 536
    Top = 232
    Width = 49
    Height = 21
    DataField = 'PorcHumedAG'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 20
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 464
    Top = 80
    Width = 185
    Height = 21
    DataField = 'TIPOCEMDESC'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 21
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 464
    Top = 120
    Width = 185
    Height = 21
    DataField = 'CONSDESC'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 22
  end
  object DBEdit17: TDBEdit
    Left = 536
    Top = 200
    Width = 113
    Height = 21
    DataField = 'TTAMMAX'
    DataSource = DataModule2.Ds_entrada
    TabOrder = 23
  end
  object Panel1: TPanel
    Left = 344
    Top = 344
    Width = 305
    Height = 41
    TabOrder = 24
    object DBNavigator1: TDBNavigator
      Left = 112
      Top = 8
      Width = 168
      Height = 25
      DataSource = DataModule2.Ds_entrada
      VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbCancel]
      Flat = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 14
      Top = 8
      Width = 83
      Height = 25
      Caption = 'Resultados'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 272
    Top = 352
  end
end
