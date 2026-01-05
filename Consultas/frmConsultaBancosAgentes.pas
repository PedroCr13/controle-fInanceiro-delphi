unit frmConsultaBancosAgentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, Buttons, StdCtrls;

type
  Tfrm_ConsultaBancosAgentes = class(Tfrm_ConsultaModelo)
    qryConsultaCODIGO: TIntegerField;
    qryConsultaNOME: TStringField;
    qryConsultaSITE: TStringField;
    qryConsultaOBS: TStringField;
    qryConsultaTELEFONE: TStringField;
    qryConsultaNUEMRO_OPERACAO: TStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaSITE: TStringField;
    cdsConsultaOBS: TStringField;
    cdsConsultaTELEFONE: TStringField;
    cdsConsultaNUEMRO_OPERACAO: TStringField;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    actAdcionar: TAction;
    actEditar: TAction;
    GroupBox2: TGroupBox;
    btnLimpar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    cbbLocalizar: TComboBox;
    edtPesquisa: TEdit;
    actPesquisar: TAction;
    actLimpar: TAction;
    procedure actAdcionarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaBancosAgentes: Tfrm_ConsultaBancosAgentes;

implementation

uses frrnCadastroBancosAgentes, frmModeloCadastro, uUsuario;

{$R *.dfm}

procedure Tfrm_ConsultaBancosAgentes.actAdcionarExecute(Sender: TObject);
begin
  inherited;
  with Tfrm_CadastroBancosAgentes.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_CadastroBancosAgentes);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaBancosAgentes.actEditarExecute(Sender: TObject);
begin
  inherited;
  if cdsConsultaCODIGO.AsInteger < 0 then exit;

  if cdsConsulta.IsEmpty then Exit;

  with Tfrm_CadastroBancosAgentes.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= cdsConsultaCODIGO.AsInteger;

      ShowModal;
    finally
      FreeAndNil(frm_CadastroBancosAgentes);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaBancosAgentes.FormCreate(Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaBancosAgentes.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  cdsConsulta.Filter:= '';

  case cbbLocalizar.ItemIndex of
    0:// numero operação
    begin
      cdsConsulta.Filter:= 'NUEMRO_OPERACAO LIKE ' + QuotedStr(edtPesquisa.Text);
    end;

    1://nome
    begin
      cdsConsulta.Filter:= 'NOME LIKE ' + QuotedStr('%' + edtPesquisa.Text + '%');
    end;

  end;

  cdsConsulta.Filtered:= True;
end;

procedure Tfrm_ConsultaBancosAgentes.actLimparExecute(Sender: TObject);
begin
  inherited;
  cdsConsulta.Filtered:= False;
  edtPesquisa.Clear;
end;

end.
