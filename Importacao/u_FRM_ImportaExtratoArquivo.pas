unit u_FRM_ImportaExtratoArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,
  DB, DBClient, ImgList, Buttons, ActnList, DBCtrls, FMTBcd, Provider,
  SqlExpr;

type
  TFRM_ImportaExtratoArquivo = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cdsTempExtrato: TClientDataSet;
    cdsTempExtratoCONTA: TStringField;
    cdsTempExtratoHISTORICO: TStringField;
    cdsTempExtratoVALOR: TCurrencyField;
    cdsTempExtratoTPLCTO: TStringField;
    cdsTempExtratoNRDOC: TStringField;
    cdsTempExtratoDATA: TDateField;
    cdsTempExtratoSALDO: TCurrencyField;
    dsTempExtrato: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    act_CarregarArquivoINI: TAction;
    btnReiniciar: TSpeedButton;
    ImageList1: TImageList;
    act_ImportarParaBase: TAction;
    act_descartarDados: TAction;
    act_ExcluirLcto: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edtCarregaArquivo: TEdit;
    OpenDialog1: TOpenDialog;
    lbl1: TLabel;
    dblkcbbBANCO: TDBLookupComboBox;
    lbl2: TLabel;
    qryBancos: TSQLQuery;
    dspBancos: TDataSetProvider;
    cdsBancos: TClientDataSet;
    dsBancos: TDataSource;
    qryBancosCODIGO: TIntegerField;
    qryBancosNOME: TStringField;
    qryBancosCOD_USUARIO: TIntegerField;
    cdsBancosCODIGO: TIntegerField;
    cdsBancosNOME: TStringField;
    cdsBancosCOD_USUARIO: TIntegerField;
    procedure btnGravarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure act_CarregarArquivoINIExecute(Sender: TObject);
    procedure act_ImportarParaBaseExecute(Sender: TObject);
    procedure act_descartarDadosExecute(Sender: TObject);
    procedure act_ExcluirLctoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ImportaExtratoArquivo: TFRM_ImportaExtratoArquivo;

implementation

uses u_GravaExtratoBD, u_lib_funcioesLeitura, u_lib_funcoes, uUsuario,
  StdConvs;

{$R *.dfm}

procedure TFRM_ImportaExtratoArquivo.btnGravarClick(Sender: TObject);
begin
//  if Application.MessageBox('Confirma gravação do arquivo?', 'Atenção!', 4 + MB_iconQuestion) = ID_YES then
//    cdsTempExtrato.SaveToFile(ExtractFilePath(Application.ExeName) + 'Files\File.xml');
end;

procedure TFRM_ImportaExtratoArquivo.Button1Click(Sender: TObject);
begin
(*  if not FileExists(edtArquivoXML.FileName) then
    begin
      ShowMessage('Selecione um arquivo XML!');
      exit;
    end;

  cdsTempExtrato.LoadFromFile(edtArquivoXML.FileName);

  if chkCalculaSaldo.Checked then
    calculaSaldo(cdsTempExtrato, 'TPLCTO');  *)
end;

procedure TFRM_ImportaExtratoArquivo.act_CarregarArquivoINIExecute(
  Sender: TObject);
begin
    if dblkcbbBANCO.KeyValue <= 0  then
      begin
        Application.MessageBox('Selecione um banco!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
      end
    else
    if OpenDialog1.Execute then
      begin
        edtCarregaArquivo.Text:= OpenDialog1.FileName;
      end;

    if FileExists(edtCarregaArquivo.Text) then
      begin
        try
          LerArquivo(edtCarregaArquivo.Text, cdsTempExtrato)
        except

        end;
      end

    else
      ShowMessage('Arquivo não encontrado!');
end;

procedure TFRM_ImportaExtratoArquivo.act_ImportarParaBaseExecute(
  Sender: TObject);
var
  GravaExtrato: TImportaExtrato;
begin
  if cdsTempExtrato.IsEmpty then
    begin
      Application.MessageBox('Não há dados para importar!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
      Exit;
    end;

  if Application.MessageBox('Confirma gravação na base dados?',
     'Atenção!', 4 + MB_iconQuestion) = ID_no then
     Exit;

  GravaExtrato:= TImportaExtrato.Create;

  with GravaExtrato do
    try
      ExtratoOrigem:= cdsTempExtrato;
      UsuarioImportacao:= UsuarioLogado.Codigo;
      BancoImportacao:= cdsBancosCODIGO.AsInteger;
      persisteExtrato;
    finally
      FreeAndNil(GravaExtrato);
    end;

end;

procedure TFRM_ImportaExtratoArquivo.act_descartarDadosExecute(
  Sender: TObject);
begin
  cdsTempExtrato.EmptyDataSet;
end;

procedure TFRM_ImportaExtratoArquivo.act_ExcluirLctoExecute(
  Sender: TObject);
begin
  if not cdsTempExtrato.IsEmpty then
    cdsTempExtrato.Delete;
end;

procedure TFRM_ImportaExtratoArquivo.FormShow(Sender: TObject);
begin
   qryBancos.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
   cdsBancos.Close;
   cdsBancos.Open;
end;

end.
