inherited frm_CadastroUsuario: Tfrm_CadastroUsuario
  Left = 585
  Top = 254
  Caption = 'Usu'#225'rio'
  ClientHeight = 229
  ClientWidth = 355
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 199
    Width = 355
    inherited btnNovo: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnSalvar: TSpeedButton
      Left = 1
    end
    inherited btnEditar: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnExcluir: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnCancelar: TSpeedButton
      Left = 83
    end
  end
  inherited pnlCadastro: TPanel
    Width = 355
    Height = 199
    object lbl1: TLabel
      Left = 19
      Top = 26
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 19
      Top = 59
      Width = 33
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 19
      Top = 95
      Width = 32
      Height = 13
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 21
      Top = 163
      Width = 31
      Height = 13
      Caption = 'Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 19
      Top = 130
      Width = 37
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbedtCODIGO: TDBEdit
      Left = 72
      Top = 22
      Width = 67
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object dbedtNomeUsuario: TDBEdit
      Left = 72
      Top = 55
      Width = 262
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      MaxLength = 30
      TabOrder = 1
    end
    object dbedtLoginUsuario: TDBEdit
      Left = 72
      Top = 91
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LOGIN'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbedtEmailUsuario: TDBEdit
      Left = 72
      Top = 160
      Width = 265
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = dsCadastro
      MaxLength = 40
      TabOrder = 3
    end
    object dbedtSenhaUsuario: TDBEdit
      Left = 72
      Top = 124
      Width = 110
      Height = 21
      DataField = 'SENHA'
      DataSource = dsCadastro
      PasswordChar = '*'
      TabOrder = 4
    end
  end
  inherited ActionList1: TActionList
    Left = 200
    Top = 120
  end
  inherited ImageList1: TImageList
    Left = 200
    Top = 80
  end
  inherited qryCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT U.CODIGO,'
      '       U.NOME,'
      '       U.LOGIN,'
      '       U.SENHA,'
      '       U.EMAIL'
      'FROM TB_USUARIO U'
      'WHERE U.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryCadastroLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 15
    end
    object qryCadastroSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
    object qryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  inherited cdsCadastro: TClientDataSet
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCadastroLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Required = True
      Size = 15
    end
    object cdsCadastroSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
      Size = 6
    end
    object cdsCadastroEMAIL: TStringField
      DisplayLabel = 'Endere'#231'o de email'
      FieldName = 'EMAIL'
      Required = True
      Size = 100
    end
  end
end
