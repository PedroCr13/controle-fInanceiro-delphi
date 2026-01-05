unit frm_HistoricoCarteiraAplicacoesPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModelo, ImgList, ActnList, ComCtrls, Buttons, StdCtrls,
  ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  TeEngine, Series, TeeProcs, Chart, DbChart;

type
  Tfrm_ConsultaHistoricoCarteira = class(Tfrm_Modelo)
    pnl1: TPanel;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btnConfirmar: TSpeedButton;
    dtpInicio: TDateTimePicker;
    dtpFim: TDateTimePicker;
    pnl2: TPanel;
    dbgrd2: TDBGrid;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    qryConsultaMES_REF: TIntegerField;
    qryConsultaANO_REF: TIntegerField;
    qryConsultaSALDO: TFMTBCDField;
    cdsConsultaMES_REF: TIntegerField;
    cdsConsultaANO_REF: TIntegerField;
    actConfirmar: TAction;
    pnl3: TPanel;
    dbgrd1: TDBGrid;
    qryDetalheCarteiraMes: TSQLQuery;
    qryDetalheCarteiraMesAPLICACAO: TStringField;
    qryDetalheCarteiraMesVALOR: TFMTBCDField;
    qryDetalheCarteiraMesPERCENTUAL: TFMTBCDField;
    dspDetalheCarteiraMes: TDataSetProvider;
    cdsDetalheCarteiraMes: TClientDataSet;
    cdsDetalheCarteiraMesAPLICACAO: TStringField;
    cdsDetalheCarteiraMesPERCENTUAL: TFMTBCDField;
    dsDetalheCarteiraMes: TDataSource;
    pnl4: TPanel;
    dbcht2: TDBChart;
    btnPaginaAnteriorGrafico: TSpeedButton;
    btnAvancaPaginaGragico: TSpeedButton;
    cdsConsultalblanoMes: TStringField;
    Series1: TLineSeries;
    cdsConsultaSALDO: TFMTBCDField;
    pnl5: TPanel;
    cdsDetalheCarteiraMesVALOR: TFMTBCDField;
    chtCarteiraMensal: TChart;
    Series2: TPieSeries;
    qryConsultaAPORTADO: TFMTBCDField;
    cdsConsultaAPORTADO: TFMTBCDField;
    qryRendimentoMes: TSQLQuery;
    dspRendimentoMes: TDataSetProvider;
    cdsRendimentoMes: TClientDataSet;
    dsRendimentoMes: TDataSource;
    qryRendimentoMesAPLICACAO: TStringField;
    qryRendimentoMesVALOR: TFMTBCDField;
    qryRendimentoMesMES: TIntegerField;
    qryRendimentoMesANO: TIntegerField;
    cdsRendimentoMesAPLICACAO: TStringField;
    cdsRendimentoMesVALOR: TFMTBCDField;
    cdsRendimentoMesMES: TIntegerField;
    cdsRendimentoMesANO: TIntegerField;
    qryDetalheCarteiraMesCODIGOTPAPLICACAO: TIntegerField;
    cdsDetalheCarteiraMesCODIGOTPAPLICACAO: TIntegerField;
    qryDetalheCarteiraMesRENDIMENTO: TFMTBCDField;
    cdsDetalheCarteiraMesRENDIMENTO: TFMTBCDField;
    procedure actConfirmarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
    procedure dbgrd1DblClick(Sender: TObject);
  private
   
  public
    procedure alimentaGraficoCarteira(Aplicacao: String; Valor: Currency);
  end;

var
  frm_ConsultaHistoricoCarteira: Tfrm_ConsultaHistoricoCarteira;

implementation

uses uUsuario, DateUtils, Math, uAplicacao;

{$R *.dfm}

procedure Tfrm_ConsultaHistoricoCarteira.actConfirmarExecute(
  Sender: TObject);
begin
  inherited;
  qryConsulta.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  qryConsulta.ParamByName('DATA_INI').asDate:= dtpInicio.Date;
  qryConsulta.ParamByName('DATA_FIM').asDate:= dtpFim.Date;
  qryConsulta.Open;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure Tfrm_ConsultaHistoricoCarteira.FormShow(Sender: TObject);
begin
  inherited;
  dtpInicio.Date:= StartOfTheYear(Today);
  dtpFim.Date:= Today;
end;

procedure Tfrm_ConsultaHistoricoCarteira.dsConsultaDataChange(
  Sender: TObject; Field: TField);
var
  cdsTemp: TClientDataSet;
begin
  inherited;
  qryDetalheCarteiraMes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  qryDetalheCarteiraMes.ParamByName('MES').AsInteger:= cdsConsultaMES_REF.AsInteger;
  qryDetalheCarteiraMes.ParamByName('ANO').AsInteger:= cdsConsultaANO_REF.AsInteger;
  qryDetalheCarteiraMes.Open;

  cdsDetalheCarteiraMes.Close;
  cdsDetalheCarteiraMes.Open;

  chtCarteiraMensal.Series[0].Clear;

  if not Assigned(cdsTemp) then
    cdsTemp:= TClientDataSet.Create(nil);

  cdsTemp.Data := cdsDetalheCarteiraMes.Data;

  //povoa gráfico
  with cdsTemp do
    begin
      first;

      while cdsTemp.FieldByName('APLICACAO').Value <> 'TOTAL' do
        begin
          alimentaGraficoCarteira(cdsTemp.FieldByName('APLICACAO').AsString,
            cdsTemp.FieldByName('VALOR').AsCurrency);
          Next;
        end;
    end;

  if Assigned(cdsTemp) then
    FreeAndNil(cdsTemp);

 // calculaRendimentoMes;

end;

procedure Tfrm_ConsultaHistoricoCarteira.cdsConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case cdsConsultaMES_REF.AsInteger of
    1: cdsConsultalblanoMes.AsString:= 'Jan';
    2: cdsConsultalblanoMes.AsString:= 'Fev';
    3: cdsConsultalblanoMes.AsString:= 'Mar';
    4: cdsConsultalblanoMes.AsString:= 'Abr';
    5: cdsConsultalblanoMes.AsString:= 'Mai';
    6: cdsConsultalblanoMes.AsString:= 'Jun';
    7: cdsConsultalblanoMes.AsString:= 'Jul';
    8: cdsConsultalblanoMes.AsString:= 'Ago';
    9: cdsConsultalblanoMes.AsString:= 'Set';
   10: cdsConsultalblanoMes.AsString:= 'Out';
   11: cdsConsultalblanoMes.AsString:= 'Nov';
   12: cdsConsultalblanoMes.AsString:= 'Dez';
  end;

  cdsConsultalblanoMes.AsString:= cdsConsultalblanoMes.AsString + '/' + IntToStr(cdsConsultaANO_REF.AsInteger);
end;

procedure Tfrm_ConsultaHistoricoCarteira.alimentaGraficoCarteira(
  Aplicacao: String; Valor: Currency);
begin
  chtCarteiraMensal.Series[0].Addy(Valor, Aplicacao);
end;

procedure Tfrm_ConsultaHistoricoCarteira.dbgrd1DblClick(Sender: TObject);
begin
  inherited;
  if cdsDetalheCarteiraMesCODIGOTPAPLICACAO.AsInteger < 0 then
    Exit;

  qryRendimentoMes.ParamByName('USUARIO').AsInteger:= UsuarioLogado.Codigo;
  qryRendimentoMes.ParamByName('TIPOAPLICACAO').AsInteger:= cdsDetalheCarteiraMesCODIGOTPAPLICACAO.AsInteger;
  qryRendimentoMes.ParamByName('ANO').AsInteger:= cdsConsultaANO_REF.AsInteger;
  qryRendimentoMes.ParamByName('MES').AsInteger:= cdsConsultaMES_REF.AsInteger;
  qryRendimentoMes.Open;

  cdsRendimentoMes.Close;
  cdsRendimentoMes.Open;

  Application.MessageBox(Pchar(cdsRendimentoMesAPLICACAO.AsString + '  R$ '
    + CurrToStr(cdsRendimentoMesVALOR.AsCurrency)), 'Rendimento Do Mês', 0 + MB_ICONINFORMATION);
end;

end.
