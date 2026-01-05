unit dlgCadastroDetalheAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls,
  StdCtrls, ComCtrls;

type
  TOperacao = (opAdicionar, opEdicao);

type
  Tdlg_DetalheAplicacao = class(TdlgDialogoModelo)
    Label1: TLabel;
    edtData: TDateTimePicker;
    Label2: TLabel;
    edtCreditos: TEdit;
    Label3: TLabel;
    edtDebitos: TEdit;
    Label4: TLabel;
    edtValor: TEdit;
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure incluirRegistro();
    procedure alterarRegistro();
  public
     Operacao: TOperacao;
     CodigoDetalhe: Integer;
     CodigoAplicacao: Integer;
  end;

var
  dlg_DetalheAplicacao: Tdlg_DetalheAplicacao;

implementation

uses lib_detalheAplicacao, DateUtils;

{$R *.dfm}

procedure Tdlg_DetalheAplicacao.actConfirmarExecute(Sender: TObject);
begin
  inherited;

  if edtCreditos.Text = '' then edtCreditos.Text:= '0,00';
  if edtDebitos.Text = '' then edtDebitos.Text:= '0,00';
  if edtValor.Text = '' then edtValor.Text:= '0,00';

  if Operacao = opAdicionar then
    incluirRegistro
  else
    alterarRegistro;
end;

procedure Tdlg_DetalheAplicacao.alterarRegistro;
var
  detalheAplic: TDetalheAplicacao;
begin
  detalheAplic:= TDetalheAplicacao.Create;

  with detalheAplic do
    try
      Codigo:= CodigoDetalhe;
      CodAplica:= CodigoAplicacao;
      DataAplic:= edtData.Date;
      Creditos:= StrToCurr(edtCreditos.Text);
      Debitos:= StrToCurr(edtDebitos.Text);
      SaldoAtual:= StrToCurr(edtValor.Text);

      if Autalizar then
        begin
          Application.MessageBox('Registro alterado com sucesso!', 'Atenção!',
              0 +  MB_ICONINFORMATION);
          Close;
        end
      else
        Application.MessageBox('Erro ao atualizar registro!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
    finally
      FreeAndNil(detalheAplic);
    end;
end;

procedure Tdlg_DetalheAplicacao.incluirRegistro;
var
  detalheAplic: TDetalheAplicacao;
begin
  detalheAplic:= TDetalheAplicacao.Create;

  with detalheAplic do
    try
      CodAplica:= CodigoAplicacao;
      DataAplic:= edtData.Date;
      Creditos:= StrToCurr(edtCreditos.Text);
      Debitos:= StrToCurr(edtDebitos.Text);
      SaldoAtual:= StrToCurr(edtValor.Text);

      if DataReferenciaExiste then
        begin
          Application.MessageBox('A data de referência já existe!', 'Atenção!',
              0 + MB_ICONEXCLAMATION);
        end
      else
        begin
          if Incluir then
            begin
              Application.MessageBox('Registro incluído com sucesso!', 'Atenção!',
                  0 + MB_ICONINFORMATION);
              Close;
            end;
        end;

    finally
      FreeAndNil(detalheAplic);
    end;
end;

procedure Tdlg_DetalheAplicacao.FormShow(Sender: TObject);
begin
  inherited;
  if Operacao = opAdicionar then
    edtData.Date:= Today;
end;

end.
