{
  Esta unit trata exclusivamente da conexão com o banco de dados SQL Server
}

unit DAO.Connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  TDMConnection = class(TDataModule)
    ConBD: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConnection: TDMConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMConnection.DataModuleCreate(Sender: TObject);
begin
  ConBD.DriverName := 'MSSQL';
  ConBD.LoginPrompt := False;
  ConBD.Params.DriverID := 'MSSQL';
  ConBD.Params.Database := 'Gestran_Teste';
  ConBD.Connected := True;

  //Parametrizados em tempo de design
  {
    ConBD.Server := 'localhost';
    ConBD.OSAuthent := True;
  }
end;

end.
