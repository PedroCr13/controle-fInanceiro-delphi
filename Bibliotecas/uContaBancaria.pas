unit uContaBancaria;

interface

uses SysUtils, SqlExpr, Classes;

type
  TContaBancaria = class
    private
      FCodigo  : Integer;
    public
      function GeraCodigo : Integer;
    published
      property Codigo : Integer read FCodigo write FCodigo;
  end;

var ContaBancaria : TContaBancaria;

implementation

uses dmConexao;

{ TMovimentacao }


function TContaBancaria.GeraCodigo: Integer;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('SELECT GEN_ID(GEN_TB_CONTAS_ID, 1) AS CODIGO FROM RDB$DATABASE');
    qry.Open;

    FCodigo := qry.FieldByName('CODIGO').Asinteger;

    if qry.IsEmpty then
      FCodigo := 1
    else
     Result := FCodigo + 1;
  finally
    qry.Free;
  end;
end;

end.
