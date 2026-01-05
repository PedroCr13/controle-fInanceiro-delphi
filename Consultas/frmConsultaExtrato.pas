unit frmConsultaExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Buttons;

type
  Tfrm_ConsultaExtratoBancario = class(Tfrm_ConsultaModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbxListaContas: TDBLookupComboBox;
    edtDtInicio: TDateTimePicker;
    Label2: TLabel;
    edtDtFim: TDateTimePicker;
    Label3: TLabel;
    btnConfimarSelecao: TSpeedButton;
    actConfirmarData: TAction;
    sqlContas: TSQLQuery;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    sqlContasCODIGO: TIntegerField;
    sqlContasCONTA: TStringField;
    sqlContasCOD_USUARIO: TIntegerField;
    cdsContasCODIGO: TIntegerField;
    cdsContasCONTA: TStringField;
    cdsContasCOD_USUARIO: TIntegerField;
    qryConsultaCOD_LCTO: TIntegerField;
    qryConsultaDATA_MOV: TDateField;
    qryConsultaHISTORICO_MOV: TStringField;
    qryConsultaDESCRICAO: TStringField;
    qryConsultaCATEGORIA: TStringField;
    qryConsultaVALOR_MOV: TFMTBCDField;
    qryConsultaTPLCTO_MOV: TStringField;
    qryConsultaSALDO_MOV: TFMTBCDField;
    qryConsultaSALDO_POS_NEG: TStringField;
    cdsConsultaCOD_LCTO: TIntegerField;
    cdsConsultaDATA_MOV: TDateField;
    cdsConsultaHISTORICO_MOV: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaCATEGORIA: TStringField;
    cdsConsultaVALOR_MOV: TFMTBCDField;
    cdsConsultaTPLCTO_MOV: TStringField;
    cdsConsultaSALDO_MOV: TFMTBCDField;
    cdsConsultaSALDO_POS_NEG: TStringField;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    edtPesquisa: TEdit;
    grbtCampos: TRadioGroup;
    btnLimparPesquisa: TSpeedButton;
    actLimpar: TAction;
    actAdicionar: TAction;
    SpeedButton1: TSpeedButton;
    actEditar: TAction;
    btnAlterarLcto: TSpeedButton;
    SpeedButton2: TSpeedButton;
    actImportarTxt: TAction;
    btnAddConta: TSpeedButton;
    actAddConta: TAction;
    actCompromisos: TAction;
    btnCompromissos: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure actConfirmarDataExecute(Sender: TObject);
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actLimparExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actImportarTxtExecute(Sender: TObject);
    procedure actAddContaExecute(Sender: TObject);
    procedure actCompromisosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaExtratoBancario: Tfrm_ConsultaExtratoBancario;

implementation

uses frmCadastroMovimentacaoBacnaria, frmModeloCadastro, uUsuario,
  u_FRM_ImportaExtratoArquivo, DateUtils, frmConsultaContasBancarias,
  frmCadastroContaBancaria, dlgCompromissos;


{$R *.dfm}

procedure Tfrm_ConsultaExtratoBancario.FormCreate(Sender: TObject);
begin
  inherited;
  sqlContas.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsContas.Close;
  cdsContas.Open;

  edtDtInicio.Date:= StartOfTheMonth(Today);
  edtDtFim.Date:= Today;
end;

procedure Tfrm_ConsultaExtratoBancario.actConfirmarDataExecute(
  Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
  qryConsulta.ParamByName('INICIO').AsDate:= edtDtInicio.Date;
  qryConsulta.ParamByName('FIM').AsDate:= edtDtFim.Date;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaExtratoBancario.edtPesquisaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';
  
  case grbtCampos.ItemIndex of
    0:// hitorico
    begin
      cdsConsulta.Filter:= 'HISTORICO_MOV LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');
    end;

    1://Descricao
    begin
      cdsConsulta.Filter:= 'DESCRICAO LIKE ' +QuotedStr('%' + edtPesquisa.Text + '%');
    end;

    2://Categoria
    begin
      cdsConsulta.Filter:= 'CATEGORIA LIKE' + QuotedStr('%' + edtPesquisa.Text + '%');
    end;
  end;

  cdsConsulta.Filtered:= True;

end;

procedure Tfrm_ConsultaExtratoBancario.actLimparExecute(Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

procedure Tfrm_ConsultaExtratoBancario.actAdicionarExecute(
  Sender: TObject);
begin
  inherited;
  if cbxListaContas.Text = '' then
    begin
      Application.MessageBox('Selecione uma conta!', 'Atenção!', 0 + MB_ICONASTERISK);
      exit;
    end;

  if cdsContas.IsEmpty then
    begin
      Application.MessageBox('Não há conta cadastrada! Cadastre uma conta pra usar esta opção!', 'Atenção!', 0 + MB_ICONASTERISK);
      exit;
    end;

  if cdsConsulta.IsEmpty then
    begin
      Application.MessageBox('Selecione uma conta!', 'Atenção!', 0 + MB_ICONASTERISK);
      exit;
    end;

  with Tfrm_CadastroMovimentacaoBancaria.Create(nil) do
    try
      CodigoConta:= self.cdsContasCODIGO.AsInteger;
      ShowModal;
    finally
      FreeAndNil(frm_CadastroMovimentacaoBancaria);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaExtratoBancario.actEditarExecute(Sender: TObject);
begin
  inherited;
  
  if cdsConsulta.IsEmpty then
    begin
      Application.MessageBox('Selecione uma conta!', 'Atenção!', 0 + MB_ICONASTERISK);
      exit;
    end;

  if cdsConsultaCOD_LCTO.AsInteger < 0 then exit;

  with Tfrm_CadastroMovimentacaoBancaria.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCOD_LCTO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroMovimentacaoBancaria);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaExtratoBancario.actImportarTxtExecute(
  Sender: TObject);
begin
  inherited;
  with TFRM_ImportaExtratoArquivo.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(FRM_ImportaExtratoArquivo);
      cdsConsulta.Close;
      cdsConsulta.Open;

      if cbxListaContas.KeyValue < 1 then
        begin
          cdsContas.Close;
          cdsContas.Open;
        end;
    end;
end;

procedure Tfrm_ConsultaExtratoBancario.actAddContaExecute(Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroContaBacaria.Create(nil) do
    try
      ShowModal;

    finally
      FreeAndNil(frm_CadastroContaBacaria);
    end;

  cdsContas.Close;
  cdsContas.Open;
end;

procedure Tfrm_ConsultaExtratoBancario.actCompromisosExecute(
  Sender: TObject);
begin
  inherited;

  with TdlgDialogoCompromissos.Create(nil) do
    try
      CodigoConta:= self.cdsContasCODIGO.AsInteger;
      fitrarCompromissos;
      ShowModal;
    finally
      FreeAndNil(dlgDialogoCompromissos);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

end.
