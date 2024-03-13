unit DAO.Dados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DAO.Connection;

type
  TDMDados = class(TDataModule)
    qryVendas: TFDQuery;
    qryVendedor: TFDQuery;
    qryVendedorID: TLargeintField;
    qryVendedorVENDEDOR: TWideStringField;
    qryTotais: TFDQuery;
    qryTotaisVENDEDOR: TWideStringField;
    qryTotaisTOTAL_VENDAS: TFMTBCDField;
    qryTotaisTOTAL_DESCONTOS: TFMTBCDField;
    qryTotaisTOTAL_LIQUIDO: TFMTBCDField;
    qryTotaisCOMISSAO: TFMTBCDField;
    qryVendasId_da_Venda: TByteField;
    qryVendasData: TDateField;
    qryVendasVendedor: TWideStringField;
    qryVendasVALOR_DA_VENDA: TBCDField;
    qryVendasVALOR_DO_DESCONTO: TBCDField;
    qryVendasVALOR_TOTAL: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDados: TDMDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMDados.DataModuleCreate(Sender: TObject);
begin
  qryVendas.Open;
  qryVendedor.Open;
  qryTotais.Open;
end;

end.
