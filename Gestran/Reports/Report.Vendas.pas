unit Report.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, DAO.Dados, Data.DB, RLFilters,
  RLPDFFilter, RLParser, RLPreview;

type
  TFormReportVendas = class(TForm)
    RepVendas: TRLReport;
    RLBand1: TRLBand;
    DataSourceVendas: TDataSource;
    RLLabel6: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLBand6: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReportOpen(ADtIni, ADtFim: TDate; AVendedor:string = '');

  end;

var
  FormReportVendas: TFormReportVendas;

implementation

{$R *.dfm}

{ TFormReportVendas }


procedure TFormReportVendas.ReportOpen(ADtIni, ADtFim: TDate;
AVendedor:string = '');
begin
  DMDados.qryVendas.Close;
  DMDados.qryVendas.ParamByName('DTINI').AsDate := ADtIni;
  DMDados.qryVendas.ParamByName('DTFIM').AsDate := ADtFim;
  DMDados.qryVendas.MacroByName('COND').AsRaw := '1=1';
  if AVendedor <> '' then
    DMDados.qryVendas.MacroByName('COND').AsRaw := 'V.Vendedor like ''%'+AVendedor+'%''';
  DMDados.qryVendas.Open;
  RepVendas.Prepare;
  RepVendas.Preview();
end;

end.
