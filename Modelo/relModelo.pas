unit relModelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  Trel_RelatorioModelo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    rlbDescricao: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    dsRelatorio: TDataSource;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rel_RelatorioModelo: Trel_RelatorioModelo;

implementation

uses dmConexao, uUsuario;

{$R *.dfm}

end.
