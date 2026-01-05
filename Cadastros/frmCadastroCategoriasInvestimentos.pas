unit frmCadastroCategoriasInvestimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfrm_CadastroCategoriaInvestimentos = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroDESCRICAO: TStringField;
    qryCadastroCOD_USUARIO: TIntegerField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroDESCRICAO: TStringField;
    cdsCadastroCOD_USUARIO: TIntegerField;
    lbl1: TLabel;
    lbl2: TLabel;
    dbedtDESCRICAO: TDBEdit;
    dbedtCODIGO: TDBEdit;
    procedure actNovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroCategoriaInvestimentos: Tfrm_CadastroCategoriaInvestimentos;

implementation

uses dmConexao, uCategoriaAplicacao, uUsuario;

{$R *.dfm}

procedure Tfrm_CadastroCategoriaInvestimentos.actNovoExecute(
  Sender: TObject);
var
  C: TCategoriaAplicacao;
begin
  inherited;
  C:= TCategoriaAplicacao.Create;
  with C do
    try
      cdsCadastroCODIGO.AsInteger:= C.GeraCodigo;
    finally
      FreeAndNil(C);
    end;

  cdsCadastroCOD_USUARIO.AsInteger:= UsuarioLogado.Codigo;
end;

procedure Tfrm_CadastroCategoriaInvestimentos.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

end.
