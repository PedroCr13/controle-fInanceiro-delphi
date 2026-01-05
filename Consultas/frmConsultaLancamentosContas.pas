unit frmConsultaLancamentosContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, ActnList, DB, DBClient, Provider,
  SqlExpr, ImgList, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls;

type
  Tfrm_ConsultaLancamentosContas = class(Tfrm_ConsultaModelo)
    actAdicionar: TAction;
    actEditar: TAction;
    actPesquisar: TAction;
    actLimpar: TAction;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaLCTO: TStringField;
    qryConsultaMOVIMENTO: TStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaLCTO: TStringField;
    cdsConsultaMOVIMENTO: TStringField;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    GroupBox2: TGroupBox;
    btnLimpar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    cbbFiltro: TComboBox;
    edtPesquisa: TEdit;
    Label1: TLabel;
    qryConsultaCOD_USUARIO: TIntegerField;
    cdsConsultaCOD_USUARIO: TIntegerField;
    procedure actEditarExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaLancamentosContas: Tfrm_ConsultaLancamentosContas;

implementation

uses frmCadastroLancamentoContas, frmModeloCadastro, uUsuario;

{$R *.dfm}

procedure Tfrm_ConsultaLancamentosContas.actEditarExecute(Sender: TObject);
begin
  inherited;
  if cdsConsultaCODIGO.AsInteger < 0 then exit;

  if cdsConsulta.IsEmpty then exit;

  with Tfrm_CadastroLancamentoConta.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroLancamentoConta);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaLancamentosContas.actAdicionarExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroLancamentoConta.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_CadastroLancamentoConta);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaLancamentosContas.actPesquisarExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';

  case cbbFiltro.ItemIndex of
    1: //C
    cdsConsulta.Filter:= 'MOVIMENTO = ''C'' AND ';

    2: //D
    cdsConsulta.Filter:= 'MOVIMENTO = ''D'' AND ';
  end;

  cdsConsulta.Filter:= cdsConsulta.Filter + 'LCTO LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');

  cdsConsulta.Filtered:= True;
end;

procedure Tfrm_ConsultaLancamentosContas.actLimparExecute(Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

procedure Tfrm_ConsultaLancamentosContas.FormShow(Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

end.
