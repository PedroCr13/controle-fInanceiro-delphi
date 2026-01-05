inherited frm_CadastroEspecieInvestimentos: Tfrm_CadastroEspecieInvestimentos
  Caption = 'Esp'#233'cie de Investimentos'
  ClientHeight = 231
  ClientWidth = 414
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 201
    Width = 414
  end
  inherited pnlCadastro: TPanel
    Width = 414
    Height = 201
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
      Top = 62
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 22
      Top = 147
      Width = 104
      Height = 13
      Caption = 'Imposto de Renda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 23
      Top = 101
      Width = 55
      Height = 13
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TDBEdit
      Left = 130
      Top = 22
      Width = 67
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 131
      Top = 58
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      MaxLength = 24
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 133
      Top = 129
      Width = 260
      Height = 44
      Columns = 2
      DataField = 'IMPOSTO_RENDA'
      DataSource = dsCadastro
      Items.Strings = (
        'Incide I.R'
        'Isento de I.R')
      TabOrder = 2
      Values.Strings = (
        'S'
        'N')
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 131
      Top = 96
      Width = 261
      Height = 21
      DataField = 'CATEGORIA'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsCategoriaAplicacao
      TabOrder = 3
    end
  end
  inherited ActionList1: TActionList
    Left = 120
    Top = 72
  end
  inherited ImageList1: TImageList
    Left = 120
    Top = 32
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
      'SELECT T.CODIGO,'
      '       T.DESCRICAO,'
      '       T.CATEGORIA,'
      '       T.IMPOSTO_RENDA,'
      '       T.COD_USUARIO'
      'FROM TB_TIPOAPLICACOES T'
      'WHERE T.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryCadastroCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object qryCadastroIMPOSTO_RENDA: TStringField
      FieldName = 'IMPOSTO_RENDA'
      FixedChar = True
      Size = 1
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
    object cdsCadastroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object cdsCadastroCATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Required = True
    end
    object cdsCadastroIMPOSTO_RENDA: TStringField
      FieldName = 'IMPOSTO_RENDA'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object qryCategoriaAplicacao: TSQLQuery
    DataSource = dsCategoriaAplicacao
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT C.CODIGO, C.DESCRICAO, C.COD_USUARIO'
      'FROM TB_CATEGORIA_APLICACAO C'
      'WHERE C.CODIGO > 0'
      'AND COD_USUARIO=:USUARIO'
      'ORDER BY C.DESCRICAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 216
    Top = 32
    object qryCategoriaAplicacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCategoriaAplicacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryCategoriaAplicacaoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dspCategoriaAplicacao: TDataSetProvider
    DataSet = qryCategoriaAplicacao
    Left = 216
    Top = 72
  end
  object cdsCategoriaAplicacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoriaAplicacao'
    Left = 216
    Top = 112
    object cdsCategoriaAplicacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCategoriaAplicacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCategoriaAplicacaoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dsCategoriaAplicacao: TDataSource
    DataSet = cdsCategoriaAplicacao
    Left = 216
    Top = 152
  end
end
