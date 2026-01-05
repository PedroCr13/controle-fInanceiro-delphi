inherited dlg_DialogoRelatorioAplicacoes: Tdlg_DialogoRelatorioAplicacoes
  Caption = 'Impress'#227'o de Relat'#243'rio'
  ClientHeight = 190
  ClientWidth = 345
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 345
    Height = 157
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 343
      Height = 152
      Align = alTop
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Agente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object llblAplicacao: TLabel
        Left = 17
        Top = 58
        Width = 57
        Height = 13
        Caption = 'Aplica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 93
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
      object lbl1: TLabel
        Left = 19
        Top = 125
        Width = 67
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbbAgentes: TDBLookupComboBox
        Left = 92
        Top = 20
        Width = 236
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = dsAgentes
        TabOrder = 0
      end
      object cbbAplicacoes: TDBLookupComboBox
        Left = 92
        Top = 54
        Width = 236
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsTipoAplicacoes
        TabOrder = 1
      end
      object cbbCategorias: TDBLookupComboBox
        Left = 92
        Top = 89
        Width = 236
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsCategoriaAplicacao
        TabOrder = 2
      end
      object edtAnoVencimento: TEdit
        Left = 92
        Top = 120
        Width = 80
        Height = 21
        Hint = 'Ano do vencimento'
        MaxLength = 4
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyPress = edtAnoVencimentoKeyPress
      end
    end
  end
  inherited Panel2: TPanel
    Top = 157
    Width = 345
    Height = 33
  end
  inherited ActionList1: TActionList
    Left = 208
    Top = 64
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 208
    Top = 24
  end
  object qryAgentes: TSQLQuery
    DataSource = dsAgentes
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
      'WHERE A.COD_USUARIO =:USUARIO'
      'OR A.CODIGO = 0'
      'ORDER BY A.NOME')
    SQLConnection = dm_Conexao.conConexao
    Left = 248
    Top = 24
    object qryAgentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryAgentesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspAgentes: TDataSetProvider
    DataSet = qryAgentes
    Left = 248
    Top = 64
  end
  object cdsAgentes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgentes'
    Left = 248
    Top = 104
    object cdsAgentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAgentesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsAgentes: TDataSource
    DataSet = cdsAgentes
    Left = 248
    Top = 144
  end
  object qryTipoAplicacoes: TSQLQuery
    DataSource = dsTipoAplicacoes
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
      '       A.DESCRICAO'
      'FROM TB_TIPOAPLICACOES A'
      'WHERE A.COD_USUARIO =:USUARIO'
      'OR A.CODIGO = 0'
      'ORDER BY A.DESCRICAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 288
    Top = 24
    object qryTipoAplicacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryTipoAplicacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dspTipoAplicacoes: TDataSetProvider
    DataSet = qryTipoAplicacoes
    Left = 288
    Top = 64
  end
  object cdsTipoAplicacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoAplicacoes'
    Left = 288
    Top = 104
    object cdsTipoAplicacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTipoAplicacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsTipoAplicacoes: TDataSource
    DataSet = cdsTipoAplicacoes
    Left = 288
    Top = 144
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
      'SELECT C.CODIGO, C.DESCRICAO'
      'FROM TB_CATEGORIA_APLICACAO C'
      'WHERE C.COD_USUARIO =:USUARIO'
      'OR C.CODIGO = 0'
      'ORDER BY C.DESCRICAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 328
    Top = 24
    object qryCategoriaAplicacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCategoriaAplicacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dspCategoriaAplicacao: TDataSetProvider
    DataSet = qryCategoriaAplicacao
    Left = 328
    Top = 64
  end
  object cdsCategoriaAplicacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoriaAplicacao'
    Left = 328
    Top = 104
    object cdsCategoriaAplicacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCategoriaAplicacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsCategoriaAplicacao: TDataSource
    DataSet = cdsCategoriaAplicacao
    Left = 328
    Top = 144
  end
end
