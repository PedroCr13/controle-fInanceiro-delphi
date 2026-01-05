unit frmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, jpeg, ExtCtrls, Buttons, ActnList, ImgList, DateUtils;

type
  Tfrm_Principal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Usurio1: TMenuItem;
    Cadatro1: TMenuItem;
    Bancos1: TMenuItem;
    Consulta2: TMenuItem;
    Divesos1: TMenuItem;
    Categorias1: TMenuItem;
    LancamentosConta1: TMenuItem;
    Aplicaes1: TMenuItem;
    ConsultadeAplicaes1: TMenuItem;
    RelatoriodeAplicao1: TMenuItem;
    RelatriodaCarteira1: TMenuItem;
    IndicesdeRemunerao1: TMenuItem;
    CategoriasdeLiquidez1: TMenuItem;
    ContaBancria1: TMenuItem;
    Movimentao1: TMenuItem;
    Extratoporperodo1: TMenuItem;
    Despesas1: TMenuItem;
    ConsultadeDespesas1: TMenuItem;
    RelatoriodeDespesas1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Image1: TImage;
    ContasBancarias1: TMenuItem;
    speciesdeAplicaes1: TMenuItem;
    CategoriasdeInvestimentos1: TMenuItem;
    btnConBancos: TSpeedButton;
    il1: TImageList;
    actlst1: TActionList;
    actConBancos: TAction;
    actGerenciarAplic: TAction;
    actRelAplicacoes: TAction;
    actMovBancaria: TAction;
    actConDespesas: TAction;
    btnMovBancaria: TSpeedButton;
    btnConDespesas: TSpeedButton;
    actSair: TAction;
    actCategoriaReceitasDespesas: TAction;
    btnGerenciarAplic: TSpeedButton;
    btnRelAplicacoes: TSpeedButton;
    btnSair: TSpeedButton;
    btnGerenciarAplic1: TSpeedButton;
    actExtratoPeriodo: TAction;
    btnMovBancaria1: TSpeedButton;
    actUsuario: TAction;
    HistoricoCarteiraAplicaes1: TMenuItem;
    procedure Sair2Click(Sender: TObject);
    procedure Movimentao1Click(Sender: TObject);
    procedure Extratoporperodo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsultadeAplicaes1Click(Sender: TObject);
    procedure RelatriodaCarteira1Click(Sender: TObject);
    procedure RelatoriodeAplicao1Click(Sender: TObject);
    procedure Consulta2Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure ContasBancarias1Click(Sender: TObject);
    procedure LancamentosConta1Click(Sender: TObject);
    procedure speciesdeAplicaes1Click(Sender: TObject);
    procedure ConsultadeDespesas1Click(Sender: TObject);
    procedure CategoriasdeInvestimentos1Click(Sender: TObject);
    procedure actMovBancariaExecute(Sender: TObject);
    procedure actGerenciarAplicExecute(Sender: TObject);
    procedure actConDespesasExecute(Sender: TObject);
    procedure actRelAplicacoesExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCategoriaReceitasDespesasExecute(Sender: TObject);
    procedure Cadatro1Click(Sender: TObject);
    procedure actExtratoPeriodoExecute(Sender: TObject);
    procedure RelatoriodeDespesas1Click(Sender: TObject);
    procedure actUsuarioExecute(Sender: TObject);
    procedure HistoricoCarteiraAplicaes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

uses frmConsultaExtrato, dlgImpressaoExtratoPeriodo, dlgLogin,
  frmConsultaAplicacoes, dlgRelatorioCarteira, dlgRelatoriosAplicacoes,
  dmConexao, frmConsultaBancosAgentes, frmCadastroCategorias,
  frmConsultaCategoriasReceitasDespesas, frmCadastroContaBancaria,
  frmConsultaContasBancarias, frmConsultaLancamentosContas,
  frmConsultaTiposAplicacoes, frmConsultaDespesas,
  frmCadastroCategoriasInvestimentos, frmConsultaCategoriaAplicacoes,
  frmCadastroUsuario, uUsuario, frmModelo, frmModeloCadastro,
  relDespesasPeriodoAnalitico, dlgDespesasPeriodo,
  frm_HistoricoCarteiraAplicacoesPeriodo;

{$R *.dfm}

procedure Tfrm_Principal.Sair2Click(Sender: TObject);
begin
  Application.Terminate
end;

procedure Tfrm_Principal.Movimentao1Click(Sender: TObject);
begin
  with Tfrm_ConsultaExtratoBancario.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_ConsultaExtratoBancario);
    end;
end;

procedure Tfrm_Principal.Extratoporperodo1Click(Sender: TObject);
begin
  with TdlgImpressaoExtrato.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlgImpressaoExtrato);
    end;
end;

procedure Tfrm_Principal.FormShow(Sender: TObject);
begin
  if not dm_Conexao.conConexao.Connected then
    Application.Terminate;


  with Tdlg_Login.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlg_Login);
    end;
end;

procedure Tfrm_Principal.ConsultadeAplicaes1Click(Sender: TObject);
begin
  with Tfrm_ConsultaAplicacoes.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaAplicacoes);
    end;
end;

procedure Tfrm_Principal.RelatriodaCarteira1Click(Sender: TObject);
begin
  with Tdlg_CarteiraInvestimetos.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlg_CarteiraInvestimetos);
    end;
end;

procedure Tfrm_Principal.RelatoriodeAplicao1Click(Sender: TObject);
begin
  with Tdlg_DialogoRelatorioAplicacoes.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlg_DialogoRelatorioAplicacoes);
    end;
end;

procedure Tfrm_Principal.Consulta2Click(Sender: TObject);
begin
  with Tfrm_ConsultaBancosAgentes.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaBancosAgentes);
    end;
end;

procedure Tfrm_Principal.Categorias1Click(Sender: TObject);
begin
  with Tfrm_ConsultaCategoriasReceitasDespesas.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaCategoriasReceitasDespesas);
    end;
end;

procedure Tfrm_Principal.ContasBancarias1Click(Sender: TObject);
begin
  with Tfrm_ConsultaContasBancarias.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaContasBancarias);
    end;
end;

procedure Tfrm_Principal.LancamentosConta1Click(Sender: TObject);
begin
  with Tfrm_ConsultaLancamentosContas.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaLancamentosContas);
    end;
end;

procedure Tfrm_Principal.speciesdeAplicaes1Click(Sender: TObject);
begin
  with Tfrm_ConsultaTiposAplicacoes.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaTiposAplicacoes);
    end;
end;

procedure Tfrm_Principal.ConsultadeDespesas1Click(Sender: TObject);
begin
  with Tfrm_ConsultaDespesas.Create(nil) do
    try
      ShowModal;
    finally
       if Assigned(frm_ConsultaDespesas) then
          FreeAndNil(frm_ConsultaDespesas);
    end;
end;

procedure Tfrm_Principal.CategoriasdeInvestimentos1Click(Sender: TObject);
begin
  with Tfrm_ConsultaCategoriaAplicacoes.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaCategoriaAplicacoes);
    end;
end;

procedure Tfrm_Principal.actMovBancariaExecute(Sender: TObject);
begin
  with Tfrm_ConsultaExtratoBancario.Create(nil) do
    try
      ShowModal;
    finally
      if Assigned(frm_ConsultaExtratoBancario) then
        FreeAndNil(frm_ConsultaExtratoBancario);
    end;
end;

procedure Tfrm_Principal.actGerenciarAplicExecute(Sender: TObject);
begin
  with Tfrm_ConsultaAplicacoes.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(frm_ConsultaAplicacoes);
    end;
end;

procedure Tfrm_Principal.actConDespesasExecute(Sender: TObject);
begin
  with Tfrm_ConsultaDespesas.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaDespesas);
    end;
end;

procedure Tfrm_Principal.actRelAplicacoesExecute(Sender: TObject);
begin
  with Tdlg_DialogoRelatorioAplicacoes.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlg_DialogoRelatorioAplicacoes);
    end;
end;

procedure Tfrm_Principal.actSairExecute(Sender: TObject);
begin
  if Application.MessageBox('Sair do sistema?', 'Sair', 4 + MB_ICONQUESTION) = ID_YES then
    Application.Terminate;
end;

procedure Tfrm_Principal.actCategoriaReceitasDespesasExecute(
  Sender: TObject);
begin
  with Tfrm_ConsultaCategoriasReceitasDespesas.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaCategoriasReceitasDespesas);
    end;
end;

procedure Tfrm_Principal.Cadatro1Click(Sender: TObject);
begin
  with Tfrm_CadastroUsuario.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= UsuarioLogado.Codigo;
      ShowModal;
    finally
       FreeAndNil(frm_CadastroUsuario);
    end;
end;

procedure Tfrm_Principal.actExtratoPeriodoExecute(Sender: TObject);
begin
  with TdlgImpressaoExtrato.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlgImpressaoExtrato);
    end;
end;

procedure Tfrm_Principal.RelatoriodeDespesas1Click(Sender: TObject);
begin
  with TdlgDialogoDespessasPeriodo.Create(nil) do
    try
      ShowModal;
    finally
      FreeAndNil(dlgDialogoDespessasPeriodo);
    end;
end;

procedure Tfrm_Principal.actUsuarioExecute(Sender: TObject);
begin
  with Tfrm_CadastroUsuario.Create(nil) do
    try
      motivo:= mEdicao;
      qryCadastro.ParamByName('CODIGO').AsInteger:= UsuarioLogado.Codigo;
      ShowModal;
    finally
       FreeAndNil(frm_CadastroUsuario);
    end;
end;

procedure Tfrm_Principal.HistoricoCarteiraAplicaes1Click(Sender: TObject);
begin
  with Tfrm_ConsultaHistoricoCarteira.Create(nil) do
    try
      ShowModal;
    finally
       FreeAndNil(frm_ConsultaHistoricoCarteira);
    end;
end;

end.
