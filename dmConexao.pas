unit dmConexao;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, RLPDFFilter, RLFilters,
  RLRichFilter, Windows, Forms;

type
  Tdm_Conexao = class(TDataModule)
    conConexao: TSQLConnection;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_Conexao: Tdm_Conexao;

implementation

uses uArquivoIni, lib_Types;

{$R *.dfm}

procedure Tdm_Conexao.DataModuleCreate(Sender: TObject);
var Parametros: TParametros;
    local_ini : String;
begin
   local_ini := ExtractFilePath(Application.ExeName)+ 'Config.ini';

  if ArquivosNecessariosOK then
  begin
    Parametros := TParametros.Create(local_ini);
      try
        if Parametros.Caminho = EmptyStr then
        begin
          Application.MessageBox('Banco de dados não encontrado! Verifique o caminho especificado', 'Atenção',
              0 + MB_ICONEXCLAMATION);
          Application.Terminate;
          exit;
        end;

        try
          conConexao.Close;
          conConexao.Params.Values['database'] := Parametros.Caminho;
          conConexao.Open;
        except
          on E:Exception do
          raise Exception.Create(Format('NÃO FOI POSSÍVEL CONECTAR-SE AO BANCO DE DADOS. ERRO: '
              +#13+ '%s' , [e.Message]));
        end;
      finally
        FreeAndNil(Parametros);
      end;
  end
  else
    Application.Terminate;
end;

end.
