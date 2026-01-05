unit frmConsultaTiposAplicacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, ActnList, DB, DBClient, Provider,
  SqlExpr, ImgList, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  Tfrm_ConsultaTiposAplicacoes = class(Tfrm_ConsultaModelo)
    actAdicionar: TAction;
    actEditar: TAction;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    GroupBox2: TGroupBox;
    btnLimpar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    Label1: TLabel;
    edtPesquisa: TEdit;
    cbbFiltro: TComboBox;
    actPesquisar: TAction;
    actLimpar: TAction;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaDESCRICAO: TStringField;
    qryConsultaCATEGORIA: TIntegerField;
    qryConsultaDESC_CATEGORIA: TStringField;
    qryConsultaIMPOSTO_RENDA: TStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaCATEGORIA: TIntegerField;
    cdsConsultaDESC_CATEGORIA: TStringField;
    cdsConsultaIMPOSTO_RENDA: TStringField;
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
  frm_ConsultaTiposAplicacoes: Tfrm_ConsultaTiposAplicacoes;

implementation

uses frmCadastroEspecieInvestimentos, frmModeloCadastro, uUsuario;

{$R *.dfm}

procedure Tfrm_ConsultaTiposAplicacoes.actAdicionarExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroEspecieInvestimentos.Create(nil) do
    try
      ShowModal;

    finally
      FreeAndNil(frm_CadastroEspecieInvestimentos);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaTiposAplicacoes.actEditarExecute(Sender: TObject);
begin
  inherited;
 if cdsConsulta.IsEmpty then Exit;

  with Tfrm_CadastroEspecieInvestimentos.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroEspecieInvestimentos);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaTiposAplicacoes.FormShow(Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaTiposAplicacoes.actPesquisarExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';

  case cbbFiltro.ItemIndex of
    0: cdsConsulta.Filter:= 'DESCRICAO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');

    1: cdsConsulta.Filter:= 'DESC_CATEGORIA LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');
  end;

  cdsConsulta.Filtered:= True;
end;

procedure Tfrm_ConsultaTiposAplicacoes.actLimparExecute(Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

end.
