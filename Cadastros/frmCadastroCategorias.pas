unit frmCadastroCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfrm_CadastroCatgorias = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroCATEGORIA: TStringField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroCATEGORIA: TStringField;
    qryCadastroCREDITO_DEBITO: TStringField;
    cdsCadastroCREDITO_DEBITO: TStringField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    qryCadastroCOD_USUARIO: TIntegerField;
    cdsCadastroCOD_USUARIO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroCatgorias: Tfrm_CadastroCatgorias;

implementation

uses dmConexao, uCategoria, uUsuario;

{$R *.dfm}

procedure Tfrm_CadastroCatgorias.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroCatgorias.actNovoExecute(Sender: TObject);
var
  C: TCategoria;
begin
  inherited;
  C:= TCategoria.Create;
  with C do
    try
      cdsCadastroCODIGO.AsInteger:= C.GeraCodigo;
    finally
      FreeAndNil(C);
    end;

  cdsCadastroCOD_USUARIO.AsInteger:= UsuarioLogado.Codigo;
end;

end.
