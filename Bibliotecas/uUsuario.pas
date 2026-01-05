unit uUsuario;

interface

uses Classes, SqlExpr, DB;

type
  TUsuario = class
    private
      FCodigo: Integer;
      FNome: String;
      FLogin: String;
      FSenha: String;
      FEmail: String;
      FAtivo: String;
      FPerfil: Integer;
      FAltereSenha: string;
      function getSenha: String;
      function getAtivo: Boolean;
      procedure geraSenha;
      function getEmail: String;
      function getAlteraSenha: Boolean;
      function recuperaCocdigo: Integer;
    public
      function setaUsuario: boolean;
      function acessoAutorizado: Boolean;
      procedure geraNovoCodigo;
      procedure recuperarSenha;
      procedure defineSenhaTemporaria;
      function loginEmUso: Boolean;
      procedure AlteraSenhaUsuarioAtivo;
      procedure bloqueiaUsuario;
      procedure DesbloqueiaUsuario;
    published
      property Codigo: Integer read FCodigo write FCodigo;
      property Nome: String read FNome write FNome;
      property Login: String read FLogin write FLogin;
      property Senha: String read getSenha write FSenha;
      property Email: String read getEmail write FEmail;
      property Ativo: Boolean read getAtivo;
      property Perfil: Integer read FPerfil write FPerfil;
      property AlterarSenha: Boolean read getAlteraSenha;
  end;

var
  Usuario: TUsuario;
  UsuarioLogado: TUsuario;

implementation

uses TypInfo, SysUtils, lib_Email, lib_Types,
  lib_Criptografia, dmConexao;

{ TUsuario }

function TUSUARIO.setaUsuario: Boolean;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;
  with qry do
    try
      SQL.Add('SELECT C.CODIGO, C.NOME, C.LOGIN, C.SENHA, C.PERFIL, C.EMAIL, C.ATIVO,');
      SQL.Add('C.ALTERAR_SENHA FROM TB_USUARIO C');
      SQL.Add('WHERE C.LOGIN =:LOGIN');
      qry.ParamByName('LOGIN').AsString:= FLogin;
      qry.Open;

      if IsEmpty then
        begin
          Result:= False
        end
      else
        begin
          FCodigo:= FieldbyName('CODIGO').AsInteger;
          FNome:= FieldByName('NOME').AsString;
          FPerfil:= FieldbyName('PERFIL').AsInteger;
          FEmail:= FieldbyName('EMAIL').AsString;
          FAltereSenha:= FieldbyName('ALTERAR_SENHA').AsString;
          FAtivo:= FieldbyName('ATIVO').AsString;
          Result:= True;
        end;
    finally
       FreeAndNil(qry);
    end;
end;

function TUsuario.acessoAutorizado: Boolean;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;
  with qry do
    try
      SQL.Add('SELECT C.LOGIN, C.SENHA');
      SQL.Add('FROM TB_USUARIO C');
      SQL.Add('WHERE C.LOGIN =:LOGIN AND C.SENHA =:SENHA');
      qry.ParamByName('LOGIN').AsString:= FLogin;
      qry.ParamByName('SENHA').AsString:= Criptografar(FSenha, CHAVE);
      qry.Open;

      if IsEmpty then
        begin
          bloqueiaUsuario;
          Result:= False
        end
      else
        begin
          Result:= True;
        end;
    finally
       FreeAndNil(qry);
    end;
end;

procedure TUsuario.geraNovoCodigo;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;
  with qry do
    try
      SQL.Clear;
      //antes: SQL.Add('SELECT MAX(CODIGO) AS ULTIMOCODIGO FROM TB_USUARIO');
      SQL.Add('SELECT GEN_ID(GEN_TB_USUARIO_ID, 1) AS ULTIMOCODIGO FROM RDB$DATABASE');
      Open;

      if not IsEmpty then
        FCodigo:= (fieldByName('ULTIMOCODIGO').AsInteger)
      else
        FCodigo:= 0;

    finally
      FreeAndNil(qry);
    end;
end;

procedure TUsuario.defineSenhaTemporaria;
var
  qry: TSQLQuery;
begin
  geraSenha;

  qry:= TSQLQuery.Create(nil);
  with qry do
    try
      SQLConnection:= dm_Conexao.conConexao;

      SQL.Clear;
      SQL.Add('UPDATE TB_USUARIO C');
      SQL.Add('SET C.SENHA =:SENHA_TEMP, ALTERAR_SENHA =:PARAMETRO');
      SQL.Add('WHERE C.LOGIN =:LOGIN');
      ParamByName('LOGIN').AsString:= FLogin;
      ParamByName('PARAMETRO').AsString:= 'S'; //alterar senha no pr ximo acesso
      ParamByName('SENHA_TEMP').AsString:= Criptografar(FSenha, CHAVE);
      ExecSQL;
    finally
      FreeAndNil(qry);
    end;
end;

function TUsuario.getAtivo: Boolean;
begin
  if FAtivo = 'S' then
    Result:= True
  else
    REsult:= False;
end;

function TUsuario.getSenha: String;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;
  with qry do
    try
      SQL.Add('SELECT C.SENHA AS SENHA FROM TB_USUARIO C');
      SQL.Add('WHERE C.LOGIN =:LOGIN');
      ParamByName('LOGIN').AsString:= FLogin;;
      Open;

      FSenha:= Descriptografar(fieldbyName('SENHA').AsString, CHAVE);

      Result:= FSenha;
    finally
      FreeAndNil(qry);
    end;
end;

function TUsuario.loginEmUso: Boolean;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT C.LOGIN FROM TB_USUARIO C');
      SQL.Add('WHERE C.LOGIN =:LOGIN AND C.CODIGO <> :CODIGO');
      ParamByName('LOGIN').AsString:= FLogin;
      ParamByName('CODIGO').AsInteger:= FCodigo;
      Open;

      if not IsEmpty then
        Result:= True
      else
        Result:= False;

    finally
      FreeAndNil(qry);
    end;
end;

procedure TUsuario.recuperarSenha;
var EnviaEmail: TEmail;
begin
  defineSenhaTemporaria;

  DesbloqueiaUsuario;

  EnviaEmail := TEmail.Create;
  with EnviaEmail do
    try
      Destino := FEmail;
      Usuario := FLogin;
      Senha := getSenha; //Obtem senha tempor ria

      if Conectar then
        Envia
      else
        ExibeMensagem('Aten  o: N o foi poss vel enviar o e-mail. '+#13+
                      'Verifique se h  conex o com a internet ou as configura  es de Firewall!',
                      '', msExclamation);
    finally
      FreeAndNil(EnviaEmail);
    end;
end;

procedure TUsuario.geraSenha;
var
  i: Integer;
  SenhaTemp, c: String;
begin
  for i:=1 to 6 do
    begin
      c:= '';
      Randomize;
      c:= IntToStr(Random(100));
      SenhaTemp:= SenhaTemp + c[1];
    end;

  FSenha:= SenhaTemp;
end;

function TUsuario.getEmail: String;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT C.EMAIL FROM TB_USUARIO C');
      SQL.Add('WHERE C.LOGIN =:LOGIN');
      ParamByName('LOGIN').AsString:= FLogin;
      Open;

      FEmail:= FieldByName('EMAIL').asString;

      Result := FEmail;

    finally
      FreeAndNil(qry);
    end;
end;

procedure TUsuario.AlteraSenhaUsuarioAtivo;
var
  qry: TSQLQuery;
begin

  qry:= TSQLQuery.Create(nil);
  with qry do
    TRY
      SQLConnection:= dm_Conexao.conConexao;

      SQL.Clear;
      SQL.Add('UPDATE TB_USUARIO C');
      SQL.Add('SET C.SENHA =:NOVA_SENHA, ALTERAR_SENHA = ''N''');
      SQL.Add('WHERE C.CODIGO =:CODIGO');
      ParamByName('CODIGO').AsInteger:= FCodigo;
      ParamByName('NOVA_SENHA').AsString:= Criptografar(FSenha, CHAVE);
      ExecSQL;
    finally
      FreeAndNil(qry);
    end;
end;

procedure TUsuario.bloqueiaUsuario;
var
  qry: TSQLQuery;
begin

  qry:= TSQLQuery.Create(nil);
  with qry do
    try
        SQLConnection:= dm_Conexao.conConexao;

        SQL.Clear;
        SQL.Add('EXECUTE PROCEDURE BLOQUEIAUSUARIO(:LOGIN)');
        Params[0].AsString:= FLogin;
      try
        ExecSQL;
      except

      end;
    finally
      FreeAndNil(qry);
    end;
end;

procedure TUsuario.DesbloqueiaUsuario;
var
  qry: TSQLQuery;
begin

  qry:= TSQLQuery.Create(nil);
  with qry do
    try
        SQLConnection:= dm_Conexao.conConexao;

        SQL.Clear;
        SQL.Add('EXECUTE PROCEDURE SP_DESBLOQUEIAUSUARIO(:LOGIN)');
        Params[0].AsString:= FLogin;
      try
        ExecSQL;
      except

      end;
    finally
      FreeAndNil(qry);
    end;
end;

function TUsuario.getAlteraSenha: Boolean;
begin
  if FAltereSenha = 'S' then
    Result:= True
  else
    Result:= False;
end;

function TUsuario.recuperaCocdigo: Integer;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT C.CODIGO FROM TB_USUARIO C');
      SQL.Add('WHERE C.LOGIN =:LOGIN');
      ParamByName('LOGIN').AsString:= FLogin;
      Open;

      Result:= FieldByName('CODIGO').AsInteger;

    finally
      FreeAndNil(qry);
    end;

end;

initialization

  if not Assigned(UsuarioLogado) then
    UsuarioLogado:= TUsuario.Create;

finalization

  if Assigned(UsuarioLogado) then
    FreeAndNil(UsuarioLogado);

end.

