object FormReportTotais: TFormReportTotais
  Left = 0
  Top = 0
  Caption = 'FormReportTotais'
  ClientHeight = 758
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RepVendasAgrupada: TRLReport
    Left = 2
    Top = 3
    Width = 794
    Height = 1123
    DataSource = DataSourceTotais
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'RELAT'#211'RIO DE VENDAS'
    object RLBand7: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      object RLLabel14: TRLLabel
        Left = 224
        Top = 3
        Width = 241
        Height = 24
        Caption = 'RELAT'#211'RIO DE VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 16
        Top = 40
        Width = 58
        Height = 16
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 84
        Top = 40
        Width = 68
        Height = 16
        Caption = '01/01/2000'
      end
      object RLLabel17: TRLLabel
        Left = 158
        Top = 40
        Width = 12
        Height = 16
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 179
        Top = 40
        Width = 68
        Height = 16
        Caption = '31/12/2050'
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 111
      Width = 718
      Height = 118
      DataFields = 'VENDEDOR'
      object RLBand8: TRLBand
        Left = 0
        Top = 70
        Width = 718
        Height = 21
        object RLDBText7: TRLDBText
          Left = 96
          Top = 2
          Width = 105
          Height = 16
          DataField = 'TOTAL_VENDAS'
          DataSource = DataSourceTotais
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 240
          Top = 2
          Width = 132
          Height = 16
          DataField = 'TOTAL_DESCONTOS'
          DataSource = DataSourceTotais
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 407
          Top = 2
          Width = 102
          Height = 16
          DataField = 'TOTAL_LIQUIDO'
          DataSource = DataSourceTotais
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 553
          Top = 2
          Width = 74
          Height = 16
          DataField = 'COMISSAO'
          DataSource = DataSourceTotais
          Text = ''
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 42
        BandType = btHeader
        object RLDraw5: TRLDraw
          Left = 3
          Top = 6
          Width = 712
          Height = 30
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Brush.Color = clMedGray
          Pen.Style = psClear
          Transparent = False
        end
        object RLLabel19: TRLLabel
          Left = 16
          Top = 13
          Width = 75
          Height = 16
          Caption = 'VENDEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 111
          Top = 13
          Width = 77
          Height = 16
          DataField = 'VENDEDOR'
          DataSource = DataSourceTotais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 42
        Width = 718
        Height = 28
        BandType = btColumnHeader
        object RLLabel21: TRLLabel
          Left = 96
          Top = 2
          Width = 104
          Height = 16
          Caption = 'TOTAL VENDAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 240
          Top = 2
          Width = 132
          Height = 16
          Caption = 'TOTAL DESCONTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 407
          Top = 2
          Width = 105
          Height = 16
          Caption = 'TOTAL L'#205'QUIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 553
          Top = 3
          Width = 75
          Height = 16
          Caption = 'COMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 288
      Width = 718
      Height = 48
      BandType = btFooter
      object RLSystemInfo4: TRLSystemInfo
        Left = 73
        Top = 22
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLLabel25: TRLLabel
        Left = 23
        Top = 22
        Width = 44
        Height = 16
        Caption = 'P'#225'gina'
      end
      object RLLabel26: TRLLabel
        Left = 505
        Top = 22
        Width = 113
        Height = 16
        Caption = 'Data da impress'#227'o'
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 256
        Top = 22
        Width = 157
        Height = 16
        Info = itTitle
        Text = ''
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 624
        Top = 22
        Width = 73
        Height = 16
        Text = ''
      end
      object RLDraw8: TRLDraw
        Left = 3
        Top = 15
        Width = 712
        Height = 7
        DrawKind = dkLine
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 229
      Width = 718
      Height = 59
      BandType = btColumnFooter
      object RLLabel24: TRLLabel
        Left = 16
        Top = 34
        Width = 52
        Height = 16
        Caption = 'TOTAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 3
        Top = 24
        Width = 712
        Height = 7
        DrawKind = dkLine
      end
      object RLDBResult4: TRLDBResult
        Left = 96
        Top = 34
        Width = 105
        Height = 16
        DataFormula = 'SUM(TOTAL_VENDAS)'
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 240
        Top = 34
        Width = 129
        Height = 16
        DataFormula = 'SUM(TOTAL_DESCONTOS)'
        DataSource = DataSourceTotais
        Text = ''
      end
      object RLDBResult6: TRLDBResult
        Left = 407
        Top = 34
        Width = 105
        Height = 16
        DataFormula = 'SUM(TOTAL_LIQUIDO)'
        DataSource = DataSourceTotais
        Text = ''
      end
      object RLDBResult7: TRLDBResult
        Left = 553
        Top = 34
        Width = 75
        Height = 16
        DataFormula = 'SUM(COMISSAO)'
        DataSource = DataSourceTotais
        Text = ''
      end
    end
  end
  object DataSourceTotais: TDataSource
    DataSet = DMDados.qryTotais
    Left = 102
    Top = 478
  end
end
