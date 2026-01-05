inherited frm_CadastroContaBacaria: Tfrm_CadastroContaBacaria
  Caption = 'Conta Banc'#225'ria'
  ClientHeight = 172
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 142
  end
  inherited pnlCadastro: TPanel
    Height = 142
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
    object Label7: TLabel
      Left = 23
      Top = 61
      Width = 65
      Height = 13
      Caption = 'N'#250'mera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 100
      Width = 37
      Height = 13
      Caption = 'Banco'
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
    object edtConta: TDBEdit
      Left = 104
      Top = 58
      Width = 235
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTA'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object cbbBancos: TDBLookupComboBox
      Left = 104
      Top = 97
      Width = 237
      Height = 21
      DataField = 'BANCO'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsBancos
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 208
  end
  inherited ImageList1: TImageList
    Left = 208
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
      'SELECT C.CODIGO,'
      '               C.CONTA,'
      '               C.COD_USUARIO,'
      '               C.BANCO'
      'FROM TB_CONTAS C'
      'WHERE C.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    Top = 15
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroCONTA: TStringField
      FieldName = 'CONTA'
    end
    object qryCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object qryCadastroBANCO: TIntegerField
      FieldName = 'BANCO'
    end
  end
  inherited dspCadastro: TDataSetProvider
    Top = 55
  end
  inherited cdsCadastro: TClientDataSet
    Top = 95
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroCONTA: TStringField
      DisplayLabel = 'N'#250'mera'#231#227'o'
      FieldName = 'CONTA'
      Required = True
    end
    object cdsCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object cdsCadastroBANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Required = True
    end
  end
  inherited dsCadastro: TDataSource
    Top = 135
  end
  object qryBancos: TSQLQuery
    DataSource = dsBancos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT A.CODIGO,'
      '             A.NOME'
      'FROM TB_AGENTES A'
      'WHERE A.CODIGO >0'
      'AND A.COD_USUARIO =:USUARIO'
      'ORDER BY A.NOME')
    SQLConnection = dm_Conexao.conConexao
    Left = 256
    Top = 16
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspBancos: TDataSetProvider
    DataSet = qryBancos
    Left = 256
    Top = 56
  end
  object cdsBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBancos'
    Left = 256
    Top = 96
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsBancos: TDataSource
    DataSet = cdsBancos
    OnStateChange = dsCadastroStateChange
    Left = 256
    Top = 136
  end
end
