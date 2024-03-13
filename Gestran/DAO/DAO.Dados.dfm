object DMDados: TDMDados
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object qryVendas: TFDQuery
    Active = True
    Connection = DMConnection.ConBD
    SQL.Strings = (
      'SELECT'
      'V.Id_da_Venda,'
      'V.Data,'
      'V.Vendedor,'
      'CAST(VALOR_DA_VENDA AS NUMERIC(10,2)) AS VALOR_DA_VENDA,'
      'CAST(VALOR_DO_DESCONTO AS NUMERIC(10,2)) AS VALOR_DO_DESCONTO,'
      'CAST(VALOR_TOTAL AS NUMERIC(10,2)) AS VALOR_TOTAL'
      'FROM'
      'vendas V'
      'JOIN (SELECT FN.TOTAL_DESCONTOS, FN.TOTAL_LIQUIDO, '
      '  FN.TOTAL_VENDAS, FN.Vendedor '
      '    FROM FN_TOTAIS(:DTINI,:DTFIM) FN)T '
      '      ON V.Vendedor = T.Vendedor'
      'WHERE !COND'
      'ORDER BY '
      'V.Vendedor,'
      'Data,'
      'Valor_Total ASC')
    Left = 160
    Top = 144
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 18264d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 401768d
      end>
    MacroData = <
      item
        Value = '1=1'
        Name = 'COND'
      end>
    object qryVendasId_da_Venda: TByteField
      FieldName = 'Id_da_Venda'
      Origin = 'Id_da_Venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
      Required = True
    end
    object qryVendasVendedor: TWideStringField
      FieldName = 'Vendedor'
      Origin = 'Vendedor'
      Required = True
      Size = 50
    end
    object qryVendasVALOR_DA_VENDA: TBCDField
      FieldName = 'VALOR_DA_VENDA'
      Origin = 'VALOR_DA_VENDA'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object qryVendasVALOR_DO_DESCONTO: TBCDField
      FieldName = 'VALOR_DO_DESCONTO'
      Origin = 'VALOR_DO_DESCONTO'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object qryVendasVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
  end
  object qryVendedor: TFDQuery
    IndexFieldNames = 'ID'
    Connection = DMConnection.ConBD
    SQL.Strings = (
      'SELECT '
      'ROW_NUMBER() OVER(ORDER BY VENDEDOR ASC) AS ID,'
      'VENDEDOR '
      'FROM VENDAS '
      'GROUP BY VENDEDOR')
    Left = 440
    Top = 152
    object qryVendedorID: TLargeintField
      FieldName = 'ID'
      LookupDataSet = qryVendas
      LookupKeyFields = 'VENDEDOR'
      KeyFields = 'ID'
      Origin = 'ID'
      ReadOnly = True
    end
    object qryVendedorVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
      Size = 50
    end
  end
  object qryTotais: TFDQuery
    Active = True
    Connection = DMConnection.ConBD
    SQL.Strings = (
      'SELECT'
      'V.VENDEDOR,'
      'V.TOTAL_VENDAS,'
      'V.TOTAL_DESCONTOS,'
      'V.TOTAL_LIQUIDO,'
      'CASE '
      'WHEN'
      '(SELECT * FROM VIEW_MAIOR_COMISSAO) = V.TOTAL_LIQUIDO THEN '
      
        #9'( (SELECT [dbo].[FN_COMISSAO]  (V.TOTAL_LIQUIDO,10.0)) + (SELEC' +
        'T [dbo].[FN_COMISSAO]  (V.TOTAL_LIQUIDO,10.0)*20/100) )'
      'WHEN'
      '(SELECT * FROM VIEW_MENOR_COMISSAO) = V.TOTAL_LIQUIDO THEN '
      
        #9'( SELECT [dbo].[FN_COMISSAO] (V.TOTAL_LIQUIDO,5.0))  ELSE (SELE' +
        'CT [dbo].[FN_COMISSAO] (V.TOTAL_LIQUIDO,10.0) ) '
      'END AS COMISSAO'
      'FROM FN_TOTAIS(:DTINI,:DTFIM) V'
      'WHERE !COND')
    Left = 296
    Top = 144
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 18264d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 73050d
      end>
    MacroData = <
      item
        Value = '1=1'
        Name = 'COND'
      end>
    object qryTotaisVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
      Size = 50
    end
    object qryTotaisTOTAL_VENDAS: TFMTBCDField
      FieldName = 'TOTAL_VENDAS'
      Origin = 'TOTAL_VENDAS'
      Precision = 38
      Size = 2
    end
    object qryTotaisTOTAL_DESCONTOS: TFMTBCDField
      FieldName = 'TOTAL_DESCONTOS'
      Origin = 'TOTAL_DESCONTOS'
      Precision = 38
      Size = 2
    end
    object qryTotaisTOTAL_LIQUIDO: TFMTBCDField
      FieldName = 'TOTAL_LIQUIDO'
      Origin = 'TOTAL_LIQUIDO'
      Precision = 38
      Size = 2
    end
    object qryTotaisCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
  end
end
