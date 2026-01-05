unit frrnCadastroBancosAgentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfrm_CadastroBancosAgentes = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroNOME: TStringField;
    qryCadastroSITE: TStringField;
    qryCadastroOBS: TStringField;
    qryCadastroTELEFONE: TStringField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroSITE: TStringField;
    cdsCadastroOBS: TStringField;
    cdsCadastroTELEFONE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCodigo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    qryCadastroNUEMRO_OPERACAO: TStringField;
    cdsCadastroNUEMRO_OPERACAO: TStringField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
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
  frm_CadastroBancosAgentes: Tfrm_CadastroBancosAgentes;

implementation

uses dmConexao, uBancosAgentes, uUsuario;


{$R *.dfm}

procedure Tfrm_CadastroBancosAgentes.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroBancosAgentes.actNovoExecute(Sender: TObject);
var
  B: TBanco;
begin
  inherited;
  B:= TBanco.Create;
  with B do
    try
      cdsCadastroCODIGO.AsInteger:= B.GeraCodigo;
    finally
      FreeAndNil(B);
    end;

  cdsCadastroCOD_USUARIO.AsInteger:= UsuarioLogado.Codigo;
end;

end.
