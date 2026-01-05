inherited frm_CadastroBancosAgentes: Tfrm_CadastroBancosAgentes
  Left = 487
  Caption = 'Cadastro Bancos/Agentes'
  ClientHeight = 268
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 22
    Top = 54
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
  inherited pnl_BarraBotoes: TPanel
    Top = 238
  end
  inherited pnlCadastro: TPanel
    Height = 238
    object Label1: TLabel
      Left = 22
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
    object Label2: TLabel
      Left = 22
      Top = 95
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
    object Label3: TLabel
      Left = 22
      Top = 132
      Width = 23
      Height = 13
      Caption = 'Site'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 22
      Top = 199
      Width = 69
      Height = 13
      Caption = 'Observa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 22
      Top = 167
      Width = 51
      Height = 13
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 23
      Top = 59
      Width = 74
      Height = 13
      Caption = 'N'#186' Opera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TDBEdit
      Left = 104
      Top = 22
      Width = 67
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 91
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      MaxLength = 25
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 126
      Width = 265
      Height = 21
      CharCase = ecLowerCase
      DataField = 'SITE'
      DataSource = dsCadastro
      MaxLength = 30
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 160
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 104
      Top = 196
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OBS'
      DataSource = dsCadastro
      MaxLength = 35
      TabOrder = 4
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 104
    Top = 55
    Width = 81
    Height = 21
    DataField = 'NUEMRO_OPERACAO'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 248
    Top = 24
  end
  inherited ImageList1: TImageList
    Left = 208
    Top = 24
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
      'SELECT A.CODIGO,'
      '       A.NOME,'
      '       A.SITE,'
      '       A.OBS,'
      '       A.TELEFONE,'
      '       A.NUEMRO_OPERACAO,'
      '      A.COD_USUARIO'
      'FROM TB_AGENTES A'
      'WHERE A.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryCadastroSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object qryCadastroOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qryCadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 13
    end
    object qryCadastroNUEMRO_OPERACAO: TStringField
      FieldName = 'NUEMRO_OPERACAO'
      Size = 10
    end
    object qryCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  inherited cdsCadastro: TClientDataSet
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      Tag = 1
      DisplayLabel = 'Nome do Banco'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCadastroSITE: TStringField
      DisplayLabel = 'Site do banco'
      FieldName = 'SITE'
      Size = 100
    end
    object cdsCadastroOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsCadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object cdsCadastroNUEMRO_OPERACAO: TStringField
      FieldName = 'NUEMRO_OPERACAO'
      Size = 10
    end
    object cdsCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
end
