unit uMovimentacao;

interface

uses SysUtils,SqlExpr, Classes;

type
  TMovimentacao = class
    private
      FCodigo  : Integer;
    public
      function GeraCodigo : Integer;
      function GeraCodigoCompromisso: Integer;
    published
      property Codigo : Integer read FCodigo write FCodigo;
  end;

var Movimentacao : TMovimentacao;

implementation

uses dmConexao;

{ TMovimentacao }


function TMovimentacao.GeraCodigo: Integer;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('SELECT GEN_ID(GEN_TB_MOVIMENTACAO_ID, 1) AS CODIGO FROM RDB$DATABASE');
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

function TMovimentacao.GeraCodigoCompromisso: Integer;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('SELECT GEN_ID(GEN_TB_COMPROMISSOS_ID, 1) AS CODIGO FROM RDB$DATABASE');
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
