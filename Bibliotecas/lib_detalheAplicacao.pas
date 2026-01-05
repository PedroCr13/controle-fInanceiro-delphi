unit lib_detalheAplicacao;

interface

uses Classes, SqlExpr, DB, DBClient, Dialogs, Sysutils, Windows, Forms, Messages, dateUtils;

  { DetalheAplicacao }
type
  TDetalheAplicacao = Class
    private
      FCodigo: Integer;
      FCodAplicacao: Integer;
      FDataAplic: TDateTime;
      FCreditos: Currency;
      FDebitos: Currency;
      FSaldoAtual: Currency;
    public
      function Incluir: Boolean;
      function Autalizar: Boolean;
      function Excluir: Boolean;
      function DataReferenciaExiste: Boolean;
    published
      property Codigo: Integer read FCodigo write FCodigo;
      property CodAplica: Integer read FCodAplicacao write FCodAplicacao;
      property DataAplic: TDateTime read FDataAplic write FDataAplic;
      property Creditos: Currency read FCreditos write FCreditos;
      property Debitos: Currency read FDebitos write FDebitos;
      property SaldoAtual: Currency read FSaldoAtual write FSaldoAtual;
  end;

var
  oDetalheAplicacao: TDetalheAplicacao;

implementation

uses dmConexao;

{ TAplicacao}



{ TDetalheAplicacao }

function TDetalheAplicacao.Autalizar: Boolean;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('UPDATE TB_DETALHE_INVESTIMENTO');
      SQL.Add('SET DATA_REFERENCIA =:DATA, CREDITOS =:CRED, DEBITOS =:DEB, VALOR_LIQUIDO_ATUAL =:VALOR');
      SQL.Add('WHERE CODIGO =:CODIGO');
      ParamByName('CODIGO').AsInteger:= FCodigo;
      ParamByName('DATA').AsDate:= FDataAplic;
      ParamByName('CRED').AsCurrency:= FCreditos;
      ParamByName('DEB').AsCurrency:= FDebitos;
      ParamByName('VALOR').AsCurrency:= FSaldoAtual;

      try
        qry.ExecSQL;
        Result:= True;
      except
        Result:= False;
        {on E:Exception do
        raise Exception.Create(Format('ERRO : %s', [e.Message]));}
      end;

    finally
      FreeAndNil(qry);
    end;

end;

function TDetalheAplicacao.Excluir: Boolean;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('DELETE FROM TB_DETALHE_INVESTIMENTO');
      SQL.Add('WHERE CODIGO =:CODIGO');
      ParamByName('CODIGO').AsInteger:= FCodigo;
      try
        qry.ExecSQL;
        Result:= True;
      except
        Result:= False;
        {on E:Exception do
        raise Exception.Create(Format('ERRO : %s', [e.Message]));}
      end;

    finally
      FreeAndNil(qry);
    end;

end;

function TDetalheAplicacao.Incluir: Boolean;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('INSERT INTO TB_DETALHE_INVESTIMENTO (INVESTIMENTO, DATA_REFERENCIA, CREDITOS, DEBITOS, VALOR_LIQUIDO_ATUAL)');
      SQL.Add('VALUES');
      SQL.Add('(:CODAPLIC, :DATA, :CRED, :DEB, :VALOR)');
      ParamByName('CODAPLIC').AsInteger:= FCodAplicacao;
      ParamByName('DATA').AsDate:= FDataAplic;
      ParamByName('CRED').AsCurrency:= FCreditos;
      ParamByName('DEB').AsCurrency:= FDebitos;
      ParamByName('VALOR').AsCurrency:= FSaldoAtual;

      try
        qry.ExecSQL;
        Result:= True;
      except
        Result:= False;
        {on E:Exception do
        raise Exception.Create(Format('ERRO : %s', [e.Message]));}
      end;

    finally
      FreeAndNil(qry);
    end;
end;

function TDetalheAplicacao.DataReferenciaExiste: Boolean;
var
  qry: TSQLQuery;
  Mes, Ano: Integer;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  Mes:= MonthOf(FDataAplic);
  Ano:= YearOf(FDataAplic);

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT D.CODIGO FROM TB_DETALHE_INVESTIMENTO D');
      SQL.Add('WHERE D.INVESTIMENTO =:COD_INVESTIMENTO');
      SQL.Add('AND EXTRACT(MONTH FROM D.DATA_REFERENCIA)=:MES AND');
      SQL.Add('EXTRACT(YEAR FROM D.DATA_REFERENCIA)=:ANO');
      ParamByName('COD_INVESTIMENTO').AsInteger:= FCodAplicacao;
      ParamByName('MES').AsInteger:= Mes;
      ParamByName('ANO').AsInteger:= Ano;
      Open;

      if IsEmpty then
        Result:= False
      else
        Result:= True;

    finally
      FreeAndNil(qry);
    end;

end;

end.
