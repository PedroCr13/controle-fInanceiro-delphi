program SIE4;

uses
  Forms,
  frmPrincipal in 'frmPrincipal.pas' {frm_Principal},
  dmConexao in 'dmConexao.pas' {dm_Conexao: TDataModule},
  frmModelo in 'Modelo\frmModelo.pas' {frm_Modelo},
  frmModeloCadastro in 'Modelo\frmModeloCadastro.pas' {frm_Cadastro},
  frmModeloConsulta in 'Modelo\frmModeloConsulta.pas' {frm_ConsultaModelo},
  frmConsultaExtrato in 'Consultas\frmConsultaExtrato.pas' {frm_ConsultaExtratoBancario},
  frmCadastroMovimentacaoBacnaria in 'Cadastros\frmCadastroMovimentacaoBacnaria.pas' {frm_CadastroMovimentacaoBancaria},
  uMovimentacao in 'Bibliotecas\uMovimentacao.pas',
  uUsuario in 'Bibliotecas\uUsuario.pas',
  lib_Criptografia in 'Bibliotecas\lib_Criptografia.pas',
  lib_Email in 'Bibliotecas\lib_Email.pas',
  lib_Types in 'Bibliotecas\lib_Types.pas',
  u_cls_Extrato in 'Importacao\u_cls_Extrato.pas',
  u_FRM_ImportaExtratoArquivo in 'Importacao\u_FRM_ImportaExtratoArquivo.pas' {FRM_ImportaExtratoArquivo},
  u_GravaExtratoBD in 'Importacao\u_GravaExtratoBD.pas',
  u_lib_funcioesLeitura in 'Importacao\u_lib_funcioesLeitura.pas',
  u_lib_funcoes in 'Importacao\u_lib_funcoes.pas',
  relModelo in 'Modelo\relModelo.pas' {rel_RelatorioModelo},
  dlgModeloDialogo in 'Modelo\dlgModeloDialogo.pas' {dlgDialogoModelo},
  dlgImpressaoExtratoPeriodo in 'Dialogos\dlgImpressaoExtratoPeriodo.pas' {dlgImpressaoExtrato},
  relExtratoPeriodo in 'Relatorios\relExtratoPeriodo.pas' {rel_RelatorioExtratoPeriodo},
  dlgLogin in 'Dialogos\dlgLogin.pas' {dlg_Login},
  frmConsultaAplicacoes in 'Consultas\frmConsultaAplicacoes.pas' {frm_ConsultaAplicacoes},
  frmCadastroAplicacao in 'Cadastros\frmCadastroAplicacao.pas' {frm_CadastroAplicacao},
  uAplicacao in 'Bibliotecas\uAplicacao.pas',
  frmConsultaDetalheAplicacao in 'Consultas\frmConsultaDetalheAplicacao.pas' {frm_ConsultaDetalheAplicacao},
  lib_detalheAplicacao in 'Bibliotecas\lib_detalheAplicacao.pas',
  dlgCadastroDetalheAplicacao in 'Dialogos\dlgCadastroDetalheAplicacao.pas' {dlg_DetalheAplicacao},
  relCateiraInvestimentos in 'Relatorios\relCateiraInvestimentos.pas' {rel_RelatorioCarteiraInvestimentos},
  dlgRelatorioCarteira in 'Dialogos\dlgRelatorioCarteira.pas' {dlg_CarteiraInvestimetos},
  relAplicacoesSintetico in 'Relatorios\relAplicacoesSintetico.pas' {rel_RelatorioAplicacoesSintetico},
  dlgRelatoriosAplicacoes in 'Dialogos\dlgRelatoriosAplicacoes.pas' {dlg_DialogoRelatorioAplicacoes},
  uArquivoIni in 'Bibliotecas\uArquivoIni.pas',
  frrnCadastroBancosAgentes in 'Cadastros\frrnCadastroBancosAgentes.pas' {frm_CadastroBancosAgentes},
  uBancosAgentes in 'Bibliotecas\uBancosAgentes.pas',
  frmConsultaBancosAgentes in 'Consultas\frmConsultaBancosAgentes.pas' {frm_ConsultaBancosAgentes},
  frmCadastroCategorias in 'Cadastros\frmCadastroCategorias.pas' {frm_CadastroCatgorias},
  uCategoria in 'Bibliotecas\uCategoria.pas',
  frmConsultaCategoriasReceitasDespesas in 'Consultas\frmConsultaCategoriasReceitasDespesas.pas' {frm_ConsultaCategoriasReceitasDespesas},
  frmCadastroContaBancaria in 'Cadastros\frmCadastroContaBancaria.pas' {frm_CadastroContaBacaria},
  uContaBancaria in 'Bibliotecas\uContaBancaria.pas',
  frmConsultaContasBancarias in 'Consultas\frmConsultaContasBancarias.pas' {frm_ConsultaContasBancarias},
  frmCadastroLancamentoContas in 'Cadastros\frmCadastroLancamentoContas.pas' {frm_CadastroLancamentoConta},
  frmConsultaLancamentosContas in 'Consultas\frmConsultaLancamentosContas.pas' {frm_ConsultaLancamentosContas},
  frmCadastroEspecieInvestimentos in 'Cadastros\frmCadastroEspecieInvestimentos.pas' {frm_CadastroEspecieInvestimentos},
  uEspecieAplicacao in 'Bibliotecas\uEspecieAplicacao.pas',
  frmConsultaTiposAplicacoes in 'Consultas\frmConsultaTiposAplicacoes.pas' {frm_ConsultaTiposAplicacoes},
  frmConsultaDespesas in 'Consultas\frmConsultaDespesas.pas' {frm_ConsultaDespesas},
  frmCadastroCategoriasInvestimentos in 'Cadastros\frmCadastroCategoriasInvestimentos.pas' {frm_CadastroCategoriaInvestimentos},
  uCategoriaAplicacao in 'Bibliotecas\uCategoriaAplicacao.pas',
  frmConsultaCategoriaAplicacoes in 'Consultas\frmConsultaCategoriaAplicacoes.pas' {frm_ConsultaCategoriaAplicacoes},
  dlgDadosUsuario in 'Dialogos\dlgDadosUsuario.pas' {dlgDialogoDadosUsuario},
  frmCadastroUsuario in 'Cadastros\frmCadastroUsuario.pas' {frm_CadastroUsuario},
  relDespesasPeriodoAnalitico in 'Relatorios\relDespesasPeriodoAnalitico.pas' {rel_RelatorioDespesasPeriodo},
  dlgDespesasPeriodo in 'Dialogos\dlgDespesasPeriodo.pas' {dlgDialogoDespessasPeriodo},
  frm_HistoricoCarteiraAplicacoesPeriodo in 'Consultas\frm_HistoricoCarteiraAplicacoesPeriodo.pas' {frm_ConsultaHistoricoCarteira},
  dlgCompromissos in 'Dialogos\dlgCompromissos.pas' {dlgDialogoCompromissos},
  dlgEfetivaCompromisso in 'Dialogos\dlgEfetivaCompromisso.pas' {dlgDialogoEfetivaCompromisso},
  frmCadastroCompromissos in 'Cadastros\frmCadastroCompromissos.pas' {frm_CadastroCompromisso};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Controle Financeiro';
  Application.CreateForm(Tdm_Conexao, dm_Conexao);
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.Run;
end.
