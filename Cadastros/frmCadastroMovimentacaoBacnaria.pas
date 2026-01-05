unit frmCadastroMovimentacaoBacnaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  Tfrm_CadastroMovimentacaoBancaria = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroCONTA: TIntegerField;
    qryCadastroDATA: TDateField;
    qryCadastroVALOR: TFMTBCDField;
    qryCadastroTIPOLCTO: TStringField;
    qryCadastroSALDO: TFMTBCDField;
    qryCadastroDESCRICAO: TStringField;
    qryCadastroCOD_HISTORICO: TIntegerField;
    qryCadastroCOD_CATEGORIA: TIntegerField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroCONTA: TIntegerField;
    cdsCadastroDATA: TDateField;
    cdsCadastroVALOR: TFMTBCDField;
    cdsCadastroTIPOLCTO: TStringField;
    cdsCadastroSALDO: TFMTBCDField;
    cdsCadastroDESCRICAO: TStringField;
    cdsCadastroCOD_HISTORICO: TIntegerField;
    cdsCadastroCOD_CATEGORIA: TIntegerField;
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
    qryCategoria: TSQLQuery;
    qryHistorico: TSQLQuery;
    dspCategoria: TDataSetProvider;
    dspHistorico: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    cdsHistorico: TClientDataSet;
    dsCategoria: TDataSource;
    dsHistorico: TDataSource;
    qryCategoriaCODIGO: TIntegerField;
    qryCategoriaCATEGORIA: TStringField;
    cdsCategoriaCODIGO: TIntegerField;
    cdsCategoriaCATEGORIA: TStringField;
    qryHistoricoCODIGO: TIntegerField;
    qryHistoricoLCTO: TStringField;
    qryHistoricoMOVIMENTO: TStringField;
    cdsHistoricoCODIGO: TIntegerField;
    cdsHistoricoLCTO: TStringField;
    cdsHistoricoMOVIMENTO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    cbbContas: TDBLookupComboBox;
    Label3: TLabel;
    edtData: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    cbbLancamento: TDBComboBox;
    qryCategoriaCREDITO_DEBITO: TStringField;
    cdsCategoriaCREDITO_DEBITO: TStringField;
    qryCategoriaCOD_USUARIO: TIntegerField;
    cdsCategoriaCOD_USUARIO: TIntegerField;
    qryHistoricoCOD_USUARIO: TIntegerField;
    cdsHistoricoCOD_USUARIO: TIntegerField;
    btnAddHistorico: TSpeedButton;
    actAddHistorico: TAction;
    btnAddCategoria: TSpeedButton;
    actAddCategoria: TAction;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure cbbLancamentoChange(Sender: TObject);
    procedure actAddCategoriaExecute(Sender: TObject);
    procedure actAddHistoricoExecute(Sender: TObject);
  private
    { Private declarations }
  public
     CodigoConta: Integer;
  end;

var
  frm_CadastroMovimentacaoBancaria: Tfrm_CadastroMovimentacaoBancaria;

implementation

uses dmConexao, uMovimentacao, uUsuario, DateUtils, frmCadastroCategorias,
  frmCadastroLancamentoContas, Math;

{$R *.dfm}

procedure Tfrm_CadastroMovimentacaoBancaria.FormShow(Sender: TObject);
begin
  inherited;
  sqlContas.ParamByName('USUARIO').AsInteger := UsuarioLogado.Codigo;
  cdsContas.Close;
  cdsContas.Open;

  qryCategoria.ParamByName('USUARIO').AsInteger := UsuarioLogado.Codigo;
  cdsCategoria.Close;
  cdsCategoria.Open;

  qryHistorico.ParamByName('USUARIO').AsInteger := UsuarioLogado.Codigo;
  cdsHistorico.Close;
  cdsHistorico.Open;

  if motivo = mCadastro then
    begin
      qryCadastro.ParamByName('CODIGO').AsInteger:= 0;
    end;

  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroMovimentacaoBancaria.actNovoExecute(
  Sender: TObject);
var M: TMovimentacao;
begin
  inherited;

  M:= TMovimentacao.Create;
  with M do
    try
      cdsCadastroCODIGO.AsInteger:= M.GeraCodigo;
    finally
      FreeAndNil(M);
    end;

   edtData.Text:= DateToStr(Today);

   cdsCadastroCONTA.AsInteger:= CodigoConta;
end;

procedure Tfrm_CadastroMovimentacaoBancaria.cbbLancamentoChange(
  Sender: TObject);
begin
  inherited;
  if cbbLancamento.Text = '' then exit;

  with cdsHistorico do
    begin
      Filtered:= False;
      Filter:= 'MOVIMENTO = ' + QuotedStr(cbbLancamento.Text);
      Filtered:= True;
    end;

    with cdsCategoria do
    begin
      Filtered:= False;
      Filter:= 'CREDITO_DEBITO = ' + QuotedStr(cbbLancamento.Text);

      if cbbLancamento.Text = 'D' then
          Filter:= filter + ' OR CREDITO_DEBITO = ''I'' OR CREDITO_DEBITO = ''R'''
          + ' OR CREDITO_DEBITO = ''N''';

      //lista categorias do tipo "não contabiliza" (não considera o registro D ou C para balanço)
      if cbbLancamento.Text = 'C' then
          Filter:= filter + ' OR CREDITO_DEBITO = ''N''';

      Filtered:= True;
    end;
end;

procedure Tfrm_CadastroMovimentacaoBancaria.actAddCategoriaExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroCatgorias.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_CadastroCatgorias);
    end;

    cdsCategoria.Close;
    cdsCategoria.Open;
end;

procedure Tfrm_CadastroMovimentacaoBancaria.actAddHistoricoExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroLancamentoConta.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_CadastroLancamentoConta);
    end;

  cdsHistorico.Close;
  cdsHistorico.Open;
end;

end.
