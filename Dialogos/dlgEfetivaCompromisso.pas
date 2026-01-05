unit dlgEfetivaCompromisso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls,
  StdCtrls, ComCtrls, SqlExpr, Grids, DBGrids;

type
  TdlgDialogoEfetivaCompromisso = class(TdlgDialogoModelo)
    lblData: TLabel;
    lbl1: TLabel;
    dtpData: TDateTimePicker;
    edtValor: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure actConfirmarExecute(Sender: TObject);
  private
   procedure Efetiva(codigo: Integer; DataEfetiva: TDate; Valor: Currency);
  public
    CodigoCompromisso: Integer;
    DataCompromisso: TDate;
    ValorCompromisso: Currency;
  end;

var
  dlgDialogoEfetivaCompromissos: TdlgDialogoEfetivaCompromisso;

implementation

uses u_lib_funcoes, dmConexao;

{$R *.dfm}

{ TdlgDialogoEfetivaCompromisso }

procedure TdlgDialogoEfetivaCompromisso.Efetiva(codigo: Integer;
  DataEfetiva: TDate; Valor: Currency);
var
  qry: TSQLQuery;
begin
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := dm_Conexao.conConexao;
  qry.SQL.Clear;
  try
    qry.SQL.Add('EXECUTE PROCEDURE SP_EFETIVA_COMPROMISSO(:CODIGO, :DATA, :VALOR)');
    qry.ParamByName('CODIGO').Asinteger:= codigo;
    qry.ParamByName('DATA').AsDate:= DataEfetiva;
    qry.ParamByName('VALOR').AsCurrency:= Valor;
    qry.ExecSQL;

  finally
    qry.Free;
  end;
end;

procedure TdlgDialogoEfetivaCompromisso.FormShow(Sender: TObject);
begin
  inherited;
  dtpData.Date:= DataCompromisso;
  edtValor.Text:= CurrToStr(ValorCompromisso);
end;

procedure TdlgDialogoEfetivaCompromisso.actConfirmarExecute(
  Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Confirma efetivação do compromisso?', 'Atenção!', 4 + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES then
    begin
      Efetiva(CodigoCompromisso, dtpData.Date, StrToCurr(edtValor.Text));
      Close;
    end
  else
    close;
end;

end.
