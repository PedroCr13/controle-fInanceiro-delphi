unit frmConsultaAplicacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  Tfrm_ConsultaAplicacoes = class(Tfrm_ConsultaModelo)
    qryConsultaCODIGO: TIntegerField;
    qryConsultaUSUARIO: TIntegerField;
    qryConsultaAGENTE: TIntegerField;
    qryConsultaNOME: TStringField;
    qryConsultaTP_APLICACAO: TIntegerField;
    qryConsultaAPLICACAO: TStringField;
    qryConsultaDATA_APLIC: TDateField;
    qryConsultaDATA_VENC: TDateField;
    qryConsultaLIQUIDEZ: TIntegerField;
    qryConsultaDESCLIQUIDEZ: TStringField;
    qryConsultaINDICE: TIntegerField;
    qryConsultaINDEXADOR: TStringField;
    qryConsultaCATEGORIA: TStringField;
    qryConsultaVALOR_APLICADO: TFMTBCDField;
    qryConsultaTAXA_REMUNERACAO: TFMTBCDField;
    qryConsultaATIVO: TStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaUSUARIO: TIntegerField;
    cdsConsultaAGENTE: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaTP_APLICACAO: TIntegerField;
    cdsConsultaAPLICACAO: TStringField;
    cdsConsultaDATA_APLIC: TDateField;
    cdsConsultaDATA_VENC: TDateField;
    cdsConsultaLIQUIDEZ: TIntegerField;
    cdsConsultaDESCLIQUIDEZ: TStringField;
    cdsConsultaINDICE: TIntegerField;
    cdsConsultaINDEXADOR: TStringField;
    cdsConsultaCATEGORIA: TStringField;
    cdsConsultaVALOR_APLICADO: TFMTBCDField;
    cdsConsultaTAXA_REMUNERACAO: TFMTBCDField;
    cdsConsultaATIVO: TStringField;
    GroupBox1: TGroupBox;
    cbbOrdenarDados: TComboBox;
    GroupBox2: TGroupBox;
    cbbLocalizar: TComboBox;
    edtPesquisa: TEdit;
    btnLimpar: TSpeedButton;
    grbtExibirStatus: TRadioGroup;
    actLimpar: TAction;
    btnConfirmar: TSpeedButton;
    actPesquisar: TAction;
    actAdcionar: TAction;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    actEditar: TAction;
    btnDetalhe: TSpeedButton;
    actDetalhe: TAction;
    qryConsultaCOD_CATEGORIA: TIntegerField;
    cdsConsultaCOD_CATEGORIA: TIntegerField;
    qryAgentes: TSQLQuery;
    qryAgentesCODIGO: TIntegerField;
    qryAgentesNOME: TStringField;
    dspAgentes: TDataSetProvider;
    cdsAgentes: TClientDataSet;
    cdsAgentesCODIGO: TIntegerField;
    cdsAgentesNOME: TStringField;
    dsAgentes: TDataSource;
    dblkcbbAgentes: TDBLookupComboBox;
    edtAnoVcto: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actAdcionarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actDetalheExecute(Sender: TObject);
    procedure edtAnoVctoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaAplicacoes: Tfrm_ConsultaAplicacoes;

implementation

uses uUsuario, frmCadastroAplicacao, frmModeloCadastro,
  frmConsultaDetalheAplicacao;

{$R *.dfm}

procedure Tfrm_ConsultaAplicacoes.FormCreate(Sender: TObject);
begin
  inherited;
  qryAgentes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsAgentes.close;
  cdsAgentes.Open;

  dblkcbbAgentes.KeyValue:= 0;

  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaAplicacoes.actLimparExecute(Sender: TObject);
begin
  inherited;
  with qryConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT I.CODIGO, I.USUARIO, I.AGENTE, A.NOME, I.TP_APLICACAO, TA.DESCRICAO AS "APLICACAO",');
      SQL.Add('I.DATA_APLIC, I.DATA_VENC, I.LIQUIDEZ, L.DESCRICAO AS "DESCLIQUIDEZ", I.INDICE,');
      SQL.Add('IX.DESCRICAO AS "INDEXADOR", C.CODIGO AS "COD_CATEGORIA", C.DESCRICAO AS "CATEGORIA",');
      SQL.Add('I.VALOR_APLICADO, I.TAXA_REMUNERACAO, I.ATIVO FROM TB_INVESTIMENTOS I');
      SQL.Add('INNER JOIN TB_AGENTES A ON (I.AGENTE = A.CODIGO)');
      SQL.Add('INNER JOIN TB_TIPOAPLICACOES TA ON (I.TP_APLICACAO = TA.CODIGO)');
      SQL.Add('INNER JOIN TB_TIPOLIQUIDEZ L ON (I.LIQUIDEZ = L.CODIGO)');
      SQL.Add('INNER JOIN TB_INDEXADOR IX ON (I.INDICE = IX.CODIGO)');
      SQL.Add('INNER JOIN TB_CATEGORIA_APLICACAO C ON (C.CODIGO = TA.CATEGORIA)');
      SQL.Add('WHERE I.USUARIO =:USUARIO AND I.ATIVO = ''S''');
      SQL.Add('ORDER BY I.DATA_APLIC');
      ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;

      cdsConsulta.Close;
      cdsConsulta.Open;
    end;

  dblkcbbAgentes.KeyValue:= 0;
  edtPesquisa.Clear;
  edtAnoVcto.Clear;
end;

procedure Tfrm_ConsultaAplicacoes.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  with qryConsulta do
    begin
      SQL.Clear;
      SQL.Add('SELECT I.CODIGO, I.USUARIO, I.AGENTE, A.NOME, I.TP_APLICACAO, TA.DESCRICAO AS "APLICACAO",');
      SQL.Add('I.DATA_APLIC, I.DATA_VENC, I.LIQUIDEZ, L.DESCRICAO AS "DESCLIQUIDEZ", I.INDICE,');
      SQL.Add('IX.DESCRICAO AS "INDEXADOR", C.CODIGO AS "COD_CATEGORIA", C.DESCRICAO AS "CATEGORIA",');
      SQL.Add('I.VALOR_APLICADO, I.TAXA_REMUNERACAO, I.ATIVO FROM TB_INVESTIMENTOS I');
      SQL.Add('INNER JOIN TB_AGENTES A ON (I.AGENTE = A.CODIGO)');
      SQL.Add('INNER JOIN TB_TIPOAPLICACOES TA ON (I.TP_APLICACAO = TA.CODIGO)');
      SQL.Add('INNER JOIN TB_TIPOLIQUIDEZ L ON (I.LIQUIDEZ = L.CODIGO)');
      SQL.Add('INNER JOIN TB_INDEXADOR IX ON (I.INDICE = IX.CODIGO)');
      SQL.Add('INNER JOIN TB_CATEGORIA_APLICACAO C ON (C.CODIGO = TA.CATEGORIA)');
      SQL.Add('WHERE I.USUARIO =:USUARIO');

      case grbtExibirStatus.ItemIndex of
        0: SQL.Add('AND I.ATIVO = ''S''');
        1: SQL.Add('AND I.ATIVO = ''N''');
      end;

      if (dblkcbbAgentes.KeyValue > 0) then
        begin
          SQL.Add('AND I.AGENTE =:COD_AGENTE');
        end;

      case cbbLocalizar.ItemIndex of
        0: SQL.Add('AND TA.DESCRICAO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%'));
        1: SQL.Add('AND C.DESCRICAO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%'));
        2: SQL.Add('AND IX.DESCRICAO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%'));
        3: SQL.Add('AND L.DESCRICAO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%'));
      end;

      if (edtAnoVcto.Text <> '') then
        SQL.Add('AND EXTRACT(YEAR FROM I.DATA_VENC) = ' + QuotedStr(edtAnoVcto.Text));

      case cbbOrdenarDados.ItemIndex of
        0: SQL.Add('ORDER BY A.NOME, I.DATA_APLIC');
        1: SQL.Add('ORDER BY TA.DESCRICAO');
        2: SQL.Add('ORDER BY I.DATA_APLIC');
      end;

      ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;

      if (dblkcbbAgentes.KeyValue > 0) then
        ParamByName('COD_AGENTE').AsInteger:= cdsAgentesCODIGO.AsInteger;

      cdsConsulta.Close;
      cdsConsulta.Open;
    end;
end;

procedure Tfrm_ConsultaAplicacoes.actAdcionarExecute(Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroAplicacao.Create(nil) do
    try
      ShowModal;
     
    finally
      FreeAndNil(frm_CadastroAplicacao);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaAplicacoes.actEditarExecute(Sender: TObject);
begin
  inherited;
  if cdsConsulta.IsEmpty then exit;

  if cdsConsultaCODIGO.AsInteger < 0 then exit;

  with Tfrm_CadastroAplicacao.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroAplicacao);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaAplicacoes.actDetalheExecute(Sender: TObject);
begin
  inherited;
  if cdsConsulta.IsEmpty then exit;

   if cdsConsultaCODIGO.AsInteger < 0 then exit;

  with Tfrm_ConsultaDetalheAplicacao.Create(nil) do
    try

      qryConsulta.ParamByName('CODAPLIC').AsInteger:= Self.cdsConsultaCODIGO.AsInteger;
      qryConsulta.Open;
      
      cdsConsulta.Close;
      cdsConsulta.Open;

      lblCodigoAplicacao.Caption:= intToStr(Self.cdsConsultaCODIGO.AsInteger);
      lblAgente.Caption:= 'Agente: ' + Self.cdsConsultaNOME.AsString;
      lblTipoAplicacao.Caption:= 'Aplicação: ' + Self.cdsConsultaAPLICACAO.AsString;
      lblData.Caption:= 'Data: ' + DateToStr(Self.cdsConsultaDATA_APLIC.Value);
      lblVencimento.Caption:= 'Vencimento: ' + DateToStr(Self.cdsConsultaDATA_VENC.Value);
      lblIndice.Caption:= 'Indice: ' + Self.cdsConsultaINDEXADOR.AsString;
      lblTaxa.Caption:= 'Taxa a.a.: ' + Self.cdsConsultaTAXA_REMUNERACAO.AsString + '%';
      lblValor.Caption:= 'Valor: ' + FormatCurr('R$ 0.0.0', cdsConsultaVALOR_APLICADO.AsCurrency);
      lblLiquidez.Caption:= 'Liquidez: ' + cdsConsultaDESCLIQUIDEZ.AsString;

      ShowModal;
    finally
      FreeAndNil(frm_ConsultaDetalheAplicacao);
    end;
end;

procedure Tfrm_ConsultaAplicacoes.edtAnoVctoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

end.








