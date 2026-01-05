unit frmCadastroAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfrm_CadastroAplicacao = class(Tfrm_Cadastro)
    qryAgentes: TSQLQuery;
    dspAgentes: TDataSetProvider;
    cdsAgentes: TClientDataSet;
    dsAgentes: TDataSource;
    qryTipoAplicacoes: TSQLQuery;
    dspTipoAplicacoes: TDataSetProvider;
    cdsTipoAplicacoes: TClientDataSet;
    dsTipoAplicacoes: TDataSource;
    qryTipoLiquidez: TSQLQuery;
    dspTipoLiquidez: TDataSetProvider;
    cdsTipoLiquidez: TClientDataSet;
    dsTipoLiquidez: TDataSource;
    qryIndexador: TSQLQuery;
    dspIndexador: TDataSetProvider;
    cdsIndexador: TClientDataSet;
    dsIndexador: TDataSource;
    qryCadastroCODIGO: TIntegerField;
    qryCadastroUSUARIO: TIntegerField;
    qryCadastroAGENTE: TIntegerField;
    qryCadastroTP_APLICACAO: TIntegerField;
    qryCadastroDATA_APLIC: TDateField;
    qryCadastroDATA_VENC: TDateField;
    qryCadastroLIQUIDEZ: TIntegerField;
    qryCadastroINDICE: TIntegerField;
    qryCadastroVALOR_APLICADO: TFMTBCDField;
    qryCadastroTAXA_REMUNERACAO: TFMTBCDField;
    qryCadastroATIVO: TStringField;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroUSUARIO: TIntegerField;
    cdsCadastroAGENTE: TIntegerField;
    cdsCadastroTP_APLICACAO: TIntegerField;
    cdsCadastroDATA_APLIC: TDateField;
    cdsCadastroDATA_VENC: TDateField;
    cdsCadastroLIQUIDEZ: TIntegerField;
    cdsCadastroINDICE: TIntegerField;
    cdsCadastroVALOR_APLICADO: TFMTBCDField;
    cdsCadastroTAXA_REMUNERACAO: TFMTBCDField;
    cdsCadastroATIVO: TStringField;
    qryAgentesCODIGO: TIntegerField;
    qryAgentesNOME: TStringField;
    cdsAgentesCODIGO: TIntegerField;
    cdsAgentesNOME: TStringField;
    qryTipoAplicacoesCODIGO: TIntegerField;
    qryTipoAplicacoesDESCRICAO: TStringField;
    cdsTipoAplicacoesCODIGO: TIntegerField;
    cdsTipoAplicacoesDESCRICAO: TStringField;
    qryTipoLiquidezCODIGO: TIntegerField;
    qryTipoLiquidezDESCRICAO: TStringField;
    cdsTipoLiquidezCODIGO: TIntegerField;
    cdsTipoLiquidezDESCRICAO: TStringField;
    qryIndexadorCODIGO: TIntegerField;
    qryIndexadorDESCRICAO: TStringField;
    cdsIndexadorCODIGO: TIntegerField;
    cdsIndexadorDESCRICAO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    edtDataAplic: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    chkStatus: TDBCheckBox;
    qryAgentesCOD_USUARIO: TIntegerField;
    cdsAgentesCOD_USUARIO: TIntegerField;
    qryTipoAplicacoesCOD_USUARIO: TIntegerField;
    cdsTipoAplicacoesCOD_USUARIO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
  
  public
    { Public declarations }
  end;

var
  frm_CadastroAplicacao: Tfrm_CadastroAplicacao;

implementation

uses dmConexao, uUsuario, uAplicacao, dateUtils, lib_detalheAplicacao;

{$R *.dfm}

procedure Tfrm_CadastroAplicacao.FormShow(Sender: TObject);
begin
  inherited;
  qryAgentes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsAgentes.close;
  cdsAgentes.Open;

  qryTipoAplicacoes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsTipoAplicacoes.close;
  cdsTipoAplicacoes.Open;

  cdsTipoLiquidez.close;
  cdsTipoLiquidez.Open;

  cdsIndexador.close;
  cdsIndexador.Open;
 
  cdsCadastro.Close;
  cdsCadastro.Open;

  if motivo = mCadastro then
    actNovo.Execute;

  if motivo = mEdicao then
    actEditar.Execute;
end;

procedure Tfrm_CadastroAplicacao.actNovoExecute(Sender: TObject);
var
  a: TAplicacao;
begin
  inherited;
  A:= TAplicacao.Create;
  with A do
    try
      cdsCadastroCODIGO.AsInteger:= A.GeraCodigo;
    finally
      FreeAndNil(A);
    end;

   cdsCadastroUSUARIO.AsInteger:= UsuarioLogado.Codigo;

   edtDataAplic.Text:= DateToStr(Today);
end;

end.
