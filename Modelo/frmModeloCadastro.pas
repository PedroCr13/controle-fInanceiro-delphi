unit frmModeloCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmModelo, ExtCtrls, Buttons, ImgList, ActnList, FMTBcd, DB,
  DBClient, Provider, SqlExpr, DBCtrls;

type
  TMotivoCadastro = (mCadastro, mEdicao);

type
  Tfrm_Cadastro = class(Tfrm_Modelo)
    pnl_BarraBotoes: TPanel;
    pnlCadastro: TPanel;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    actNovo: TAction;
    actSalvar: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    qryCadastro: TSQLQuery;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    actCancelar: TAction;
    btnCancelar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
  private
    procedure camposObrigatorios;
  public
    motivo: TMotivoCadastro;
  end;

var
  frm_Cadastro: Tfrm_Cadastro;

implementation

uses dmConexao;

{$R *.dfm}

procedure Tfrm_Cadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if cdsCadastro.State in [dsEdit, dsInsert] then
    begin
       if Application.MessageBox('O cadastro esta em edição, sair mesmo assim?',
          'Sair', 4 + MB_ICONQUESTION) = IDYES then
         begin
           cdsCadastro.Cancel;
           Close;
         end
       else
         Abort;
    end;
end;

procedure Tfrm_Cadastro.actNovoExecute(Sender: TObject);
begin
  inherited;
  if cdsCadastro.State in [dsBrowse] then
    cdsCadastro.Append
  else
    Abort;
end;

procedure Tfrm_Cadastro.actSalvarExecute(Sender: TObject);
begin
  inherited;
  if (cdsCadastro.State in [dsEdit, dsInsert]) then
    begin
      camposObrigatorios;

      cdsCadastro.Post;

      if cdsCadastro.ApplyUpdates(0) > 0 then
        begin
          Application.MessageBox('ERRO: Não foi possível salvar as informações '
              + 'no banco de dados!', 'Atenção!', 0 + MB_ICONEXCLAMATION);
          cdsCadastro.Edit;
          Abort;
        end
      else
        begin
          Application.MessageBox('Informações gravadas no banco de dados!',
              'Atenção', 0 + MB_ICONINFORMATION);
        end;
    end
  else
    Application.MessageBox('Registro não está em modo de Inserção ou Edição!',
        'Erro', 0 + MB_ICONEXCLAMATION);
end;

procedure Tfrm_Cadastro.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then
    begin
      Application.MessageBox('Não há registro para excluir!', 'Atenção!',
           0 + MB_ICONASTERISK);
      Exit;
    end;

  if not (cdsCadastro.State in [dsBrowse]) then Exit;

  if Application.MessageBox('Este registro será apagado permanentemente.'
      + 'Confirma exclusão?','Excluir', 4 + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES then
    begin
        cdsCadastro.Delete;
        
        if cdsCadastro.ApplyUpdates(0) > 0 then
          begin
            Application.MessageBox('Não foi possível excluir o registro! Verique se ele não esta uso'
              + ' por outros cadastros.', 'Atenção',
                0 + MB_ICONWARNING);
            cdsCadastro.CancelUpdates;
          end
        else
          Close;
    end;
end;

procedure Tfrm_Cadastro.actEditarExecute(Sender: TObject);
begin
  inherited;
  if ((cdsCadastro.State in [dsBrowse]) and not (cdsCadastro.IsEmpty)) then
    cdsCadastro.Edit
  else
    Abort;
end;

procedure Tfrm_Cadastro.actCancelarExecute(Sender: TObject);
begin
  inherited;
  if cdsCadastro.State in [dsInsert, dsEdit] then
    cdsCadastro.Cancel;

  if Application.MessageBox('Deseja fechar esta tela?', 'Cancelar',
    4 +  MB_ICONQUESTION + MB_DEFBUTTON1) = ID_YES then
    close;
end;

procedure Tfrm_Cadastro.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  btnNovo.Enabled  := not (cdsCadastro.State in [dsInsert, dsEdit]);
  btnSalvar.Enabled   := not (cdsCadastro.State in [dsBrowse]);
  btnExcluir.Enabled  := (cdsCadastro.State in [dsBrowse]) and (not (cdsCadastro.IsEmpty));
  btnEditar.Enabled   := (cdsCadastro.State in [dsBrowse]) and (not (cdsCadastro.IsEmpty));
  btnCancelar.Enabled := (cdsCadastro.State in [dsInsert, dsEdit]);
end;

procedure Tfrm_Cadastro.camposObrigatorios;
var i: Integer;
begin

  for i:= 0 to Pred(ComponentCount) do
    begin
      if (Components[i] is TDBEdit) then
        begin
          if cdsCadastro.FieldByName((Components[i] as TDBEdit).DataField).Required then
            begin
              if (Components[i] as TDBEdit).Text = '' then
                 begin
                   Application.MessageBox(PChar('Campo obrigatorio! '
                   + cdsCadastro.FieldByName((Components[i] as TDBEdit).DataField).DisplayLabel), 'Atenção!',
                   0 + MB_ICONWARNING);
                   Abort;
                 end;
            end;
        end;

      if (Components[i] is TDBLookupComboBox) then
        begin
          if cdsCadastro.FieldByName((Components[i] as TDBLookupComboBox).DataField).Required then
            begin
              if (Components[i] as TDBLookupComboBox).Text = '' then
                 begin
                   Application.MessageBox(PChar('Campo obrigatorio! '
                   + cdsCadastro.FieldByName((Components[i] as TDBLookupComboBox).DataField).DisplayLabel), 'Atenção!',
                   0 + MB_ICONWARNING);
                   Abort;
                 end;
            end;
        end;

      if (Components[i] is TDBComboBox) then
        begin
          if cdsCadastro.FieldByName((Components[i] as TDBComboBox).DataField).Required then
            begin
              if (Components[i] as TDBComboBox).Text = '' then
                 begin
                   Application.MessageBox(PChar('Campo obrigatorio! '
                   + cdsCadastro.FieldByName((Components[i] as TDBComboBox).DataField).DisplayLabel), 'Atenção!',
                   0 + MB_ICONWARNING);
                   Abort;
                 end;
            end;
        end;

      if (Components[i] is TDBRadioGroup) then
        begin
          if cdsCadastro.FieldByName((Components[i] as TDBRadioGroup).DataField).Required then
            begin
              if (Components[i] as TDBRadioGroup).Value = ''  then
                 begin
                   Application.MessageBox(PChar('Campo obrigatorio! '
                   + cdsCadastro.FieldByName((Components[i] as TDBRadioGroup).DataField).DisplayLabel), 'Atenção!',
                   0 + MB_ICONWARNING);
                   Abort;
                 end;
            end;
        end;
    end;

end;

end.
