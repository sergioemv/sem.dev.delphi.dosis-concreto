object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 243
  Top = 167
  Height = 383
  Width = 454
  object revenimiento: TTable
    TableName = 'revenimiento.DB'
    Left = 16
    Top = 8
  end
  object acemento: TTable
    TableName = 'Acemento.DB'
    Left = 120
    Top = 8
    object acementoResistenciaMedia: TFloatField
      FieldName = 'Resistencia Media'
    end
    object acementoSinAire: TFloatField
      FieldName = 'Sin Aire'
    end
    object acementoConAire: TFloatField
      FieldName = 'Con Aire'
    end
  end
  object acexpsev: TTable
    TableName = 'ac-expsev.db'
    Left = 176
    Top = 8
  end
  object Volgrueso: TTable
    TableName = 'Volgrueso.DB'
    Left = 248
    Top = 8
    object VolgruesoTammax: TFloatField
      FieldName = 'Tammax'
    end
    object VolgruesoMAF: TFloatField
      FieldName = 'MAF'
    end
    object VolgruesoValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object PesoEstimado: TTable
    TableName = 'PesoEstimado.DB'
    Left = 304
    Top = 8
    object PesoEstimadoTammax: TFloatField
      FieldName = 'Tammax'
    end
    object PesoEstimadoSinaire: TFloatField
      FieldName = 'Sinaire'
    end
    object PesoEstimadoConaire: TFloatField
      FieldName = 'Conaire'
    end
  end
  object condiciones: TTable
    TableName = 'condiciones.db'
    Left = 104
    Top = 112
    object condicionesCondiciones: TStringField
      FieldName = 'Condiciones'
    end
    object condicionesFactor1: TFloatField
      FieldName = 'Factor1'
    end
    object condicionesFactor2: TFloatField
      FieldName = 'Factor2'
    end
  end
  object entrada: TTable
    OnCalcFields = entradaCalcFields
    TableName = 'entrada.DB'
    Left = 24
    Top = 112
    object entradaCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object entradaFck: TFloatField
      DefaultExpression = '250'
      FieldName = 'Fck'
    end
    object entradaCondiciones: TStringField
      DefaultExpression = #39'MEDIAS'#39
      FieldName = 'Condiciones'
      Required = True
    end
    object entradaExposicion: TStringField
      DefaultExpression = #39'SA 2.5-5.0'#39
      DisplayLabel = 'Asentamiento'
      FieldName = 'Exposicion'
      Required = True
      OnChange = entradaExposicionChange
    end
    object entradaAire: TBooleanField
      DefaultExpression = 'true'
      FieldName = 'Aire'
      ReadOnly = True
    end
    object entradaTammax: TFloatField
      DefaultExpression = '37.5'
      DisplayLabel = 'Tama'#241'o maximo Nominal AG'
      FieldName = 'Tammax'
      OnValidate = entradaTammaxValidate
    end
    object entradaModfinuraAG: TFloatField
      DefaultExpression = '7.13'
      DisplayLabel = 'Modulo finura AF'
      FieldName = 'ModfinuraAG'
      OnValidate = entradaModfinuraAGValidate
    end
    object entradaModfinuraAF: TFloatField
      DefaultExpression = '2.78'
      DisplayLabel = 'Modulo finura AF'
      FieldName = 'ModfinuraAF'
      OnValidate = entradaModfinuraAFValidate
    end
    object entradaPorcabsAG: TFloatField
      DefaultExpression = '2.18'
      DisplayLabel = '% Absorsion AF'
      FieldName = 'PorcabsAG'
      MaxValue = 100
    end
    object entradaPorcabsAF: TFloatField
      DefaultExpression = '.8'
      DisplayLabel = '% Absorsion AF'
      FieldName = 'PorcabsAF'
      MaxValue = 100
    end
    object entradaPesoEspCem: TFloatField
      CustomConstraint = 'x>=3.10 and x<=3.15'
      ConstraintErrorMessage = 
        'El peso especifico del cemento por norma oscila entre 3.10 y 3.1' +
        '5'
      DefaultExpression = '3.12'
      DisplayLabel = 'Peso esp Cem'
      FieldName = 'PesoEspCem'
    end
    object entradaPesoEspAF: TFloatField
      CustomConstraint = 'x>=2 and x<=3'
      ConstraintErrorMessage = 
        'Revise el valor del peso especifico del agregado fin, oscila ent' +
        're 2 y 3'
      DefaultExpression = '2.6'
      DisplayLabel = 'Peso Esp AF'
      FieldName = 'PesoEspAF'
    end
    object entradaPesoEspAG: TFloatField
      CustomConstraint = 'x>=2 and x<=3'
      ConstraintErrorMessage = 
        'Revise el peso especifico del Agregado Grueso , oscila entre 2 y' +
        ' 3'
      DefaultExpression = '2.52'
      DisplayLabel = 'Peso esp. AG'
      FieldName = 'PesoEspAG'
    end
    object entradaPorcReducAG: TFloatField
      DefaultExpression = '8'
      DisplayLabel = '% Reduccion Agua'
      FieldName = 'PorcReducAG'
      MaxValue = 100
    end
    object entradaPorAire: TFloatField
      DisplayLabel = ' % Aire'
      FieldName = 'PorAire'
      MaxValue = 100
    end
    object entradaClase: TBooleanField
      DefaultExpression = 'true'
      DisplayLabel = 'Rodado'
      FieldName = 'Clase'
    end
    object entradaPesoUnComAG: TFloatField
      CustomConstraint = 'x>=1000'
      ConstraintErrorMessage = 'Revise Su Peso Unitario Compactado del Agregado Grueso'
      DefaultExpression = '1808'
      DisplayLabel = 'Peso U. Compactado AF'
      FieldName = 'PesoUnComAG'
      OnValidate = entradaPesoUnSueAGValidate
    end
    object entradaPesoUnSueAG: TFloatField
      CustomConstraint = 'x>=1000'
      ConstraintErrorMessage = 'Revise el valor del Peso Unitario Suelto del Agregado Grueso'
      DefaultExpression = '1530'
      DisplayLabel = 'Peso U. Suelto AG'
      FieldName = 'PesoUnSueAG'
      OnValidate = entradaPesoUnSueAGValidate
    end
    object entradaPesoUnSueAF: TFloatField
      CustomConstraint = 'x>=1000'
      ConstraintErrorMessage = 'Revise el peso unitario suelto del Agregado Fino'
      DefaultExpression = '1653'
      DisplayLabel = 'Peso U. Suelto AF'
      FieldName = 'PesoUnSueAF'
      OnValidate = entradaPesoUnSueAGValidate
    end
    object entradaProcedencia: TStringField
      DefaultExpression = #39'Rio Pirai'#39
      FieldName = 'Procedencia'
      Size = 30
    end
    object entradaAsentDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'AsentDesc'
      LookupDataSet = Exposicion
      LookupKeyFields = 'descripcion'
      LookupResultField = 'descripcion'
      KeyFields = 'Exposicion'
      Lookup = True
    end
    object entradaCondDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'CondDesc'
      LookupDataSet = condiciones
      LookupKeyFields = 'Condiciones'
      LookupResultField = 'Condiciones'
      KeyFields = 'Condiciones'
      Lookup = True
    end
    object entradaAgua1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Agua1'
      DisplayFormat = '# Lt'
      Calculated = True
    end
    object entradafcm: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'fcm'
      DisplayFormat = '# kp/cm2'
      Calculated = True
    end
    object entradaRelAC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RelAC'
      OnValidate = entradaRelACValidate
      DisplayFormat = '#.00'
      Calculated = True
    end
    object entradaCemento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cemento'
      Calculated = True
    end
    object entradaVolGrueso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VolGrueso'
      DisplayFormat = '#.00 m3'
      Calculated = True
    end
    object entradaPesoCemento1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PesoCemento1'
      Calculated = True
    end
    object entradaPorcHumedAG: TFloatField
      DefaultExpression = '2'
      DisplayLabel = '% Humedad AG'
      FieldName = 'PorcHumedAG'
      MaxValue = 100
    end
    object entradaPorcHumedAF: TFloatField
      DefaultExpression = '3'
      DisplayLabel = '% Humedad AF'
      FieldName = 'PorcHumedAF'
      MaxValue = 100
    end
    object entradaVolGruesoN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VolGruesoN'
      DisplayFormat = '#.00 mt3'
      Calculated = True
    end
    object entradaPesoAG: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PesoAG'
      DisplayFormat = '# kg'
      Calculated = True
    end
    object entradaPesoAGN: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PesoAGN'
      DisplayFormat = '# Kg.'
      Calculated = True
    end
    object entradaPesoArena: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PesoArena'
      DisplayFormat = '# Kg'
      Calculated = True
    end
    object entradaPesoArenaN: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PesoArenaN'
      DisplayFormat = '# Kg.'
      Calculated = True
    end
    object entradaVolarena: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Volarena'
      DisplayFormat = '#.000 m3'
      Calculated = True
    end
    object entradaVolarenaN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VolarenaN'
      DisplayFormat = '#.000 m3'
      Calculated = True
    end
    object entradaArena1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Arena1'
      DisplayFormat = '# kg.'
      Calculated = True
    end
    object entradaarena1N: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'arena1N'
      DisplayFormat = '# kg.'
      Calculated = True
    end
    object entradaGrava1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Grava1'
      DisplayFormat = '# Kg.'
      Calculated = True
    end
    object entradaGrava1N: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Grava1N'
      DisplayFormat = '# Kg.'
      Calculated = True
    end
    object entradaAgua2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Agua2'
      DisplayFormat = '# Lt'
      Calculated = True
    end
    object entradaagua2N: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'agua2N'
      DisplayFormat = '# Lt'
      Calculated = True
    end
    object entradaVALORDEK: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VALORDEK'
      DisplayFormat = '#.000'
      Calculated = True
    end
    object entradaLITROS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LITROS'
      DisplayFormat = '# Lt'
      Calculated = True
    end
    object entradaMCEMENTO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MCEMENTO'
      DisplayFormat = '#'
      Calculated = True
    end
    object entradaMGRANULOMETRICO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MGRANULOMETRICO'
      Calculated = True
    end
    object entradaPORCA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PORCA'
      Calculated = True
    end
    object entradaPORG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PORG'
      Calculated = True
    end
    object entradaG1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'G1'
      DisplayFormat = '# Kg'
      Calculated = True
    end
    object entradaG2: TFloatField
      DisplayLabel = 'G2'
      FieldKind = fkCalculated
      FieldName = 'G2|'
      DisplayFormat = '# Kg'
      Calculated = True
    end
    object entradaMARENA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARENA'
      DisplayFormat = '# Kg'
      Calculated = True
    end
    object entradaMGRAVA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MGRAVA'
      DisplayFormat = '# Kg'
      Calculated = True
    end
    object entradaMAGUA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MAGUA'
      DisplayFormat = '# Lt'
      Calculated = True
    end
    object entradaTIPOCEMENTO: TStringField
      DefaultExpression = #39'Portland normal (tipo -350)'#39
      FieldName = 'TIPOCEMENTO'
      Size = 50
    end
    object entradaCONSISTENCIAS: TStringField
      DefaultExpression = #39'Plastica 3-5'#39
      FieldName = 'CONSISTENCIAS'
      Size = 50
    end
    object entradaTIPOCEMDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPOCEMDESC'
      LookupDataSet = ValK
      LookupKeyFields = 'TipoCemento'
      LookupResultField = 'TipoCemento'
      KeyFields = 'TIPOCEMENTO'
      Lookup = True
    end
    object entradaCONSDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'CONSDESC'
      LookupDataSet = consistencia
      LookupKeyFields = 'Consistencias'
      LookupResultField = 'Consistencias'
      KeyFields = 'CONSISTENCIAS'
      Lookup = True
    end
    object entradaRELACM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RELACM'
      DisplayFormat = '#.000'
      Calculated = True
    end
    object entradaMCAGUA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MCAGUA'
      DisplayFormat = '# Lt'
      Calculated = True
    end
    object entradaVOLUARENA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VOLUARENA'
      DisplayFormat = '#.000 m3'
      Calculated = True
    end
    object entradaVOLUGRAVA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VOLUGRAVA'
      DisplayFormat = '#.00 m3'
      Calculated = True
    end
    object entradaVOLUCEMENTO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VOLUCEMENTO'
      Calculated = True
    end
    object entradaVOLUAGUA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VOLUAGUA'
      Calculated = True
    end
    object entradaTTAMMAX: TFloatField
      CustomConstraint = 'x>=10 and x<=80'
      ConstraintErrorMessage = 
        'El limite del tama'#241'o maximo para el metodo de Jimenez Montoya es' +
        'ta entre 20mm y 70mm'
      DefaultExpression = '20'
      DisplayLabel = 'Tama'#241'o Maximo Montoya'
      FieldName = 'TTAMMAX'
    end
  end
  object Ds_entrada: TDataSource
    DataSet = entrada
    Left = 24
    Top = 160
  end
  object Ds_condiciones: TDataSource
    DataSet = condiciones
    Left = 104
    Top = 160
  end
  object Ds_cexpocicion: TDataSource
    DataSet = Exposicion
    Left = 192
    Top = 160
  end
  object Exposicion: TQuery
    SQL.Strings = (
      'Select distinct descripcion from cagua')
    Left = 72
    Top = 16
    object Exposiciondescripcion: TStringField
      FieldName = 'descripcion'
    end
  end
  object Cagua: TTable
    TableName = 'Cagua.DB'
    Left = 192
    Top = 120
    object CaguaTammax: TFloatField
      FieldName = 'Tammax'
    end
    object CaguaDescripcion: TStringField
      FieldName = 'Descripcion'
    end
    object CaguaValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object Fuller: TTable
    TableName = 'fuller.db'
    Left = 368
    Top = 8
    object FullerTammax: TFloatField
      FieldName = 'Tammax'
    end
    object FullerValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object abrams: TTable
    TableName = 'abrams.db'
    TableType = ttParadox
    Left = 368
    Top = 64
    object abramsCemento: TFloatField
      FieldName = 'Cemento'
    end
    object abramsTammax: TFloatField
      FieldName = 'Tammax'
    end
    object abramsValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object CMachaca: TTable
    TableName = 'consistencia_machacado.db'
    Left = 376
    Top = 136
    object CMachacaConsistencias: TStringField
      FieldName = 'Consistencias'
      Size = 50
    end
    object CMachacaTammax: TFloatField
      FieldName = 'Tammax'
    end
    object CMachacaValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object CRodado: TTable
    TableName = 'consistencia_rodado.DB'
    TableType = ttParadox
    Left = 376
    Top = 192
    object CRodadoConsistencias: TStringField
      FieldName = 'Consistencias'
      Size = 50
    end
    object CRodadoTammax: TFloatField
      FieldName = 'Tammax'
    end
    object CRodadoValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object ValK: TTable
    TableName = 'Valoresdek.DB'
    Left = 312
    Top = 64
    object ValKTipoCemento: TStringField
      FieldName = 'TipoCemento'
      Size = 50
    end
    object ValKRodado: TFloatField
      FieldName = 'Rodado'
    end
    object ValKMachacado: TFloatField
      FieldName = 'Machacado'
    end
  end
  object consistencia: TQuery
    SQL.Strings = (
      'Select distinct consistencias from consistencia_machacado')
    Left = 280
    Top = 128
    object consistenciaconsistencias: TStringField
      FieldName = 'consistencias'
      Size = 50
    end
  end
  object Qabrams: TQuery
    SQL.Strings = (
      'select valor from abrams '
      'where tammax = :ptam and'
      'cemento = :pcem')
    Left = 24
    Top = 240
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ptam'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcem'
        ParamType = ptInput
      end>
    object Qabramsvalor: TFloatField
      FieldName = 'valor'
    end
  end
end
