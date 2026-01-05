unit frmCadastroLancamentoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask;

type
  Tfrm_CadastroLancamentoConta = class(Tfrm_Cadastro)
    qryCadastroCODIGO: TIntegerField;
    qryCadastroLCTO: TStringField;
    qryCadastroMOVIMENTO: TStringField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroLCTO: TStringField;
    cdsCadastroMOVIMENTO: TStringField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    qryCadastroCOD_USUARIO: TIntegerField;
    cdsCadastroCOD_USUARIO: TIntegerField;
    procedure actNovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroLancamentoConta: Tfrm_CadastroLancamentoConta;

implementation

uses dmConexao, u_cls_Extrato, u_GravaExtratoBD, uUsuario;

{$R *.dfm}

procedure Tfrm_CadastroLancamentoConta.actNovoExecute(Sender: TObject);
var
  L: THistorico;
begin
  inherited;
  L:= THistorico.Create;
  with L do
    try
      cdsCadastroCODIGO.AsInteger:= L.GeraCodigo;
    finally
      FreeAndNil(L);
    end;

  cdsCadastroCOD_USUARIO.AsInteger:= UsuarioLogado.Codigo;
end;

procedure Tfrm_CadastroLancamentoConta.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroLancamentoConta.actSalvarExecute(Sender: TObject);
var
  L: THistorico;
begin
  if motivo = mCadastro then
    begin
      L:= THistorico.Create;
      try
        L.CodUsuario:= UsuarioLogado.Codigo;
        L.Lcto:= DBEdit1.Text;
        if L.HistoricoExiste then
          begin
            Application.MessageBox('Este lançamento já existe cadastrado!', '',
              0 + MB_ICONEXCLAMATION);
              exit;
          end;
      finally
        FreeAndNil(L);
      end;
    end;

  inherited;

end;

end.
