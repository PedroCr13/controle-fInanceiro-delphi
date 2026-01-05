unit u_lib_funcoes;

interface

uses
  Windows, SysUtils, Variants, Classes, Controls, Forms, Dialogs,
  DB, DBClient, FMTBcd;

  procedure CalculaSaldo(cdsExtrato: TClientDataSet; CampoLcto: String);
  function SomaOcorrencias(Filtro: String; cdsExtrato: TClientDataSet): Currency;
  function SomaAplicacoes(cdsAplicaoOrigem: TClientDataSet; Campo: String): Currency;
  
implementation

procedure CalculaSaldo(cdsExtrato: TClientDataSet; CampoLcto: String);
var sdoAtual : Currency;
    cdsTemp: TClientDataSet;
begin
  cdsTemp:= TClientDataSet.Create(nil);

  with cdsTemp do
    try
      Data:= cdsExtrato.Data;

      sdoAtual := 0;

      First;

      while not Eof do
        begin
          if FieldByName(CampoLcto).AsString = 'C' then
            sdoAtual := sdoAtual + Fieldbyname('VALOR').AsCurrency
          else
          if FieldByName(CampoLcto).AsString = 'D' then
            sdoAtual := sdoAtual - Fieldbyname('VALOR').AsCurrency;

          Edit;
          FieldByName('SALDO').AsCurrency:= sdoAtual;
          Post;

          Next;
        end;

    finally
      cdsExtrato.Data:= Data;
      FreeAndNil(cdsTemp);
      //lblSaldoAtual.Caption:= formatcurr('Saldo Atual: R$ ####,##0.00', sdoAtual);
    end;
end;

function SomaOcorrencias(Filtro: String; cdsExtrato: TClientDataSet): Currency;
var cSoma : Currency;
    cds: TClientDataSet;
begin
  cds:= TClientDataSet.Create(nil);
  try
    cds.Data:= cdsExtrato.Data;

    csoma := 0;

    cds.First;

    while not cds.Eof do
      begin
        if (cds.FieldByName('LCTO').AsString = Filtro)  then
          cSoma := cSoma + cds.Fieldbyname('VALOR').AsCurrency;

        cds.Next;
      end;

    Result := cSoma;

  finally
    FreeAndNil(cds);
  end;

end;

function SomaAplicacoes(cdsAplicaoOrigem: TClientDataSet; Campo: String): Currency;
var cSoma : Currency;
    cds: TClientDataSet;
begin
  cds:= TClientDataSet.Create(nil);
  try
    cds.Data:= cdsAplicaoOrigem.Data;

    csoma := 0;

    cds.First;

    while not cds.Eof do
      begin
       cSoma := cSoma + cds.Fieldbyname(Campo).AsCurrency;
       cds.Next;
      end;

    Result := cSoma;

  finally
    FreeAndNil(cds);
  end;

end;

end.

