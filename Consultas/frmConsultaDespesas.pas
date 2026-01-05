unit frmConsultaDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, Buttons,
  StdCtrls, TeeProcs, TeEngine, Chart, DbChart, Series, TeeFunci;

type
  Tfrm_ConsultaDespesas = class(Tfrm_ConsultaModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnConfimarSelecao: TSpeedButton;
    cbxListaContas: TDBLookupComboBox;
    edtDtInicio: TDateTimePicker;
    edtDtFim: TDateTimePicker;
    sqlContas: TSQLQuery;
    sqlContasCODIGO: TIntegerField;
    sqlContasCONTA: TStringField;
    sqlContasCOD_USUARIO: TIntegerField;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasCODIGO: TIntegerField;
    cdsContasCONTA: TStringField;
    cdsContasCOD_USUARIO: TIntegerField;
    dsContas: TDataSource;
    actConfirmar: TAction;
    qryConsultaMES: TStringField;
    qryConsultaANO: TStringField;
    qryConsultaSUBTOTAL: TFMTBCDField;
    cdsConsultaMES: TStringField;
    cdsConsultaANO: TStringField;
    qryDetalheMes: TSQLQuery;
    dspDetalheMes: TDataSetProvider;
    cdsDetalheMes: TClientDataSet;
    dsDetalheMes: TDataSource;
    qryDetalheMesDATA: TDateField;
    qryDetalheMesLCTO: TStringField;
    qryDetalheMesDESCRICAO: TStringField;
    qryDetalheMesCATEGORIA: TStringField;
    qryDetalheMesVALOR: TFMTBCDField;
    cdsDetalheMesDATA: TDateField;
    cdsDetalheMesLCTO: TStringField;
    cdsDetalheMesDESCRICAO: TStringField;
    cdsDetalheMesCATEGORIA: TStringField;
    cdsDetalheMesVALOR: TFMTBCDField;
    qryConsultaREF: TStringField;
    cdsConsultaREF: TStringField;
    cdsConsultaSUBTOTAL: TFMTBCDField;
    actAvancaPaginaGragico: TAction;
    actPaginaAnteriorGrafico: TAction;
    cdsConsultaMESEXTENSO: TStringField;
    qryGraficoMes: TSQLQuery;
    dspGraficoMes: TDataSetProvider;
    cdsGraficoMes: TClientDataSet;
    dsGraficoMes: TDataSource;
    qryGraficoMesMES: TSmallintField;
    qryGraficoMesANO: TSmallintField;
    qryGraficoMesCATEGORIA: TStringField;
    qryGraficoMesTOTAL: TFMTBCDField;
    cdsGraficoMesMES: TSmallintField;
    cdsGraficoMesANO: TSmallintField;
    cdsGraficoMesCATEGORIA: TStringField;
    cdsGraficoMesTOTAL: TFMTBCDField;
    qryReceitas: TSQLQuery;
    dspReceitas: TDataSetProvider;
    cdsReceitas: TClientDataSet;
    dsReceitas: TDataSource;
    qryReceitasMES: TSmallintField;
    qryReceitasANO: TSmallintField;
    qryReceitasREF: TStringField;
    qryReceitasTOTAL_MES: TFMTBCDField;
    cdsReceitasMES: TSmallintField;
    cdsReceitasANO: TSmallintField;
    cdsReceitasREF: TStringField;
    cdsReceitasTOTAL_MES: TFMTBCDField;
    qryInvestimentos: TSQLQuery;
    dspInvestimentos: TDataSetProvider;
    cdsInvestimentos: TClientDataSet;
    dsInvestimentos: TDataSource;
    qryInvestimentosMES: TSmallintField;
    qryInvestimentosANO: TSmallintField;
    qryInvestimentosREF: TStringField;
    qryInvestimentosTOTAL_MES: TFMTBCDField;
    cdsInvestimentosMES: TSmallintField;
    cdsInvestimentosANO: TSmallintField;
    cdsInvestimentosREF: TStringField;
    cdsInvestimentosTOTAL_MES: TFMTBCDField;
    qryDespCategoriaPeriodo: TSQLQuery;
    dspDespCategoriaPeriodo: TDataSetProvider;
    cdsDespCategoriaPeriodo: TClientDataSet;
    dsDespCategoriaPeriodo: TDataSource;
    qryDespCategoriaPeriodoCATEGORIA: TStringField;
    cdsDespCategoriaPeriodoCATEGORIA: TStringField;
    qryDespCategoriaPeriodoTOTAL_PERIODO: TFMTBCDField;
    cdsDespCategoriaPeriodoTOTAL_PERIODO: TFMTBCDField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl5: TPanel;
    dbcht1: TDBChart;
    LineSeries1: TPieSeries;
    ts2: TTabSheet;
    pnl4: TPanel;
    dbcht2: TDBChart;
    btnPaginaAnteriorGrafico: TSpeedButton;
    btnAvancaPaginaGragico: TSpeedButton;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    ts3: TTabSheet;
    pnl3: TPanel;
    dbcht3: TDBChart;
    PieSeries1: THorizBarSeries;
    pnl1: TPanel;
    pnl6: TPanel;
    dbgrd2: TDBGrid;
    pnlTotal: TPanel;
    lblTotalDespesas: TLabel;
    lblTotalPoupado: TLabel;
    lblTotalReceitas: TLabel;
    actFechar: TAction;
    btnPaginaAnteriorGrafico1: TSpeedButton;
    btnAvancaPaginaGragico1: TSpeedButton;
    actAvancaCategoria: TAction;
    actRetornaCategoria: TAction;
    procedure actConfirmarExecute(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure actAvancaPaginaGragicoExecute(Sender: TObject);
    procedure actPaginaAnteriorGraficoExecute(Sender: TObject);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actAvancaCategoriaExecute(Sender: TObject);
    procedure actRetornaCategoriaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaDespesas: Tfrm_ConsultaDespesas;

implementation

uses uUsuario, DateUtils, Math, u_lib_funcoes;

{$R *.dfm}

procedure Tfrm_ConsultaDespesas.actConfirmarExecute(Sender: TObject);
begin
  inherited;

  if cbxListaContas.Text = '' then
     begin
       Application.MessageBox('Selecione uma conta!!', 'Atenção!', 0 + MB_ICONASTERISK);
       Exit;
     end;

  try
    qryConsulta.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
    qryConsulta.ParamByName('DATAINI').AsDate:= edtDtInicio.Date;
    qryConsulta.ParamByName('DATAFIM').AsDate:= edtDtFim.Date;
    cdsConsulta.Close;
    cdsConsulta.Open;

    qryReceitas.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
    qryReceitas.ParamByName('DATAINI').AsDate := edtDtInicio.Date;
    qryReceitas.ParamByName('DATAFIM').AsDate := edtDtFim.Date;
    cdsReceitas.Close;
    cdsReceitas.Open;

    qryInvestimentos.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
    qryInvestimentos.ParamByName('DATAINI').AsDate := edtDtInicio.Date;
    qryInvestimentos.ParamByName('DATAFIM').AsDate := edtDtFim.Date;
    cdsInvestimentos.Close;
    cdsInvestimentos.Open;

    qryDespCategoriaPeriodo.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
    qryDespCategoriaPeriodo.ParamByName('DATAINI').AsDate := edtDtInicio.Date;
    qryDespCategoriaPeriodo.ParamByName('DATAFIM').AsDate := edtDtFim.Date;
    cdsDespCategoriaPeriodo.Close;
    cdsDespCategoriaPeriodo.Open;

    if not cdsConsulta.IsEmpty then
      begin
        lblTotalDespesas.Caption:= '  Total Despesas: ' + FormatCurr('R$ 0.00#.##', SomaAplicacoes(cdsConsulta, 'SUBTOTAL'));
        lblTotalReceitas.Caption:= '  Total Receitas: ' + FormatCurr('R$ 0.00#.##', SomaAplicacoes(cdsReceitas, 'TOTAL_MES'));
        lblTotalPoupado.Caption:= '  Total Poupado: ' + FormatCurr('R$ 0.00#.##', SomaAplicacoes(cdsInvestimentos, 'TOTAL_MES'));
      end;
  except

  end;
end;

procedure Tfrm_ConsultaDespesas.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dbcht1.Title.Text.Clear;

  qryDetalheMes.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
  qryDetalheMes.ParamByName('MES').AsInteger := StrToInt(cdsConsultaMES.AsString);
  qryDetalheMes.ParamByName('ANO').AsInteger := StrToInt(cdsConsultaANO.AsString);
  cdsDetalheMes.Close;
  cdsDetalheMes.Open;

  qryGraficoMes.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
  qryGraficoMes.ParamByName('MES').AsInteger := StrToInt(cdsConsultaMES.AsString);
  qryGraficoMes.ParamByName('ANO').AsInteger := StrToInt(cdsConsultaANO.AsString);
  cdsGraficoMes.Close;
  cdsGraficoMes.Open;

  dbcht1.Title.Text.Add(cdsConsultaREF.AsString);
end;

procedure Tfrm_ConsultaDespesas.actAvancaPaginaGragicoExecute(
  Sender: TObject);
begin
  inherited;
  dbcht2.NextPage;
end;

procedure Tfrm_ConsultaDespesas.actPaginaAnteriorGraficoExecute(
  Sender: TObject);
begin
  inherited;
  dbcht2.PreviousPage;
end;

procedure Tfrm_ConsultaDespesas.cdsConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  case StrToInt(cdsConsultaMES.AsString) of
    1: cdsConsultaMESEXTENSO.Value:= 'Jan';
    2: cdsConsultaMESEXTENSO.Value:= 'Fev';
    3: cdsConsultaMESEXTENSO.Value:= 'Mar';
    4: cdsConsultaMESEXTENSO.Value:= 'Abr';
    5: cdsConsultaMESEXTENSO.Value:= 'Mai';
    6: cdsConsultaMESEXTENSO.Value:= 'Jun';
    7: cdsConsultaMESEXTENSO.Value:= 'Jul';
    8: cdsConsultaMESEXTENSO.Value:= 'Ago';
    9: cdsConsultaMESEXTENSO.Value:= 'Set';
   10: cdsConsultaMESEXTENSO.Value:= 'Out';
   11: cdsConsultaMESEXTENSO.Value:= 'Nov';
   12: cdsConsultaMESEXTENSO.Value:= 'Dez';
  end;
end;

procedure Tfrm_ConsultaDespesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree; 
  frm_ConsultaDespesas:= Nil;
end;

procedure Tfrm_ConsultaDespesas.FormCreate(Sender: TObject);
begin
  inherited;
  sqlContas.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsContas.Close;
  cdsContas.Open;

  if cdsContas.IsEmpty then
     begin
       Application.MessageBox('Você possui contas cadastradas!', '', 0 + MB_ICONASTERISK);
       PostMessage(Handle, WM_CLOSE, 0, 0);
     end
  else
    begin
      edtDtInicio.Date:= StartOfTheYear(Today);
      edtDtFim.Date:= Today;
      pgc1.ActivePageIndex:= 0;
    end;
end;

procedure Tfrm_ConsultaDespesas.actAvancaCategoriaExecute(Sender: TObject);
begin
  inherited;
  dbcht3.NextPage;
end;

procedure Tfrm_ConsultaDespesas.actRetornaCategoriaExecute(
  Sender: TObject);
begin
  inherited;
  dbcht3.PreviousPage
end;

end.
