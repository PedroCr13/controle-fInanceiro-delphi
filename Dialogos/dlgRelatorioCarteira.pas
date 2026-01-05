unit dlgRelatorioCarteira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, StdCtrls, ImgList, ActnList, Buttons, ExtCtrls,
  DateUtils;

type
  Tdlg_CarteiraInvestimetos = class(TdlgDialogoModelo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbbMeses: TComboBox;
    edtAno: TEdit;
    Label2: TLabel;
    procedure actConfirmarExecute(Sender: TObject);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlg_CarteiraInvestimetos: Tdlg_CarteiraInvestimetos;

implementation

uses relCateiraInvestimentos, relModelo, uUsuario;

{$R *.dfm}

procedure Tdlg_CarteiraInvestimetos.actConfirmarExecute(Sender: TObject);
begin
  inherited;

  with Trel_RelatorioCarteiraInvestimentos.Create(nil) do
    try
      qryRelatorio.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
      qryRelatorio.ParamByName('ANO').AsInteger:= StrToInt(edtAno.Text);
      qryRelatorio.ParamByName('MES').AsInteger:= cbbMeses.ItemIndex + 1;
      qryRelatorio.Open;

      cdsRelatorio.Close;
      cdsRelatorio.Open;

      if not cdsRelatorio.IsEmpty then
        begin
          rlbDescricao.Caption:= 'Posição de Aplicações - ' + cbbMeses.Text + '/' +
            edtAno.Text;
          RLLabel3.Caption:= UsuarioLogado.Nome;

          RLReport1.Preview();
        end
      else
        Application.MessageBox('Não há dados para exibir!','Atenção!',
           0 + MB_ICONEXCLAMATION);
    finally
       FreeAndNil(rel_RelatorioCarteiraInvestimentos);
    end;
end;

procedure Tdlg_CarteiraInvestimetos.edtAnoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
    key:=#0
end;

procedure Tdlg_CarteiraInvestimetos.FormShow(Sender: TObject);
begin
  inherited;
  edtAno.Text:= FormatDateTime('yyyy', today);
end;

end.
