unit uAplicacao;

interface

uses SysUtils,SqlExpr, Classes;

type
  TAplicacao = class
    private
      FCodigo  : Integer;
    public
      function GeraCodigo : Integer;
      function RendimentoMes(Usuario, Aplicacao, ano, mes: Integer): Currency;
    published
      property Codigo : Integer read FCodigo write FCodigo;
  end;

var Aplicacao : TAplicacao;

implementation

uses dmConexao;

{ TMovimentacao }


function TAplicacao.GeraCodigo: Integer;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('SELECT GEN_ID(GEN_TB_INVESTIMENTOS_ID, 1) AS CODIGO FROM RDB$DATABASE');
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

function TAplicacao.RendimentoMes(Usuario, Aplicacao, ano, mes: Integer): Currency;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('SELECT SPRM.APLICACAO, SPRM.VALOR, SPRM.MES, SPRM.ANO');
    qry.SQL.Add('FROM sp_retorna_rend_mes(:TIPOAPLICACAO, :MES, :ANO, :USUARIO) SPRM');
    qry.ParamByName('USUARIO').AsInteger:= Usuario;
    qry.ParamByName('TIPOAPLICACAO').AsInteger:= Aplicacao;
    qry.ParamByName('ANO').AsInteger:= ano;
    qry.ParamByName('MES').AsInteger:= mes;
    qry.Open;

    Result := qry.FieldByName('VALOR').Asinteger;
  finally
    qry.Free;
  end;
end;

end.
