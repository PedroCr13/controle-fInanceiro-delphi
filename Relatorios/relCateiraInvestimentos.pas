unit relCateiraInvestimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, relModelo, FMTBcd, SqlExpr, Provider, DB, DBClient, RLReport;

type
  Trel_RelatorioCarteiraInvestimentos = class(Trel_RelatorioModelo)
    qryRelatorioAPLICACAO: TStringField;
    qryRelatorioVALOR: TFMTBCDField;
    qryRelatorioPERCENTUAL: TFMTBCDField;
    cdsRelatorioAPLICACAO: TStringField;
    cdsRelatorioVALOR: TFMTBCDField;
    cdsRelatorioPERCENTUAL: TFMTBCDField;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rel_RelatorioCarteiraInvestimentos: Trel_RelatorioCarteiraInvestimentos;

implementation

{$R *.dfm}

end.
