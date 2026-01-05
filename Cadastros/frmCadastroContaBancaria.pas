unit frmCadastroContaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfrm_CadastroContaBacaria = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroCONTA: TStringField;
    qryCadastroCOD_USUARIO: TIntegerField;
    qryCadastroBANCO: TIntegerField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroCONTA: TStringField;
    cdsCadastroCOD_USUARIO: TIntegerField;
    cdsCadastroBANCO: TIntegerField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label7: TLabel;
    Label2: TLabel;
    edtConta: TDBEdit;
    cbbBancos: TDBLookupComboBox;
    qryBancos: TSQLQuery;
    IntegerField1: TIntegerField;
    qryCadastroNOME: TStringField;
    dspBancos: TDataSetProvider;
    cdsBancos: TClientDataSet;
    IntegerField2: TIntegerField;
    cdsCadastroNOME: TStringField;
    dsBancos: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroContaBacaria: Tfrm_CadastroContaBacaria;

implementation

uses dmConexao, uContaBancaria, uUsuario;

{$R *.dfm}

procedure Tfrm_CadastroContaBacaria.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;

  qryBancos.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsBancos.Close;
  cdsBancos.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroContaBacaria.actNovoExecute(Sender: TObject);
var
  C: TContaBancaria;
begin
  inherited;
  C:= TContaBancaria.Create;
  with C do
    try
      cdsCadastroCODIGO.AsInteger:= C.GeraCodigo;
    finally
      FreeAndNil(C);
    end;

  cdsCadastroCOD_USUARIO.AsInteger:= UsuarioLogado.Codigo;
end;

end.
