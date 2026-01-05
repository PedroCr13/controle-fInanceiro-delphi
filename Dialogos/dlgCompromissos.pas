unit dlgCompromissos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, Grids, DBGrids, StdCtrls, ComCtrls, DateUtils,
  DBCtrls;

type
  TdlgDialogoCompromissos = class(TdlgDialogoModelo)
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDATA_CADASTRO: TDateField;
    cdsConsultaDATA_EFETIVACAO: TDateField;
    cdsConsultaCONTA: TIntegerField;
    cdsConsultaCATEGORIA: TIntegerField;
    cdsConsultaVALOR: TFMTBCDField;
    cdsConsultaLCTO: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaDATA_CADASTRO: TDateField;
    qryConsultaDATA_EFETIVACAO: TDateField;
    qryConsultaCONTA: TIntegerField;
    qryConsultaCATEGORIA: TIntegerField;
    qryConsultaCATEGORIA_1: TStringField;
    qryConsultaVALOR: TFMTBCDField;
    qryConsultaLCTO: TStringField;
    qryConsultaDESCRICAO: TStringField;
    cdsConsultaCATEGORIA_1: TStringField;
    qryConsultaSTATUS_1: TStringField;
    cdsConsultaSTATUS_1: TStringField;
    btnConfirmar1: TSpeedButton;
    actAdicionar: TAction;
    btnCancelar1: TSpeedButton;
    actEfetivar: TAction;
    pnlFiltro: TPanel;
    qryConsultaSTATUS: TIntegerField;
    cdsConsultaSTATUS: TIntegerField;
    pnl2: TPanel;
    lblTotalCreditosPrevistas: TLabel;
    lblTotalDebitosPrevistos: TLabel;
    lbl1: TLabel;
    dtpDtInicio: TDateTimePicker;
    lbl2: TLabel;
    dtpDtFim: TDateTimePicker;
    actFiltrarPeriodo: TAction;
    btnFiltrarPeriodo: TSpeedButton;
    sqlStatusCompromisso: TSQLQuery;
    dspStatusCompromisso: TDataSetProvider;
    cdsStatusCompromisso: TClientDataSet;
    dsStatusCompromisso: TDataSource;
    sqlStatusCompromissoCODIGO: TIntegerField;
    sqlStatusCompromissoSTATUS: TStringField;
    cdsStatusCompromissoCODIGO: TIntegerField;
    cdsStatusCompromissoSTATUS: TStringField;
    dblkcbbFiltrarStatus: TDBLookupComboBox;
    qryConsultaVALOR_REALIZADO: TFMTBCDField;
    cdsConsultaVALOR_REALIZADO: TFMTBCDField;
    qryResumoCompromissos: TSQLQuery;
    dspResumoCompromissos: TDataSetProvider;
    cdsResumoCompromissos: TClientDataSet;
    dsResumoCompromissos: TDataSource;
    qryResumoCompromissosCATEGORIA: TStringField;
    qryResumoCompromissosPREVISTO: TFMTBCDField;
    qryResumoCompromissosREALIZADO: TFMTBCDField;
    qryResumoCompromissosLCTO: TStringField;
    cdsResumoCompromissosCATEGORIA: TStringField;
    cdsResumoCompromissosPREVISTO: TFMTBCDField;
    cdsResumoCompromissosREALIZADO: TFMTBCDField;
    cdsResumoCompromissosLCTO: TStringField;
    dbgrd2: TDBGrid;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure actConfirmarExecute(Sender: TObject);
    procedure actEfetivarExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure actFiltrarPeriodoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SomaCreditosEDebitos();
  public
    CodigoConta: Integer;
    procedure fitrarCompromissos;
  end;

var
  dlgDialogoCompromissos: TdlgDialogoCompromissos;

implementation

uses u_lib_funcoes, dmConexao, dlgEfetivaCompromisso,
  frmCadastroCompromissos, lib_Types, frmModeloCadastro;

{$R *.dfm}

{ TdlgDialogoCompromissos }

procedure TdlgDialogoCompromissos.fitrarCompromissos;
begin
  qryConsulta.ParamByName('CONTA').AsInteger:= CodigoConta;
  qryConsulta.ParamByName('CODIGOSTATUS').AsInteger:= dblkcbbFiltrarStatus.KeyValue;
  qryConsulta.ParamByName('DATA_INICIO').AsDate:= dtpDtInicio.Date;
  qryConsulta.ParamByName('DATA_FINAL').AsDate:= dtpDtFim.Date;
  cdsConsulta.Close;
  cdsConsulta.Open;

  qryResumoCompromissos.ParamByName('CONTA').AsInteger:= CodigoConta;
  //qryResumoCompromissos.ParamByName('CODIGOSTATUS').AsInteger:= dblkcbbFiltrarStatus.KeyValue;
  qryResumoCompromissos.ParamByName('DATA_INICIO').AsDate:= dtpDtInicio.Date;
  qryResumoCompromissos.ParamByName('DATA_FINAL').AsDate:= dtpDtFim.Date;
  cdsResumoCompromissos.Close;
  cdsResumoCompromissos.Open;

  SomaCreditosEDebitos;
end;

procedure TdlgDialogoCompromissos.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TdlgDialogoCompromissos.actEfetivarExecute(Sender: TObject);
begin
  inherited;
  if cdsConsulta.IsEmpty then
    begin
      Application.MessageBox('Não há compromissos para efetivar!', 'Atenção!', 0 + MB_ICONASTERISK);
      exit;
    end;

  if cdsConsultaSTATUS.AsInteger = 2 then
    begin
      Application.MessageBox('Compromisso já está com status efetivado!', 'Atenção!', 0 + MB_ICONWARNING);
      exit;
    end;

  if cdsConsultaDATA_EFETIVACAO.Value > Today then
    begin
      if Application.MessageBox(PChar('Evento previsto para ' +
        DateToStr(cdsConsultaDATA_EFETIVACAO.Value) + '. Continuar mesmo assim?'),
        'Atenção!', 4 + MB_ICONQUESTION) = ID_NO then
        Exit;
    end;

  with TdlgDialogoEfetivaCompromisso.Create(nil) do
    try
      CodigoCompromisso:= cdsConsultaCODIGO.AsInteger;
      DataCompromisso:= cdsConsultaDATA_EFETIVACAO.AsDateTime;
      ValorCompromisso:= cdsConsultaVALOR.AsCurrency;
      ShowModal;
    finally
       FreeAndNil(dlgDialogoEfetivaCompromissos);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TdlgDialogoCompromissos.actAdicionarExecute(Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroCompromisso.Create(nil) do
    try
      CodigoConta:= self.CodigoConta;
      ShowModal;
    finally
      FreeAndNil(frm_CadastroCompromisso);
    end;

    fitrarCompromissos;
end;

procedure TdlgDialogoCompromissos.dbgrd1DblClick(Sender: TObject);
begin
  inherited;
  if cdsConsulta.IsEmpty then
    begin
      Application.MessageBox('Não há dados para editar!!', 'Atenção!', 0 + MB_ICONASTERISK);
      exit;
    end;

  with Tfrm_CadastroCompromisso.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroCompromisso);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TdlgDialogoCompromissos.actFiltrarPeriodoExecute(
  Sender: TObject);
begin
  inherited;
  fitrarCompromissos;
end;

procedure TdlgDialogoCompromissos.FormCreate(Sender: TObject);
begin
  inherited;
  cdsStatusCompromisso.Close;
  cdsStatusCompromisso.Open;

  dblkcbbFiltrarStatus.KeyValue:= 1;

  dtpDtInicio.Date:= StartOfTheMonth(Today);
  dtpDtFim.Date:= EndOfTheMonth(Today);
end;

procedure TdlgDialogoCompromissos.SomaCreditosEDebitos;
begin
  if not cdsConsulta.IsEmpty then
    begin
      lblTotalDebitosPrevistos.Caption:= 'Débitos: ' + FormatCurr('R$ 0.0.0' ,SomaOcorrencias('D', cdsConsulta));
      lblTotalCreditosPrevistas.Caption:= 'Créditos: ' + FormatCurr('R$ 0.0.0' ,SomaOcorrencias('C', cdsConsulta));
    end;
end;

end.
