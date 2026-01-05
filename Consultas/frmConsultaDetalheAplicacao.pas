unit frmConsultaDetalheAplicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModeloConsulta, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ActnList, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, TeeProcs,
  TeEngine, Chart, DbChart, Series;

type
  Tfrm_ConsultaDetalheAplicacao = class(Tfrm_ConsultaModelo)
    qryConsultaCOD: TIntegerField;
    qryConsultaCODINVESTIMENTO: TIntegerField;
    qryConsultaCRED: TFMTBCDField;
    qryConsultaDEB: TFMTBCDField;
    qryConsultaVALOR: TFMTBCDField;
    qryConsultaRENDIMENTO: TFMTBCDField;
    qryConsultaPERCENTUAL: TFMTBCDField;
    cdsConsultaCOD: TIntegerField;
    cdsConsultaCODINVESTIMENTO: TIntegerField;
    cdsConsultaCRED: TFMTBCDField;
    cdsConsultaDEB: TFMTBCDField;
    cdsConsultaRENDIMENTO: TFMTBCDField;
    cdsConsultaPERCENTUAL: TFMTBCDField;
    qryConsultaDATAREF: TDateField;
    cdsConsultaDATAREF: TDateField;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    actIncluir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    lblAgente: TLabel;
    lblTipoAplicacao: TLabel;
    lblData: TLabel;
    lblVencimento: TLabel;
    lblValor: TLabel;
    lblIndice: TLabel;
    lblTaxa: TLabel;
    lblCodigoAplicacao: TLabel;
    pnl1: TPanel;
    cdsConsultaDataAbrev: TStringField;
    lblLiquidez: TLabel;
    ScrollBox1: TScrollBox;
    cdsConsultaVALOR: TFMTBCDField;
    cht1: TChart;
    Series2: TLineSeries;
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PovoaGraficoDetalhe;
  end;

var
  frm_ConsultaDetalheAplicacao: Tfrm_ConsultaDetalheAplicacao;

implementation

uses dlgCadastroDetalheAplicacao, lib_detalheAplicacao, Math;

{$R *.dfm}

procedure Tfrm_ConsultaDetalheAplicacao.actIncluirExecute(Sender: TObject);
begin
  inherited;
  with Tdlg_DetalheAplicacao.Create(nil) do
    try
      Operacao:= opAdicionar;
      CodigoAplicacao:= StrToInt(lblCodigoAplicacao.Caption);
      ShowModal;
    finally
      FreeAndNil(dlg_DetalheAplicacao);
    end;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaDetalheAplicacao.actAlterarExecute(Sender: TObject);
begin
  inherited;
  if cdsConsulta.IsEmpty then exit;

  with Tdlg_DetalheAplicacao.Create(nil) do
    try
      Operacao:= opEdicao;

      CodigoDetalhe:= Self.cdsConsultaCOD.AsInteger;
      CodigoAplicacao:= Self.cdsConsultaCODINVESTIMENTO.AsInteger;
      edtData.Date:= Self.cdsConsultaDATAREF.Value;
      edtCreditos.Text:= CurrToStr(Self.cdsConsultaCRED.AsCurrency);
      edtDebitos.Text:=  CurrToStr(Self.cdsConsultaDEB.AsCurrency);
      edtValor.Text:= CurrToStr(Self.cdsConsultaVALOR.AsCurrency);

      ShowModal;
    finally
      FreeAndNil(dlg_DetalheAplicacao);
    end;

    cdsConsulta.Close;
    cdsConsulta.Open;
end;

procedure Tfrm_ConsultaDetalheAplicacao.actExcluirExecute(Sender: TObject);
var
  detalheAplic: TDetalheAplicacao;
begin
  inherited;

  if cdsConsulta.IsEmpty then
    Application.MessageBox('Não há dados para excluir!', 'Atenção!', 0 + MB_ICONEXCLAMATION)
  else
  if Application.MessageBox('[ATENÇÃO]** Confirma exclusão do registro? ** [ATENÇÃO]'
      + #13 + 'Verifique se a ausência deste dado influencia nos valores antes de prosseguir.'
      + #13 + 'Para cancelar esta ação responda "Não".', '**[ Atenção! ]** Exclusão',
      4 + MB_ICONWARNING + MB_DEFBUTTON2) = ID_Yes then
    begin
      if Application.MessageBox('Realmente deseja exluir?', '´`Última chance...',
        + 4 + MB_ICONWARNING + MB_DEFBUTTON2) = ID_No then exit;

      detalheAplic:= TDetalheAplicacao.Create;
      try
        detalheAplic.Codigo:= cdsConsultaCOD.AsInteger;

        if detalheAplic.Excluir then
          begin
            Application.MessageBox('Excluído com sucesso!', 'Atenção!', 0 + MB_ICONINFORMATION);
            Close;
          end
        else
          Application.MessageBox('Erro ao excluir registro!!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
      finally
        FreeAndNil(detalheAplic);
      end;
    end;
end;

procedure Tfrm_ConsultaDetalheAplicacao.cdsConsultaCalcFields(
  DataSet: TDataSet);
var dataRefDt: TDate;
begin
  inherited;
  dataRefDt:= StrToDate(cdsConsultaDATAREF.AsString);

  cdsConsultaDataAbrev.Value:= FormatDateTime('mm/yy', dataRefDt);
end;

procedure Tfrm_ConsultaDetalheAplicacao.PovoaGraficoDetalhe;
var
  cdsTemp: TClientDataSet;
begin
  cht1.Series[0].Clear;

  if not Assigned(cdsTemp) then
     cdsTemp:= TClientDataSet.Create(nil);

  cdsTemp.Data:= cdsConsulta.Data;

  with cdsTemp do
    begin
      First;

      while not cdsTemp.Eof do
        begin
          cht1.Series[0].Addy(cdsTemp.FIeldbyName('VALOR').AsCurrency,
               FormatDateTime('mm/yy', cdsTemp.FieldByName('DATAREF').AsDateTime));
          Next;
        end;
    end;

  if Assigned(cdsTemp) then
    FreeAndNil(cdsTemp);

end;

procedure Tfrm_ConsultaDetalheAplicacao.FormShow(Sender: TObject);
begin
  inherited;
  try
    PovoaGraficoDetalhe;
  except
    on E:Exception do
    raise Exception.Create(Format('Erro ao executar operação. Contate o desenvolvedor. Mensagem: '
        +#13+ '%s' , [e.Message]));
  end;
end;

end.
