unit frmConsultaCategoriaAplicacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  Tfrm_ConsultaCategoriaAplicacoes = class(Tfrm_ConsultaModelo)
    qryConsultaCODIGO: TIntegerField;
    qryConsultaDESCRICAO: TStringField;
    qryConsultaCOD_USUARIO: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaCOD_USUARIO: TIntegerField;
    grp1: TGroupBox;
    btnLimpar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    edtPesquisa: TEdit;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    actAdicionar: TAction;
    actEditar: TAction;
    actPesquisar: TAction;
    actLimpar: TAction;
    lbl2: TLabel;
    procedure actAdicionarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaCategoriaAplicacoes: Tfrm_ConsultaCategoriaAplicacoes;

implementation

uses frmCadastroCategoriasInvestimentos, frmModeloCadastro, uUsuario;

{$R *.dfm}

procedure Tfrm_ConsultaCategoriaAplicacoes.actAdicionarExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroCategoriaInvestimentos.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_CadastroCategoriaInvestimentos);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaCategoriaAplicacoes.actEditarExecute(
  Sender: TObject);
begin
  inherited;
  if cdsConsultaCODIGO.AsInteger < 0 then exit;

  if cdsConsulta.IsEmpty then Exit;

  with Tfrm_CadastroCategoriaInvestimentos.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroCategoriaInvestimentos);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaCategoriaAplicacoes.FormShow(Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaCategoriaAplicacoes.actPesquisarExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';

  cdsConsulta.Filter:= 'DESCRICAO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');

  cdsConsulta.Filtered:= True;
end;

procedure Tfrm_ConsultaCategoriaAplicacoes.actLimparExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

end.
