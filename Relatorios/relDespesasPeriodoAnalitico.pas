unit relDespesasPeriodoAnalitico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, relModelo, FMTBcd, SqlExpr, Provider, DB, DBClient, RLReport,
  DateUtils;

type
  Trel_RelatorioDespesasPeriodo = class(Trel_RelatorioModelo)
    qryRelatorioMES: TStringField;
    qryRelatorioANO: TStringField;
    qryRelatorioSUBTOTAL: TFMTBCDField;
    qryRelatorioREF: TStringField;
    cdsRelatorioMES: TStringField;
    cdsRelatorioANO: TStringField;
    cdsRelatorioSUBTOTAL: TFMTBCDField;
    cdsRelatorioREF: TStringField;
    qryDetalheMes: TSQLQuery;
    qryDetalheMesDATA: TDateField;
    qryDetalheMesLCTO: TStringField;
    qryDetalheMesDESCRICAO: TStringField;
    qryDetalheMesCATEGORIA: TStringField;
    qryDetalheMesVALOR: TFMTBCDField;
    dspDetalheMes: TDataSetProvider;
    cdsDetalheMes: TClientDataSet;
    cdsDetalheMesDATA: TDateField;
    cdsDetalheMesLCTO: TStringField;
    cdsDetalheMesDESCRICAO: TStringField;
    cdsDetalheMesCATEGORIA: TStringField;
    cdsDetalheMesVALOR: TFMTBCDField;
    dsDetalheMes: TDataSource;
    RLSubDetail1: TRLSubDetail;
    RLBand6: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand7: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand5: TRLBand;
    RLLabel7: TRLLabel;
    lblTotalRelatorio: TRLLabel;
    procedure dsRelatorioDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rel_RelatorioDespesasPeriodo: Trel_RelatorioDespesasPeriodo;

implementation

{$R *.dfm}

procedure Trel_RelatorioDespesasPeriodo.dsRelatorioDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  if not cdsRelatorio.IsEmpty then
    begin
      qryDetalheMes.ParamByName('CONTA').AsInteger:= qryRelatorio.Params.ParamValues['CONTA'];
      qryDetalheMes.ParamByName('ANO').AsInteger := cdsRelatorioANO.AsInteger;
      qryDetalheMes.ParamByName('MES').AsInteger:=  cdsRelatorioMES.AsInteger;
      cdsDetalheMes.Close;
      cdsDetalheMes.Open;
    end;
end;

end.
