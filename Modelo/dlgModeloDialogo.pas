unit dlgModeloDialogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModelo, ImgList, ActnList, ExtCtrls, Buttons;

type
  TdlgDialogoModelo = class(Tfrm_Modelo)
    Panel1: TPanel;
    Panel2: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    actConfirmar: TAction;
    actCancelar: TAction;
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDialogoModelo: TdlgDialogoModelo;

implementation

{$R *.dfm}

procedure TdlgDialogoModelo.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
