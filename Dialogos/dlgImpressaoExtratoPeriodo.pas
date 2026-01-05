unit dlgImpressaoExtratoPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls, FMTBcd,
  DBCtrls, StdCtrls, DB, DBClient, Provider, SqlExpr, ComCtrls;

type
  TdlgImpressaoExtrato = class(TdlgDialogoModelo)
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
    lblConta: TLabel;
    cbbContas: TDBLookupComboBox;
    Label1: TLabel;
    edtInicio: TDateTimePicker;
    Label2: TLabel;
    edtFim: TDateTimePicker;
    chkDadosExtrato: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgImpressaoExtrato: TdlgImpressaoExtrato;

implementation

uses uUsuario, relExtratoPeriodo, relModelo, Math, DateUtils;

{$R *.dfm}

procedure TdlgImpressaoExtrato.FormShow(Sender: TObject);
begin
  inherited;
  sqlContas.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  cdsContas.Close;
  cdsContas.Open;

  cbbContas.KeyValue:= -1;

  edtInicio.Date:= StartOfTheMonth(Today);
  edtFim.Date:= Today;
end;

procedure TdlgImpressaoExtrato.actConfirmarExecute(Sender: TObject);
begin
  inherited;

  if cbbContas.KeyValue < 1 then
    begin
      Application.MessageBox('Selecione uma conta!', '', 0 + MB_ICONEXCLAMATION);
      exit;
    end;

  with Trel_RelatorioExtratoPeriodo.Create(nil) do
    try
      qryRelatorio.ParamByName('CONTA').AsInteger:= cdsContasCODIGO.AsInteger;
      qryRelatorio.ParamByName('INICIO').AsDate:= edtInicio.Date;
      qryRelatorio.ParamByName('FIM').AsDate:= edtFim.Date;
      qryRelatorio.Open;

      cdsRelatorio.Close;
      cdsRelatorio.Open;

      if not cdsRelatorio.IsEmpty then
        begin
          rlbDescricao.Caption:= 'Extrato Por Périodo - De: ' + DateToStr(edtInicio.Date)
            + ' a ' + DateToStr(edtFim.Date);
            
          RLLabel3.Caption:= UsuarioLogado.Nome;

          if chkDadosExtrato.Checked then
            begin
              rlbCategoria.Visible:= False;
              rltxtCategoria.Visible:= False;
            end;

          RLReport1.Preview();
        end
      else
        Application.MessageBox('Não há dados para exibir!', 'Atenção!',
            0 + MB_ICONEXCLAMATION);

    finally
      FreeAndNil(rel_RelatorioExtratoPeriodo);
    end;
end;

end.
