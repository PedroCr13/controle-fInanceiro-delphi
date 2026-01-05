unit uArquivoIni;

interface

uses Classes, SysUtils, inifiles, Dialogs, Windows;

type
  TParametros = class
    private
      fNomeArquivo: String;
      fCaminho: String;
    public
      function LerArquivo : String;
      constructor Create(const NomeArquivo : String);
    published
      property Caminho : String read fCaminho write fCaminho;
  end;

implementation

constructor TParametros.Create(const NomeArquivo: String);
begin
  fNomeArquivo := NomeArquivo;

  LerArquivo;
end;

function TParametros.LerArquivo : String;
var
  Arquivo : TIniFile;
begin
  Arquivo := TIniFile.Create(fNomeArquivo);

  fCaminho := Arquivo.ReadString('config', 'Endereco','');

  Arquivo.Free;
end;

end.
