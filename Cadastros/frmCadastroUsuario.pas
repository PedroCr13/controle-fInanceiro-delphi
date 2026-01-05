unit frmCadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, StdCtrls, Mask, DBCtrls, DB,
  DBClient, Provider, SqlExpr, ImgList, ActnList, Buttons, ExtCtrls;

type
  Tfrm_CadastroUsuario = class(Tfrm_Cadastro)
    dbedtCODIGO: TDBEdit;
    dbedtNomeUsuario: TDBEdit;
    dbedtLoginUsuario: TDBEdit;
    dbedtEmailUsuario: TDBEdit;
    qryCadastroCODIGO: TIntegerField;
    qryCadastroNOME: TStringField;
    qryCadastroLOGIN: TStringField;
    qryCadastroSENHA: TStringField;
    qryCadastroEMAIL: TStringField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroLOGIN: TStringField;
    cdsCadastroSENHA: TStringField;
    cdsCadastroEMAIL: TStringField;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    lbl4: TLabel;
    dbedtSenhaUsuario: TDBEdit;
    procedure actNovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroUsuario: Tfrm_CadastroUsuario;

implementation

uses dmConexao, uUsuario, lib_Criptografia;

{$R *.dfm}

procedure Tfrm_CadastroUsuario.actNovoExecute(Sender: TObject);
var U: TUsuario;
begin
  inherited;
  U:= TUsuario.Create;
  with U do
    try
      geraNovoCodigo;
      cdsCadastroCODIGO.AsInteger:= Codigo;
    finally
      FreeAndNil(U);
    end;
end;

procedure Tfrm_CadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroUsuario.actSalvarExecute(Sender: TObject);
var U: TUsuario;
begin

   if cdsCadastro.State in [dsInsert] then
     begin
      U:= TUsuario.Create;
        try
          U.Login:= dbedtLoginUsuario.Text;
          if U.loginEmUso then
              begin
                Application.MessageBox(PChar('Login [' + U.Login + '] já está em uso por outro usuário! Crie outro.'), 'Login inválido!', 0 + MB_ICONEXCLAMATION);
                Exit;
              end;

        finally
          FreeAndNil(U);
        end;
     end;

  if not cdsCadastro.IsEmpty then
    cdsCadastroSENHA.AsString:= Criptografar(dbedtSenhaUsuario.Text, CHAVE *  cdsCadastroCODIGO.AsInteger);

  try
   inherited;
   close;
  except

  end;
end;

procedure Tfrm_CadastroUsuario.actEditarExecute(Sender: TObject);
begin
  dbedtLoginUsuario.Enabled:= False;

  inherited;
  cdsCadastroSENHA.AsString:= Descriptografar(dbedtSenhaUsuario.Text, CHAVE * cdsCadastroCODIGO.AsInteger);
end;

procedure Tfrm_CadastroUsuario.actCancelarExecute(Sender: TObject);
begin
  //inherited;
  if Application.MessageBox('Deseja fechar esta tela?', 'Cancelar',
    4 +  MB_ICONQUESTION + MB_DEFBUTTON1) = ID_YES then
    begin
     if cdsCadastro.State in [dsInsert, dsEdit] then
        cdsCadastro.Cancel;
     close;
    end;
end;

end.
