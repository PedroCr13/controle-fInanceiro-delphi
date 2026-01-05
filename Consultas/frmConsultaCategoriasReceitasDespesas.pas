unit frmConsultaCategoriasReceitasDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls;

type
  Tfrm_ConsultaCategoriasReceitasDespesas = class(Tfrm_ConsultaModelo)
    qryConsultaCODIGO: TIntegerField;
    qryConsultaCATEGORIA: TStringField;
    qryConsultaCREDITO_DEBITO: TStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaCATEGORIA: TStringField;
    cdsConsultaCREDITO_DEBITO: TStringField;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    actAdicionar: TAction;
    actEditar: TAction;
    cdsConsultagenero: TStringField;
    GroupBox2: TGroupBox;
    btnLimpar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    edtPesquisa: TEdit;
    actPesquisa: TAction;
    actLimpar: TAction;
    Label1: TLabel;
    cbbFiltro: TComboBox;
    qryConsultaCOD_USUARIO: TIntegerField;
    cdsConsultaCOD_USUARIO: TIntegerField;
    procedure actAdicionarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
    procedure actPesquisaExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaCategoriasReceitasDespesas: Tfrm_ConsultaCategoriasReceitasDespesas;

implementation

uses frmCadastroCategorias, frmModeloCadastro, uUsuario;

{$R *.dfm}

procedure Tfrm_ConsultaCategoriasReceitasDespesas.actAdicionarExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroCatgorias.Create(nil) do
    try
      ShowModal;

    finally
      FreeAndNil(frm_CadastroCatgorias);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaCategoriasReceitasDespesas.actEditarExecute(
  Sender: TObject);
begin
  inherited;
 if cdsConsultaCODIGO.AsInteger < 0 then exit;

 if cdsConsulta.IsEmpty then exit;

  with Tfrm_CadastroCatgorias.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroCatgorias);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaCategoriasReceitasDespesas.FormCreate(
  Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaCategoriasReceitasDespesas.cdsConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if cdsConsultaCREDITO_DEBITO.AsString = 'C' then
    cdsConsultagenero.AsString:= 'RECEITA'
  else
  if cdsConsultaCREDITO_DEBITO.AsString = 'D' then
    cdsConsultagenero.AsString:= 'DESPESA'
  else
  if cdsConsultaCREDITO_DEBITO.AsString = 'I' then
    cdsConsultagenero.AsString := 'INVESTIMENTO';
  if cdsConsultaCREDITO_DEBITO.AsString = 'R' then
    cdsConsultagenero.AsString := 'REINVESTIMENTO';
  if cdsConsultaCREDITO_DEBITO.AsString = 'N' then
    cdsConsultagenero.AsString := 'NÃO CONTABILIZA';
end;

procedure Tfrm_ConsultaCategoriasReceitasDespesas.actPesquisaExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';

  case cbbFiltro.ItemIndex of
    1: //desp.
    cdsConsulta.Filter:= 'CREDITO_DEBITO = ''D'' AND ';

    2: //rec
    cdsConsulta.Filter:= 'CREDITO_DEBITO = ''C'' AND ';

    3: //Investimentos/poupança
    cdsConsulta.Filter:= 'CREDITO_DEBITO = ''I'' AND '
  end;

  cdsConsulta.Filter:= cdsConsulta.Filter + 'CATEGORIA LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');

  cdsConsulta.Filtered:= True;
end;

procedure Tfrm_ConsultaCategoriasReceitasDespesas.actLimparExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

end.
