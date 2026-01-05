unit dlgLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls, StdCtrls;

type
  Tdlg_Login = class(TdlgDialogoModelo)
    Label1: TLabel;
    Label2: TLabel;
    edtLoginUsuario: TEdit;
    edtSenha: TEdit;
    lblRecuperarSenha: TLabel;
    lbl1: TLabel;
    procedure actConfirmarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure lblRecuperarSenhaClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlg_Login: Tdlg_Login;

implementation

uses uUsuario, frmPrincipal, frmCadastroUsuario;

{$R *.dfm}

procedure Tdlg_Login.actConfirmarExecute(Sender: TObject);
begin
  inherited;

  with UsuarioLogado do
    begin
      Login:= edtLoginUsuario.Text;
      Senha:= edtSenha.Text;

      if not loginEmUso then
        Application.MessageBox('Usuário não localizado! Verifique se digitou corretamente.'
          , 'Atenção', 0 + MB_ICONWARNING)
      else
      if acessoAutorizado then
        begin
          setaUsuario;
          frm_Principal.StatusBar1.Panels[0].Text:= 'Usuário: ' + intToStr(Codigo) + ' - ' + Nome;
          frm_Principal.StatusBar1.Panels[1].Text:= Email;
          Self.Close;
        end
      else
        Application.MessageBox('Senha incorreta! Verifique se a tecla CAPS LOCK está ativada.', 'Atenção!', 0 + MB_ICONEXCLAMATION);
    end; 
end;

procedure Tdlg_Login.actCancelarExecute(Sender: TObject);
begin
  if Application.MessageBox('O programa será fechado. Sair?', 'Atenção!', 4 + MB_ICONQUESTION) = ID_YES then
    begin
      Application.Terminate;
    end;
end;

procedure Tdlg_Login.lblRecuperarSenhaClick(Sender: TObject);
var
  UsuarioRecuraSenha: TUsuario;
  EnderecoEmail: String;
begin
  inherited;

  UsuarioRecuraSenha:= TUsuario.Create;

  with UsuarioRecuraSenha do
    try
      Login:= edtLoginUsuario.Text;

      if loginEmUso then
        begin
          setaUsuario;

          EnderecoEmail:= InputBox('Atenção', 'Informe seu email para envio de senha.', '');

          if AnsiUpperCase(EnderecoEmail) = Email then
            recuperarSenha
          else
            Application.MessageBox('Email inválidos!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
        end
      else
        Application.MessageBox('Usuário/senha inválidos!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
    finally
      FreeAndNil(UsuarioRecuraSenha);
    end;

end;

procedure Tdlg_Login.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    actConfirmar.Execute;
end;

procedure Tdlg_Login.lbl1Click(Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroUsuario.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_CadastroUsuario);
    end;
end;

end.
