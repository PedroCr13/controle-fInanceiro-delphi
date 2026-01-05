unit frmCadastroEspecieInvestimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  Tfrm_CadastroEspecieInvestimentos = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroDESCRICAO: TStringField;
    qryCadastroCATEGORIA: TIntegerField;
    qryCadastroIMPOSTO_RENDA: TStringField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroDESCRICAO: TStringField;
    cdsCadastroCATEGORIA: TIntegerField;
    cdsCadastroIMPOSTO_RENDA: TStringField;
    qryCategoriaAplicacao: TSQLQuery;
    dspCategoriaAplicacao: TDataSetProvider;
    cdsCategoriaAplicacao: TClientDataSet;
    dsCategoriaAplicacao: TDataSource;
    qryCategoriaAplicacaoCODIGO: TIntegerField;
    qryCategoriaAplicacaoDESCRICAO: TStringField;
    cdsCategoriaAplicacaoCODIGO: TIntegerField;
    cdsCategoriaAplicacaoDESCRICAO: TStringField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qryCadastroCOD_USUARIO: TIntegerField;
    cdsCadastroCOD_USUARIO: TIntegerField;
    qryCategoriaAplicacaoCOD_USUARIO: TIntegerField;
    cdsCategoriaAplicacaoCOD_USUARIO: TIntegerField;
    procedure actNovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroEspecieInvestimentos: Tfrm_CadastroEspecieInvestimentos;

implementation

uses dmConexao, uEspecieAplicacao, uUsuario;

{$R *.dfm}

procedure Tfrm_CadastroEspecieInvestimentos.actNovoExecute(
  Sender: TObject);
var
  T: TTipoAplicacao;
begin
  inherited;
  T:= TTipoAplicacao.Create;
  with T do
    try
      cdsCadastroCODIGO.AsInteger:= T.GeraCodigo;
    finally
      FreeAndNil(T);
    end;

  cdsCadastroCOD_USUARIO.AsInteger:= UsuarioLogado.Codigo;
end;

procedure Tfrm_CadastroEspecieInvestimentos.FormShow(Sender: TObject);
begin
  inherited;
  qryCategoriaAplicacao.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsCategoriaAplicacao.Close;
  cdsCategoriaAplicacao.Open;

  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

end.
