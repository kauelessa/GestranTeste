program TesteGestran;

uses
  Vcl.Forms,
  View.Main in '..\Views\View.Main.pas' {FormMain},
  DAO.Connection in '..\DAO\DAO.Connection.pas' {DMConnection: TDataModule},
  DAO.Dados in '..\DAO\DAO.Dados.pas' {DMDados: TDataModule},
  Report.Vendas in '..\Reports\Report.Vendas.pas' {FormReportVendas},
  Report.Totais in '..\Reports\Report.Totais.pas' {FormReportTotais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDMConnection, DMConnection);
  Application.CreateForm(TDMDados, DMDados);
  Application.CreateForm(TFormReportTotais, FormReportTotais);
  Application.Run;
end.
