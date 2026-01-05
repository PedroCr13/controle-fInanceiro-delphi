unit u_cls_Extrato;

interface

uses Classes, SysUtils, Windows, DB;

Type
  TLCTO = class
  private
    FConta: String;
   	FData: TDateTime;
	  FHistorico: String;
	  FValor: Real;
    FTipoLcto: String;
    FDadosNaoFormatados: TStringList;
    FNRDocumento: String;
    function FormataContas(NConta: String): String;
    function FormataDatas(Dado: String): String;
  public
    procedure FormataDados;
    procedure limparCampos;
  published
    property DadosNaoFormatados: TStringList read FDadosNaoFormatados write FDadosNaoFormatados;
    property Conta: String read FConta write FConta;
    property DataMov: TDateTime read FData write FData;
    property Historico: String read FHistorico write FHistorico;
    property Valor: real read FValor write FValor;
    property TipoLCTO: String read FTipoLcto write FTipoLcto;
    property NRDoc: String read FNRDocumento write FNRDocumento;
  end;

var
  Lcto: TLCTO;

implementation

{ TLCTO }

function TLCTO.FormataContas(NConta: String): String;
var Ag, Op, Num, Dv: String;
begin
  Ag := Copy(NConta, 1, 4);
  Op := Copy(NConta, 5, 3);
  Num := Copy(NConta, 8, 8);
  Dv:= copy(NConta, 16, 1);

  Result := Ag + '.' + Op + '.' + Num + '-' + Dv;
end;

procedure TLCTO.FormataDados;
begin
  FConta := FormataContas(FDadosNaoFormatados[0]);
  FData  := StrToDate(FormataDatas(FDadosNaoFormatados[1]));
  FValor := StrToCurr(StringReplace(FDadosNaoFormatados[4], '.', ',', [rfReplaceAll, rfIgnoreCase]));
  FHistorico  := FDadosNaoFormatados.Strings[3];
  FTipoLcto   := FDadosNaoFormatados.Strings[5];
  FNRDocumento:= FDadosNaoFormatados.Strings[2];
end;

function TLCTO.FormataDatas(Dado: String): String;
var
  d, m, a: String;
begin
  d:= copy(dado, 7, 2);
  m:= copy(dado, 5, 2);
  a:= copy(dado, 1, 4);

  Result:= d + '/' + m +'/' + a;
end;

procedure TLCTO.limparCampos;
begin

end;

end.
