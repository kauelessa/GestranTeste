object FormReportVendas: TFormReportVendas
  Left = 0
  Top = 0
  Caption = 'FormReportVendas'
  ClientHeight = 810
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RepVendas: TRLReport
    Left = -2
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DataSourceVendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'RELAT'#211'RIO DE VENDAS'
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 73
      BandType = btHeader
      object RLLabel6: TRLLabel
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
      object RLLabel9: TRLLabel
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
      object RLLabel11: TRLLabel
        Left = 84
        Top = 40
        Width = 68
        Height = 16
        Caption = '01/01/2000'
      end
      object RLLabel12: TRLLabel
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
      object RLLabel13: TRLLabel
        Left = 179
        Top = 40
        Width = 68
        Height = 16
        Caption = '31/12/2050'
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 111
      Width = 718
      Height = 152
      DataFields = 'VENDEDOR'
      object RLBand3: TRLBand
        Left = 0
        Top = 70
        Width = 718
        Height = 21
        object RLDBText1: TRLDBText
          Left = 16
          Top = 4
          Width = 84
          Height = 16
          DataField = 'ID_DA_VENDA'
          DataSource = DataSourceVendas
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 112
          Top = 2
          Width = 103
          Height = 16
          DataField = 'VALOR_DA_VENDA'
          DataSource = DataSourceVendas
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 256
          Top = 2
          Width = 115
          Height = 16
          DataField = 'VALOR_DO_DESCONTO'
          DataSource = DataSourceVendas
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 423
          Top = 2
          Width = 104
          Height = 16
          DataField = 'VALOR_TOTAL'
          DataSource = DataSourceVendas
          Text = ''
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 42
        BandType = btHeader
        object RLDraw1: TRLDraw
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
        object RLLabel7: TRLLabel
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
        object RLDBText6: TRLDBText
          Left = 111
          Top = 13
          Width = 77
          Height = 16
          DataField = 'VENDEDOR'
          DataSource = DataSourceVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 42
        Width = 718
        Height = 28
        BandType = btColumnHeader
        object RLLabel1: TRLLabel
          Left = 16
          Top = 2
          Width = 65
          Height = 16
          Caption = 'ID VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 112
          Top = 2
          Width = 97
          Height = 16
          Caption = 'VALOR VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 256
          Top = 2
          Width = 76
          Height = 16
          Caption = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 423
          Top = 2
          Width = 58
          Height = 16
          Caption = 'L'#205'QUIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 6
          Top = 16
          Width = 712
          Height = 7
          DrawKind = dkLine
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 91
        Width = 718
        Height = 50
        BandType = btSummary
        object RLLabel2: TRLLabel
          Left = 16
          Top = 16
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
        object RLDraw2: TRLDraw
          Left = 3
          Top = 38
          Width = 712
          Height = 7
          DrawKind = dkLine
        end
        object RLDBResult1: TRLDBResult
          Left = 112
          Top = 16
          Width = 103
          Height = 16
          DataFormula = 'SUM(VALOR_DA_VENDA)'
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 256
          Top = 16
          Width = 115
          Height = 16
          DataFormula = 'SUM(VALOR_DO_DESCONTO)'
          DataSource = DataSourceVendas
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 425
          Top = 16
          Width = 192
          Height = 16
          DataFormula = 'SUM(VALOR_TOTAL)'
          DataSource = DataSourceVendas
          Text = ''
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 263
      Width = 718
      Height = 48
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 73
        Top = 22
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 23
        Top = 22
        Width = 44
        Height = 16
        Caption = 'P'#225'gina'
      end
      object RLLabel10: TRLLabel
        Left = 505
        Top = 22
        Width = 113
        Height = 16
        Caption = 'Data da impress'#227'o'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 256
        Top = 22
        Width = 157
        Height = 16
        Info = itTitle
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 624
        Top = 22
        Width = 73
        Height = 16
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 3
        Top = 15
        Width = 712
        Height = 7
        DrawKind = dkLine
      end
    end
  end
  object DataSourceVendas: TDataSource
    DataSet = DMDados.qryVendas
    Left = 86
    Top = 536
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'Kaue'
    FileName = 'Vendas.pdf'
    DisplayName = 'Documento PDF'
    Left = 518
    Top = 400
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 188
    Top = 330
  end
end
