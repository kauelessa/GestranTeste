unit View.Main;

interface

uses
  DAO.Dados,
  Data.DB,
  Report.Totais,
  Report.Vendas,
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;

type
  TFormMain = class(TForm)
    pnlFundo: TPanel;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlCenter: TPanel;
    DBGridVendas: TDBGrid;
    DataSourceVendas: TDataSource;
    edtDataIni: TDateTimePicker;
    edtDataFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSourceVendedor: TDataSource;
    cbVendedor: TDBLookupComboBox;
    chbVendedor: TCheckBox;
    btnRelatorio: TButton;
    btnRelatorioTotais: TButton;
    procedure chbVendedorClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnRelatorioTotaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.btnRelatorioClick(Sender: TObject);
var
  sVendedor: string;
begin
  sVendedor := '';
  try
    if not chbVendedor.Checked then
      sVendedor := cbVendedor.Text;

    if not Assigned(FormReportVendas) then
      FormReportVendas := TFormReportVendas.Create(Self);

    FormReportVendas.ReportOpen(edtDataIni.Date, edtDataFim.Date, sVendedor);
  finally
    FreeAndNil(FormReportVendas);
  end;
end;

procedure TFormMain.btnRelatorioTotaisClick(Sender: TObject);
var
  sVendedor: string;
begin
  sVendedor := '';
  try
    if not chbVendedor.Checked then
      sVendedor := cbVendedor.Text;

    if not Assigned(FormReportTotais) then
      FormReportTotais := TFormReportTotais.Create(Self);

    FormReportTotais.ReportOpen(edtDataIni.Date, edtDataFim.Date, sVendedor);
  finally
    FreeAndNil(FormReportTotais);
  end;
end;

procedure TFormMain.chbVendedorClick(Sender: TObject);
begin
  cbVendedor.Enabled := not TCheckBox(Sender).Checked;
end;

end.
