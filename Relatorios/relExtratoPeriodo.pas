unit relExtratoPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, relModelo, FMTBcd, SqlExpr, Provider, DB, DBClient, RLReport;

type
  Trel_RelatorioExtratoPeriodo = class(Trel_RelatorioModelo)
    qryRelatorioCOD_LCTO: TIntegerField;
    qryRelatorioDATA_MOV: TDateField;
    qryRelatorioHISTORICO_MOV: TStringField;
    qryRelatorioDESCRICAO: TStringField;
    qryRelatorioCATEGORIA: TStringField;
    qryRelatorioVALOR_MOV: TFMTBCDField;
    qryRelatorioTPLCTO_MOV: TStringField;
    qryRelatorioSALDO_MOV: TFMTBCDField;
    qryRelatorioSALDO_POS_NEG: TStringField;
    cdsRelatorioCOD_LCTO: TIntegerField;
    cdsRelatorioDATA_MOV: TDateField;
    cdsRelatorioHISTORICO_MOV: TStringField;
    cdsRelatorioDESCRICAO: TStringField;
    cdsRelatorioCATEGORIA: TStringField;
    cdsRelatorioVALOR_MOV: TFMTBCDField;
    cdsRelatorioTPLCTO_MOV: TStringField;
    cdsRelatorioSALDO_MOV: TFMTBCDField;
    cdsRelatorioSALDO_POS_NEG: TStringField;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    rlbCategoria: TRLLabel;
    rltxtCategoria: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rel_RelatorioExtratoPeriodo: Trel_RelatorioExtratoPeriodo;

implementation

{$R *.dfm}

end.
