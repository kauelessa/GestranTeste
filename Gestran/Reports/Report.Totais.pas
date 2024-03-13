unit Report.Totais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DAO.Dados, RLReport;

type
  TFormReportTotais = class(TForm)
    DataSourceTotais: TDataSource;
    RepVendasAgrupada: TRLReport;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand8: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand9: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText10: TRLDBText;
    RLBand10: TRLBand;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand12: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLDraw8: TRLDraw;
    RLBand11: TRLBand;
    RLLabel24: TRLLabel;
    RLDraw7: TRLDraw;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReportOpen(ADtIni, ADtFim: TDate; AVendedor: string = '');
  end;

var
  FormReportTotais: TFormReportTotais;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFormReportTotais.ReportOpen(ADtIni, ADtFim: TDate; AVendedor: string);
begin
  DMDados.qryTotais.Close;
  DMDados.qryTotais.ParamByName('DTINI').AsDate := ADtIni;
  DMDados.qryTotais.ParamByName('DTFIM').AsDate := ADtFim;
  DMDados.qryTotais.MacroByName('COND').AsRaw := '1=1';
  if AVendedor <> '' then
    DMDados.qryTotais.MacroByName('COND').AsRaw := 'V.Vendedor like ''%'+AVendedor+'%''';
  DMDados.qryTotais.Open;
  RepVendasAgrupada.Prepare;
  RepVendasAgrupada.Preview();
end;

end.
