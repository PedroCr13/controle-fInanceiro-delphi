unit frmModeloConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModelo, ImgList, ActnList, ExtCtrls, Grids, DBGrids, FMTBcd,
  DB, DBClient, Provider, SqlExpr;

type
  Tfrm_ConsultaModelo = class(Tfrm_Modelo)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaModelo: Tfrm_ConsultaModelo;

implementation

uses dmConexao;

{$R *.dfm}

end.
