object FormMain: TFormMain
  Left = 916
  Top = 194
  Caption = 'Vendas'
  ClientHeight = 644
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 644
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 816
      Height = 144
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 829
      object Label1: TLabel
        Left = 32
        Top = 56
        Width = 58
        Height = 15
        Caption = 'Data inicial'
      end
      object Label2: TLabel
        Left = 160
        Top = 56
        Width = 50
        Height = 15
        Caption = 'Data final'
      end
      object Label3: TLabel
        Left = 432
        Top = 56
        Width = 50
        Height = 15
        Caption = 'Vendedor'
      end
      object edtDataIni: TDateTimePicker
        Left = 32
        Top = 77
        Width = 105
        Height = 23
        Date = 45363.000000000000000000
        Time = 0.770622129632101900
        TabOrder = 0
      end
      object edtDataFim: TDateTimePicker
        Left = 160
        Top = 77
        Width = 113
        Height = 23
        Date = 45363.000000000000000000
        Time = 0.770622129632101900
        TabOrder = 1
      end
      object cbVendedor: TDBLookupComboBox
        Left = 432
        Top = 77
        Width = 145
        Height = 23
        Enabled = False
        KeyField = 'ID'
        ListField = 'VENDEDOR'
        ListSource = DataSourceVendedor
        TabOrder = 2
      end
      object chbVendedor: TCheckBox
        Left = 295
        Top = 79
        Width = 138
        Height = 17
        Caption = 'Todos os vendedores'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = chbVendedorClick
      end
      object btnRelatorio: TButton
        Left = 648
        Top = 59
        Width = 75
        Height = 57
        Caption = 'Relat'#243'rio Vendas'
        TabOrder = 4
        WordWrap = True
        OnClick = btnRelatorioClick
      end
      object btnRelatorioTotais: TButton
        Left = 729
        Top = 59
        Width = 75
        Height = 57
        Caption = 'Relat'#243'rio Totais'
        TabOrder = 5
        WordWrap = True
        OnClick = btnRelatorioTotaisClick
      end
    end
    object pnlBottom: TPanel
      Left = 1
      Top = 572
      Width = 816
      Height = 71
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 552
      ExplicitWidth = 573
    end
    object pnlCenter: TPanel
      Left = 1
      Top = 145
      Width = 816
      Height = 427
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 184
      ExplicitTop = 400
      ExplicitWidth = 185
      ExplicitHeight = 41
      object DBGridVendas: TDBGrid
        Left = 1
        Top = 1
        Width = 814
        Height = 425
        Align = alClient
        DataSource = DataSourceVendas
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Id_da_Venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_DA_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_DO_DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Visible = True
          end>
      end
    end
  end
  object DataSourceVendas: TDataSource
    DataSet = DMDados.qryVendas
    Left = 761
    Top = 315
  end
  object DataSourceVendedor: TDataSource
    DataSet = DMDados.qryVendedor
    Left = 401
    Top = 1
  end
end
