unit frmConsultaContasBancarias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls;

type
  Tfrm_ConsultaContasBancarias = class(Tfrm_ConsultaModelo)
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    actAdicionar: TAction;
    actEditar: TAction;
    qryConsultaCODIGO: TIntegerField;
    qryConsultaNOME: TStringField;
    qryConsultaCONTA: TStringField;
    qryConsultaCOD_USUARIO: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaCONTA: TStringField;
    cdsConsultaCOD_USUARIO: TIntegerField;
    GroupBox2: TGroupBox;
    btnLimpar: TSpeedButton;
    edtPesquisa: TEdit;
    btnConfirmar: TSpeedButton;
    actPesquisar: TAction;
    actLimpar: TAction;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaContasBancarias: Tfrm_ConsultaContasBancarias;

implementation

uses frmCadastroContaBancaria, frmModeloCadastro, uUsuario;

{$R *.dfm}

procedure Tfrm_ConsultaContasBancarias.FormCreate(Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaContasBancarias.actAdicionarExecute(
  Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroContaBacaria.Create(nil) do
    try
      ShowModal;

    finally
      FreeAndNil(frm_CadastroContaBacaria);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaContasBancarias.actEditarExecute(Sender: TObject);
begin
  inherited;
  if cdsConsulta.IsEmpty then exit;

  with Tfrm_CadastroContaBacaria.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroContaBacaria);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaContasBancarias.actPesquisarExecute(
  Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';

  cdsConsulta.Filter:= 'NOME LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');

  cdsConsulta.Filtered:= True;
end;

procedure Tfrm_ConsultaContasBancarias.actLimparExecute(Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

end.
