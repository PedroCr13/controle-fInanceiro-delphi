unit dlgDadosUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dlgModeloDialogo, ImgList, ActnList, Buttons, ExtCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, StdCtrls, Mask, DBCtrls;

type
  TdlgDialogoDadosUsuario = class(TdlgDialogoModelo)
    lbl3: TLabel;
    lbl4: TLabel;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDialogoDadosUsuario: TdlgDialogoDadosUsuario;

implementation

{$R *.dfm}

end.
