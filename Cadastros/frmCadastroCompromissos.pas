unit frmCadastroCompromissos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, DateUtils,
  Spin;

type
  Tfrm_CadastroCompromisso = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroCONTA: TIntegerField;
    qryCadastroDATA_EFETIVACAO: TDateField;
    qryCadastroVALOR: TFMTBCDField;
    qryCadastroLCTO: TStringField;
    qryCadastroDESCRICAO: TStringField;
    qryCadastroHISTORICO_COMPROMISSO: TIntegerField;
    qryCadastroCATEGORIA: TIntegerField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroCONTA: TIntegerField;
    cdsCadastroDATA_EFETIVACAO: TDateField;
    cdsCadastroVALOR: TFMTBCDField;
    cdsCadastroLCTO: TStringField;
    cdsCadastroDESCRICAO: TStringField;
    cdsCadastroHISTORICO_COMPROMISSO: TIntegerField;
    cdsCadastroCATEGORIA: TIntegerField;
    qryCategoria: TSQLQuery;
    qryCategoriaCODIGO: TIntegerField;
    qryCategoriaCATEGORIA: TStringField;
    qryCategoriaCREDITO_DEBITO: TStringField;
    qryCategoriaCOD_USUARIO: TIntegerField;
    qryHistorico: TSQLQuery;
    qryHistoricoCODIGO: TIntegerField;
    qryHistoricoLCTO: TStringField;
    qryHistoricoMOVIMENTO: TStringField;
    qryHistoricoCOD_USUARIO: TIntegerField;
    dspCategoria: TDataSetProvider;
    dspHistorico: TDataSetProvider;
    cdsCategoria: TClientDataSet;
    cdsCategoriaCODIGO: TIntegerField;
    cdsCategoriaCATEGORIA: TStringField;
    cdsCategoriaCREDITO_DEBITO: TStringField;
    cdsCategoriaCOD_USUARIO: TIntegerField;
    cdsHistorico: TClientDataSet;
    cdsHistoricoCODIGO: TIntegerField;
    cdsHistoricoLCTO: TStringField;
    cdsHistoricoMOVIMENTO: TStringField;
    cdsHistoricoCOD_USUARIO: TIntegerField;
    dsHistorico: TDataSource;
    dsCategoria: TDataSource;
    lbl9: TLabel;
    dbedtCODIGO1: TDBEdit;
    lbl11: TLabel;
    dbedtDATA1: TDBEdit;
    dbcbbTIPOLCTO1: TDBComboBox;
    lbl16: TLabel;
    lbl15: TLabel;
    lbl12: TLabel;
    dblkcbbCOD_HISTORICO1: TDBLookupComboBox;
    dblkcbbCOD_CATEGORIA1: TDBLookupComboBox;
    lbl13: TLabel;
    lbl14: TLabel;
    dbedtDESCRICAO1: TDBEdit;
    dbedtVALOR1: TDBEdit;
    qryCadastroDATA_CADASTRO: TDateField;
    cdsCadastroDATA_CADASTRO: TDateField;
    grp1: TGroupBox;
    chk1: TCheckBox;
    lbl1: TLabel;
    se1: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure dbcbbTIPOLCTO1Change(Sender: TObject);
  private
    { Private declarations }
  public
    CodigoConta: Integer;
  end;

var
  frm_CadastroCompromisso: Tfrm_CadastroCompromisso;

implementation

uses dmConexao, uUsuario, uMovimentacao;

{$R *.dfm}

procedure Tfrm_CadastroCompromisso.FormShow(Sender: TObject);
begin
  inherited;

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

procedure Tfrm_CadastroCompromisso.actNovoExecute(Sender: TObject);
var M: TMovimentacao;
begin
  inherited;

  M:= TMovimentacao.Create;
  with M do
    try
      cdsCadastroCODIGO.AsInteger:= M.GeraCodigoCompromisso;
    finally
      FreeAndNil(M);
    end;

   cdsCadastroDATA_CADASTRO.AsDateTime:= Today;

   cdsCadastroCONTA.AsInteger:= CodigoConta;
end;

procedure Tfrm_CadastroCompromisso.dbcbbTIPOLCTO1Change(Sender: TObject);
begin
  inherited;
  if dbcbbTIPOLCTO1.Text = '' then exit;

  with cdsHistorico do
    begin
      Filtered:= False;
      Filter:= 'MOVIMENTO = ' + QuotedStr(dbcbbTIPOLCTO1.Text);
      Filtered:= True;
    end;

    with cdsCategoria do
    begin
      Filtered:= False;
      Filter:= 'CREDITO_DEBITO = ' + QuotedStr(dbcbbTIPOLCTO1.Text);

      if dbcbbTIPOLCTO1.Text = 'D' then
          Filter:= filter + ' OR CREDITO_DEBITO = ''I'' OR CREDITO_DEBITO = ''R'''
          + ' OR CREDITO_DEBITO = ''N''';

      //lista categorias do tipo "não contabiliza" (não considera o registro D ou C para balanço)
      if dbcbbTIPOLCTO1.Text = 'C' then
          Filter:= filter + ' OR CREDITO_DEBITO = ''N''';

      Filtered:= True;
    end;
end;

end.
