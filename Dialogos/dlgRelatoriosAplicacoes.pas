unit dlgRelatoriosAplicacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls, FMTBcd,
  DBCtrls, DB, DBClient, Provider, SqlExpr, StdCtrls;

type
  Tdlg_DialogoRelatorioAplicacoes = class(TdlgDialogoModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    qryAgentes: TSQLQuery;
    qryAgentesCODIGO: TIntegerField;
    qryAgentesNOME: TStringField;
    dspAgentes: TDataSetProvider;
    cdsAgentes: TClientDataSet;
    cdsAgentesCODIGO: TIntegerField;
    cdsAgentesNOME: TStringField;
    dsAgentes: TDataSource;
    cbbAgentes: TDBLookupComboBox;
    llblAplicacao: TLabel;
    cbbAplicacoes: TDBLookupComboBox;
    qryTipoAplicacoes: TSQLQuery;
    qryTipoAplicacoesCODIGO: TIntegerField;
    qryTipoAplicacoesDESCRICAO: TStringField;
    dspTipoAplicacoes: TDataSetProvider;
    cdsTipoAplicacoes: TClientDataSet;
    cdsTipoAplicacoesCODIGO: TIntegerField;
    cdsTipoAplicacoesDESCRICAO: TStringField;
    dsTipoAplicacoes: TDataSource;
    Label2: TLabel;
    cbbCategorias: TDBLookupComboBox;
    qryCategoriaAplicacao: TSQLQuery;
    qryCategoriaAplicacaoCODIGO: TIntegerField;
    qryCategoriaAplicacaoDESCRICAO: TStringField;
    dspCategoriaAplicacao: TDataSetProvider;
    cdsCategoriaAplicacao: TClientDataSet;
    cdsCategoriaAplicacaoCODIGO: TIntegerField;
    cdsCategoriaAplicacaoDESCRICAO: TStringField;
    dsCategoriaAplicacao: TDataSource;
    lbl1: TLabel;
    edtAnoVencimento: TEdit;
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtAnoVencimentoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlg_DialogoRelatorioAplicacoes: Tdlg_DialogoRelatorioAplicacoes;

implementation

uses relAplicacoesSintetico, relModelo, uUsuario, u_lib_funcoes;

{$R *.dfm}

procedure Tdlg_DialogoRelatorioAplicacoes.actConfirmarExecute(
  Sender: TObject);
begin
  inherited;
  with Trel_RelatorioAplicacoesSintetico.Create(nil) do
    try
      qryRelatorio.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;

      if cbbAgentes.KeyValue > 0 then
        begin
          qryRelatorio.SQL.Add('AND COD_AGENTE =:CODIGOAGENTE');
          qryRelatorio.ParamByName('CODIGOAGENTE').AsInteger := cbbAgentes.KeyValue;
        end;

      if cbbAplicacoes.KeyValue > 0 then
        begin
          qryRelatorio.SQL.Add('AND COD_TPAPLIC =:CODIGOTPAPLICACAO');
          qryRelatorio.ParamByName('CODIGOTPAPLICACAO').AsInteger := cbbAplicacoes.KeyValue;
        end;

      if cbbCategorias.KeyValue > 0 then
        begin
          qryRelatorio.SQL.Add('AND COD_CATEGORIA =:CODIGOCATEGORIA');
          qryRelatorio.ParamByName('CODIGOCATEGORIA').AsInteger := cbbCategorias.KeyValue;
        end;

      if (edtAnoVencimento.Text <> '') then
        begin
          qryRelatorio.SQL.Add('AND EXTRACT(YEAR FROM DATA_FINAL) =:ANO_VENCIMENTO');
          qryRelatorio.ParamByName('ANO_VENCIMENTO').AsInteger := StrToInt(edtAnoVencimento.Text);
        end;

      qryRelatorio.SQL.Add('ORDER BY DATA_INICIAL ASC');

      cdsRelatorio.Close;
      cdsRelatorio.Open;

      if cdsRelatorio.IsEmpty then
        begin
          Application.MessageBox('Não há dados para exibir!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
          Exit;
        end;

      lblTotalAplicado.Caption:= FormatCurr('R$ 0.0.0', SomaAplicacoes(cdsRelatorio, 'VALOR_INICIAL'));
      lblTotalAtualizado.Caption:= FormatCurr('R$ 0.0.0', SomaAplicacoes(cdsRelatorio, 'VALOR_FINAL'));

      rlbDescricao.Caption:= 'Relatório de Aplicações - Agente: ' + cdsAgentesNOME.Value + ' - Aplicação: '
          + cdsTipoAplicacoesDESCRICAO.Value + ' - Categoria: ' + cdsCategoriaAplicacaoDESCRICAO.Value;
      RLLabel3.Caption:= UsuarioLogado.Nome;

      RLReport1.Preview();
    finally
      FreeAndNil(rel_RelatorioAplicacoesSintetico);
    end;
end;

procedure Tdlg_DialogoRelatorioAplicacoes.FormShow(Sender: TObject);
begin
  inherited;
  qryAgentes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsAgentes.close;
  cdsAgentes.Open;

  qryTipoAplicacoes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsTipoAplicacoes.close;
  cdsTipoAplicacoes.Open;

  qryCategoriaAplicacao.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsCategoriaAplicacao.close;
  cdsCategoriaAplicacao.Open;

  cbbAgentes.KeyValue:= 0;
  cbbAplicacoes.KeyValue:= 0;
  cbbCategorias.KeyValue:= 0;
end;

procedure Tdlg_DialogoRelatorioAplicacoes.edtAnoVencimentoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

end.
