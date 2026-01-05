unit relAplicacoesSintetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, relModelo, FMTBcd, SqlExpr, Provider, DB, DBClient, RLReport;

type
  Trel_RelatorioAplicacoesSintetico = class(Trel_RelatorioModelo)
    RLBand5: TRLBand;
    qryRelatorioCODAPLIC: TIntegerField;
    qryRelatorioCOD_AGENTE: TIntegerField;
    qryRelatorioDESC_AGENTE: TStringField;
    qryRelatorioCOD_TPAPLIC: TIntegerField;
    qryRelatorioDESC_APLICACAO: TStringField;
    qryRelatorioCOD_CATEGORIA: TIntegerField;
    qryRelatorioDESC_CATEGORIA: TStringField;
    qryRelatorioDATA_INICIAL: TDateField;
    qryRelatorioDATA_FINAL: TDateField;
    qryRelatorioDESC_INDICE: TStringField;
    qryRelatorioVLR_TAXA: TFMTBCDField;
    qryRelatorioVALOR_INICIAL: TFMTBCDField;
    qryRelatorioVALOR_FINAL: TFMTBCDField;
    cdsRelatorioCODAPLIC: TIntegerField;
    cdsRelatorioCOD_AGENTE: TIntegerField;
    cdsRelatorioDESC_AGENTE: TStringField;
    cdsRelatorioCOD_TPAPLIC: TIntegerField;
    cdsRelatorioDESC_APLICACAO: TStringField;
    cdsRelatorioCOD_CATEGORIA: TIntegerField;
    cdsRelatorioDESC_CATEGORIA: TStringField;
    cdsRelatorioDATA_INICIAL: TDateField;
    cdsRelatorioDATA_FINAL: TDateField;
    cdsRelatorioDESC_INDICE: TStringField;
    cdsRelatorioVLR_TAXA: TFMTBCDField;
    cdsRelatorioVALOR_INICIAL: TFMTBCDField;
    cdsRelatorioVALOR_FINAL: TFMTBCDField;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    RLBand6: TRLBand;
    lblTotalAplicado: TRLLabel;
    lblTotalAtualizado: TRLLabel;
    qryRelatorioULTIMA_DATA_REF: TStringField;
    cdsRelatorioULTIMA_DATA_REF: TStringField;
    qryRelatorioSTATUS: TStringField;
    cdsRelatorioSTATUS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rel_RelatorioAplicacoesSintetico: Trel_RelatorioAplicacoesSintetico;

implementation

{$R *.dfm}

end.
