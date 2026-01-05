unit lib_Types;

interface

uses Classes, Windows, SysUtils, Forms, Messages;

const
  CALCULADORA = 'C:\Windows\System32\Calc.exe';
  BLOCO_NOTAS = 'C:\Windows\System32\Notepad.exe';


type
  TMensagem = (msInfomation, msExclamation, msError);

type
  TCadastro = (cIncluir, cAtualizar, cExcluir);

  procedure ExibeMensagem(Texto, Titulo: String; TipoMSG: TMensagem);
  function ExibePergunta(Texto, Titulo: String): Boolean;
  function ArquivosNecessariosOK: Boolean;

var
  ArquivosNecessarios: array[1..2] of String = ('Config.ini',
     'Dados.dll');

implementation


procedure ExibeMensagem(Texto, Titulo: String; TipoMSG: TMensagem);
begin
  Titulo:= 'Sistema Informa:';

  case TipoMSG of
    msInfomation:
      begin
        Application.MessageBox(PChar(Texto), PChar(Titulo), 0 + MB_ICONINFORMATION);
      end;

    msExclamation:
      begin
        Application.MessageBox(PChar(Texto), PChar(Titulo), 0 + MB_ICONEXCLAMATION);
      end;

    msError:
      begin
        Application.MessageBox(PChar(Texto), PChar(Titulo), 0 + MB_ICONERROR);
      end;
  end;
end;

function ExibePergunta(Texto, Titulo: String): Boolean;
begin
  if Application.MessageBox(PChar(Texto), Pchar(Titulo), 4 + MB_ICONQUESTION) = IDYES then
    Result := True
  else
    Result := False;
end;

function ArquivosNecessariosOK: Boolean;
var
  i:  Integer;
  Lista: String;
begin
  Result:= True;

  Lista:= '';

  for i:= Low(ArquivosNecessarios) to High(Arquivosnecessarios) do
    begin
      if not FileExists(ExtractFilePath(Application.ExeName) + ArquivosNecessarios[i]) then
         begin
           Lista:= Lista +#13+ ArquivosNecessarios[i];
         end;
    end;

  if Lista <> '' then
    begin
      ExibeMensagem('Arquivo(s) não localizado(s): ' +#13+ Lista, '', msExclamation);
      Result:= False;
    end;
end;

end.
