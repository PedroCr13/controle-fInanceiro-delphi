unit u_lib_funcioesLeitura;

interface

uses
  SysUtils, Variants, Classes, DB, DBClient, Windows;

  procedure InsereLinhaNoExtrato(Dados: TStringList; Cds: TClientDataSet);
  procedure LerArquivo(NomeArquivo: String; Cds: TClientDataSet);

implementation

uses u_cls_Extrato;

procedure InsereLinhaNoExtrato(Dados: TStringList; Cds: TClientDataSet);
var lctoext: String;
      i: integer;
begin
   { 0 Conta, 1 Data, 2 Nr Doc, 3 Hist, 4 Valor, 5 Tipo Lcto}

  with TLcto.Create do
    try
      DadosNaoFormatados:= Dados;
      FormataDados;

      with cds do
        Begin
          Append;
          FieldByName('CONTA').AsString    := Conta;
          FieldByName('HISTORICO').AsString:= Historico;
          FieldByName('DATA').AsDateTime   := DataMov;
          FieldByName('VALOR').AsCurrency  := Valor;
          FieldByName('TPLCTO').AsString   := TipoLcto;
          FieldByName('NRDOC').AsString    := NRDoc;
          Post;
        end;

    finally
      FreeAndNil(Lcto);
    end;
end;

procedure LerArquivo(NomeArquivo: String; Cds: TClientDataSet);
var Arquivo  : TextFile;
    ValorLido : String;
    Texto : TStringList;
    i: Integer;
begin
  AssignFile(Arquivo, NomeArquivo);
  Reset(Arquivo);

  Texto:= TStringList.Create;
  Texto.Delimiter:= ';';

  while not Eof(Arquivo) do
    begin
      Readln(arquivo, ValorLido);
      Texto.DelimitedText:= ValorLido;

     { ShowMessage('Conta Nº  ' + Texto[0]
          + #13 + 'Data Mov  ' + Texto[1]
          + #13 + 'NR Doc    ' + Texto[2]
          + #13 + 'Historico ' + Texto[3]
          + #13 + 'Valor mov ' + Texto[4]
          + #13 + 'TP Lcto   ' + Texto[5]);    }

      if not (ValorLido[2] = 'C') then
         InsereLinhaNoExtrato(Texto, Cds);
    end;

  CloseFile(Arquivo);
end;

end.
