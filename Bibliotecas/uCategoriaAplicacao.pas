unit uCategoriaAplicacao;

interface

uses SysUtils,SqlExpr, Classes;

type
  TCategoriaAplicacao = class
    private
      FCodigo  : Integer;
    public
      function GeraCodigo : Integer;
    published
      property Codigo : Integer read FCodigo write FCodigo;
  end;

var CategoriaAplicacao : TCategoriaAplicacao;

implementation

uses dmConexao;

{ TMovimentacao }


function TCategoriaAplicacao.GeraCodigo: Integer;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('SELECT GEN_ID(GEN_TB_CATEGORIA_APLICACAO_ID, 1) AS CODIGO FROM RDB$DATABASE');
    // qry.SQL.Add('SELECT MAX(CODIGO) AS CODIGO FROM TB_MOVIMENTACAO');
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
 