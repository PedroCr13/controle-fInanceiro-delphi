unit dlgDespesasPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls, DateUtils,
  ComCtrls, DBCtrls, StdCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdlgDialogoDespessasPeriodo = class(TdlgDialogoModelo)
    sqlContas: TSQLQuery;
    sqlContasCODIGO: TIntegerField;
    sqlContasCONTA: TStringField;
    sqlContasCOD_USUARIO: TIntegerField;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasCODIGO: TIntegerField;
    cdsContasCONTA: TStringField;
    cdsContasCOD_USUARIO: TIntegerField;
    dsContas: TDataSource;
    grp1: TGroupBox;
    lblConta: TLabel;
    dblkcbbContas: TDBLookupComboBox;
    lbl1: TLabel;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDialogoDespessasPeriodo: TdlgDialogoDespessasPeriodo;

implementation

uses relDespesasPeriodoAnalitico, uUsuario, u_lib_funcoes;

{$R *.dfm}

procedure TdlgDialogoDespessasPeriodo.FormShow(Sender: TObject);
begin
  inherited;
  sqlContas.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsContas.Close;
  cdsContas.Open;

  dblkcbbContas.KeyValue:= -1;

  dtpInicio.Date:= StartOfTheMonth(Today);
  dtpFim.Date:= Today;
end;

procedure TdlgDialogoDespessasPeriodo.actConfirmarExecute(Sender: TObject);
begin
  inherited;
  if  dblkcbbContas.KeyValue < 1 then
    begin
      Application.MessageBox('Selecione uma conta!', '', 0 + MB_ICONEXCLAMATION);
      exit;
    end;

  with Trel_RelatorioDespesasPeriodo.Create(nil) do
    try
      qryRelatorio.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
      qryRelatorio.ParamByName('DATAINI').asDate:= dtpInicio.Date;
      qryRelatorio.ParamByName('DATAFIM').asDate:= dtpFim.Date;
      qryRelatorio.Open;

      cdsRelatorio.Close;
      cdsRelatorio.Open;

      if not cdsRelatorio.IsEmpty then
        begin
          rlbDescricao.Caption:= 'Despesas Mesais Período - De: '
           +  DateToStr(dtpInicio.date) + ' a ' + DateToStr(dtpFim.Date);
          RLLabel3.Caption:= UsuarioLogado.Nome;

          lblTotalRelatorio.Caption:= 'R$ ' + CurrToStr(SomaAplicacoes(cdsRelatorio, 'SUBTOTAL'));

          RLReport1.Preview();
        end
      else
        Application.MessageBox('Não há dados para exibir!','Atenção!',
           0 + MB_ICONEXCLAMATION);
    finally
       FreeAndNil(rel_RelatorioDespesasPeriodo);
    end;
end;

end.
