unit lib_Email;

interface

uses Classes, IdMessage, IdComponent, 
  IdSMTP, Forms, Windows;

const
  HOST_SMTP       = 'Host';
  USER_SMTP       = 'Email';
  PASSWORD_SMTP   = 'Senha';
  PORT_SMTP       = 'Porta';

  MESSAGE_SUBJECT = 'Dados de acesso Sistema de Extrato';
  MESSAGE_FROM    = 'From';
  MESSAGE_NAME    = 'Controle Financeiro Pessoal';

type
  TEmail = class
    private
      fIDSMTP: TIdSMTP;
      fIDMessage: TIdMessage;
      FUsuario: string;
      FSenha: string;
      FDestino: string;
    public
      procedure Envia;
      function Conectar: Boolean;
      constructor Create;
      destructor Destroy;
    published
      property Destino: string write FDestino;
      property Usuario: string write FUsuario;
      property Senha: string write FSenha;
  end;

implementation

uses SysUtils;

{ TEmail }

function TEmail.Conectar: Boolean;
begin
  if Assigned(fIDSMTP) then
    begin
      try
        fIDSMTP.Connect;
      except

      end;

      Result := fIDSMTP.Connected;
    end;
end;

constructor TEmail.Create;
begin
  fIDMessage := TIdMessage.Create(nil);
  fIDSMTP := TIdSMTP.Create(nil);

  with fIDSMTP do
    begin
      AuthenticationType := atLogin;
      Host := HOST_SMTP;
      Username := USER_SMTP;
      Password := PASSWORD_SMTP;
      Port := StrToInt(PORT_SMTP);
    end;
end;

destructor TEmail.Destroy;
begin
  fIDSMTP.Disconnect;
  FreeAndNil(fIDSMTP);
  FreeAndNil(FIDMessage);
end;

procedure TEmail.Envia;
var Erro: Boolean;
begin
  with fIDMessage do
    begin
      Recipients.EMailAddresses := FDestino;
      Subject := MESSAGE_SUBJECT;
      From.Address := MESSAGE_FROM;
      From.Name := MESSAGE_NAME;

      Body.Add('Dados de acesso ao Sistema de Extratos:');
      Body.Add('');
      Body.Add('Usu rio: ' + FUsuario);
      Body.Add('Senha: "' + FSenha + '"');
      Body.Add('');
     // Body.Add('ATEN  O: No pr ximo acesso defina uma nova senha!' +#13);
      Body.Add('Obs.: Mensagem enviada de forma autom tica. N o responder.');
    end;

  with fIDSMTP do
    begin
      try
        Send(fIDMessage);
        Erro := False;
      except
        Erro := True;
      end;
    end;

  if Erro then
    Application.MessageBox('N o foi poss vel enviar os dados para o e-mail!',
      'Aten  o', 0 + MB_ICONEXCLAMATION)
  else
    Application.MessageBox('Seu Usu rio e Senha foram enviados para o e-mail cadastrado!',
      'Aten  o', 0 + MB_ICONINFORMATION);
end;

end.
