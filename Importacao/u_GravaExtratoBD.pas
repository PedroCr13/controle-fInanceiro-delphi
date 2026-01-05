unit u_GravaExtratoBD;

interface

uses Classes, SqlExpr, DB, DBClient, Dialogs, Sysutils, Windows, Forms, Messages;

  {Historico}

type
  THistorico = class
    private
      FCodigo: Integer;
      FLCTO: String;
      FMovimento: String;
      FUsuario: Integer;
    function setCodigo: Integer;
    public
      function GeraCodigo: Integer;
      function HistoricoExiste: Boolean;
      function Gravar: Boolean;
    published
      property Lcto: String read FLCTO write FLCTO;
      property Codigo: Integer read setCodigo;
      property Movimento: String read FMovimento write FMovimento;
      property CodUsuario: Integer read FUsuario write FUsuario;
  end;

 { Conta }
type
  TConta = Class
    private
      FCodigo: Integer;
      FConta: String;
      FUsuarioConta: Integer;
      FBancoConta: Integer;
    function setCodigo: Integer;
    public
      function GeraCodigo: Integer;
      function ContaExiste: Boolean;
      function Gravar: Boolean;
    published
      property Conta: String read FConta write FConta;
      property Codigo: Integer read setCodigo;
      property UsuaroConta: Integer read FUsuarioConta write FUsuarioConta;
      property BancoConta: Integer read FBancoConta write FBancoConta;
  end;

  { Lancamento }
type
  TLancamento = Class
    private
      FCodigo: Integer;
      FConta: Integer;
      FData: TDateTime;
      FHistorico: Integer;
      FValor: Real;
      FTipoLcto: String;
      FNRDocumento: String;
      function setCodigo: Integer;
    public
      function GeraCofigo: Integer;
      function Gravar: Boolean;
    published
      property Codigo: Integer read setCodigo write FCodigo;
      property Conta: Integer read FConta write FConta;
      property DataMov: TDateTime read FData write FData;
      property Historico: Integer read FHistorico write FHistorico;
      property Valor: real read FValor write FValor;
      property TipoLCTO: String read FTipoLcto write FTipoLcto;
      property NRDoc: String read FNRDocumento write FNRDocumento;
  end;

  { TImportaExtrato }  

type
  TImportaExtrato = class
    private
      FExtratoOrigem: TClientDataSet;
      FUsuarioImportacao: Integer;
      FBancoImportacao: Integer;
    public
      procedure persisteExtrato;
    published
      property ExtratoOrigem: TClientDataSet write FExtratoOrigem;
      property UsuarioImportacao: Integer  read FUsuarioImportacao write FUsuarioImportacao;
      property BancoImportacao: Integer read FBancoImportacao write FBancoImportacao;
  end;

var
  oConta: TConta;
  oHistorico: THistorico;
  oLancamento: TLancamento;

implementation

uses dmConexao, lib_Types;

{ THistorico }

function THistorico.GeraCodigo: Integer;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(GEN_TB_LANCAMENTOS_ID, 1) AS ULTIMOCODIGO FROM RDB$DATABASE');
      Open;

      Result := qry.fieldByName('ULTIMOCODIGO').AsInteger;
      
    finally
      FreeAndNil(qry);
    end;
end;

function THistorico.Gravar: Boolean;
var qry : TSQLQuery;
begin
  FCodigo:= GeraCodigo;

  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('INSERT INTO TB_LANCAMENTOS(CODIGO, LCTO, MOVIMENTO, COD_USUARIO)');
    qry.SQL.Add('VALUES');
    qry.SQL.Add('(:CODIGO, :LCTO, :MOVIMENTO, :USUARIO)');
    qry.ParamByName('CODIGO').AsInteger := FCodigo;
    qry.ParamByName('LCTO').AsString := FLCTO;
    qry.ParamByName('MOVIMENTO').AsString:= FMovimento;
    qry.ParamByName('USUARIO').AsInteger:= FUsuario;
    try
      qry.ExecSQL;
      Result:= True;
    except
      Result:= False;
      {on E:Exception do
      raise Exception.Create(Format('ERRO : %s', [e.Message]));}
    end;
  finally
    qry.Free;
  end;

end;

function THistorico.HistoricoExiste: Boolean;
var
  qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
     qry.SQL.Add('SELECT CODIGO, LCTO FROM TB_LANCAMENTOS');
     qry.SQL.Add('WHERE LCTO =:PARAMLCTO AND COD_USUARIO =:USUARIO');
     qry.ParamByName('PARAMLCTO').AsString := FLCTO;
     qry.ParamByName('USUARIO').AsInteger:= FUsuario;
     qry.Open;

     if qry.IsEmpty then
       Result := False
     else
       begin
         FCodigo:= qry.FieldByName('CODIGO').AsInteger;
         Result := True;
       end;

  finally
    qry.Free;
  end;
end;

function THistorico.setCodigo: Integer;
begin
  Result:= FCodigo;
end;


{ TConta }

function TConta.ContaExiste: Boolean;
var
  qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
     qry.SQL.Add('SELECT CODIGO, CONTA, COD_USUARIO FROM TB_CONTAS');
     qry.SQL.Add('WHERE CONTA =:CONTA');
     qry.ParamByName('CONTA').AsString := FConta;
     qry.Open;

     if qry.IsEmpty then
       Result := False
     else
       begin
         FCodigo:= qry.FieldByName('CODIGO').AsInteger;
         Result := True;
       end;

  finally
    qry.Free;
  end;
end;

function TConta.GeraCodigo: Integer;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(GEN_TB_CONTAS_ID, 1) AS ULTIMOCODIGO FROM RDB$DATABASE');
      Open;

      FCodigo:= qry.fieldByName('ULTIMOCODIGO').AsInteger;
      Result:= FCodigo;

    finally
      FreeAndNil(qry);
    end;
end;

function TConta.Gravar: Boolean;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('INSERT INTO TB_CONTAS(CODIGO, CONTA, BANCO,COD_USUARIO)');
    qry.SQL.Add('VALUES');
    qry.SQL.Add('(:CODIGO, :CONTA, :CODBANCO, :USUARIO)');
    qry.ParamByName('CODIGO').AsInteger := FCodigo;
    qry.ParamByName('CONTA').AsString := FConta;
    qry.ParamByName('USUARIO').AsInteger:= FUsuarioConta;
    qry.ParamByName('CODBANCO').AsInteger:= FBancoConta;
    try
      qry.ExecSQL;
      Result:= True;
    except
      Result:= False;
      {on E:Exception do
      raise Exception.Create(Format('ERRO : %s', [e.Message]));}
    end;
  finally
    qry.Free;
  end;
end;

function TConta.setCodigo: Integer;
begin
  if not ContaExiste then
    Result:= GeraCodigo
  else
    Result:= FCodigo;
end;

{ TLancamento }

function TLancamento.GeraCofigo: Integer;
var
  qry: TSQLQuery;
begin
  qry:= TSQLQuery.Create(nil);
  qry.SQLConnection:= dm_Conexao.conConexao;

  with qry do
    try
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(GEN_TB_MOVIMENTACAO_ID, 1) AS ULTIMOCODIGO FROM RDB$DATABASE');
      Open;

      Result := qry.fieldByName('ULTIMOCODIGO').AsInteger;
      
    finally
      FreeAndNil(qry);
    end;

end;

function TLancamento.Gravar: Boolean;
var qry : TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('INSERT INTO TB_MOVIMENTACAO(CODIGO, CONTA, DATA, COD_HISTORICO, VALOR, TIPOLCTO)');
    qry.SQL.Add('VALUES');
    qry.SQL.Add('(:CODIGO, :CONTA, :DATA, :COD_HISTORICO, :VALOR, :TPLCTO)');
    qry.ParamByName('CODIGO').AsInteger := FCodigo;
    qry.ParamByName('CONTA').AsInteger:= FConta;
    qry.ParamByName('DATA').AsDate := FData;
    qry.ParamByName('COD_HISTORICO').AsInteger:= FHistorico;
    qry.ParamByName('VALOR').AsCurrency:= FValor;
    qry.ParamByName('TPLCTO').AsString:= FTipoLcto;

    try
      qry.ExecSQL;
      Result:= True;
    except
      Result:= False;
     { on E:Exception do
      raise Exception.Create(Format('ERRO : %s', [e.Message])); }
    end;
  finally
    qry.Free;
  end;

end;

function TLancamento.setCodigo: Integer;
begin
  FCodigo:= GeraCofigo;
  Result := FCodigo;
end;

{ TImportaExtrato }

procedure TImportaExtrato.persisteExtrato;
var
  cdsTemp: TClientDataSet;
begin
  cdsTemp:= TClientDataSet.Create(nil);

  cdsTemp.Data:= FExtratoOrigem.Data;

  with oConta do
    begin
      oConta:= TConta.Create;
      Conta:= FExtratoOrigem.fieldByName('CONTA').AsString;
      BancoConta:= FBancoImportacao;
      UsuaroConta:= FUsuarioImportacao;

      if not ContaExiste then
        begin
          GeraCodigo;
          Gravar;
        end
    end;

  with oLancamento do
    try
      oLancamento:= TLancamento.Create;

      with cdsTemp do
        begin
          First;

          while not Eof do
            begin

              with oHistorico do
                begin
                  oHistorico:= THistorico.Create;
                  Lcto:= cdsTemp.FieldByname('HISTORICO').AsString;
                  Movimento:= cdsTemp.fieldByName('TPLCTO').AsString;
                  CodUsuario:= FUsuarioImportacao;

                  if not HistoricoExiste then
                    begin
                      Gravar;
                    end;
                end;

                Codigo     := GeraCofigo;
                Conta      := oConta.Codigo;
                Historico  := oHistorico.Codigo;
                NRDoc      := fieldByName('NRDOC').Value;
                Valor      := fieldByName('VALOR').Value;
                DataMov    := fieldByName('DATA').Value;
                TipoLCTO   := fieldByName('TPLCTO').AsString;

              if not Gravar then
                begin
                  ShowMessage('ocorreu erro ao salvar registro.');
                  Exit;
                end;

              FreeAndNil(oHistorico);

              Next;
            end;
        end;

    finally
      ShowMessage('Importação concluída!');
      FreeAndNil(oConta);
      FreeAndNil(oLancamento);
      FreeAndNil(cdsTemp);

      if Assigned(oHistorico) then
        FreeAndNil(oHistorico);

    end;
end;

end.
