inherited frm_CadastroAplicacao: Tfrm_CadastroAplicacao
  Left = 414
  Top = 183
  Caption = 'Cadastro de Aplica'#231#227'o'
  ClientHeight = 297
  ClientWidth = 413
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 267
    Width = 413
  end
  inherited pnlCadastro: TPanel
    Width = 413
    Height = 267
    object Label1: TLabel
      Left = 16
      Top = 24
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
      Left = 16
      Top = 64
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
    object Label3: TLabel
      Left = 15
      Top = 126
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
    object Label5: TLabel
      Left = 15
      Top = 162
      Width = 48
      Height = 13
      Caption = 'Liquidez'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 199
      Width = 57
      Height = 13
      Caption = 'Indexador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 242
      Top = 200
      Width = 64
      Height = 13
      Caption = 'Taxa % a.a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 17
      Top = 235
      Width = 50
      Height = 13
      Caption = 'Valor R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 15
      Top = 94
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 183
      Top = 95
      Width = 98
      Height = 13
      Caption = 'Data Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 78
      Top = 20
      Width = 71
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 79
      Top = 59
      Width = 296
      Height = 21
      DataField = 'AGENTE'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsAgentes
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 79
      Top = 122
      Width = 297
      Height = 21
      DataField = 'TP_APLICACAO'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsTipoAplicacoes
      TabOrder = 2
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 79
      Top = 159
      Width = 153
      Height = 21
      DataField = 'LIQUIDEZ'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsTipoLiquidez
      TabOrder = 3
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 79
      Top = 196
      Width = 153
      Height = 21
      DataField = 'INDICE'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsIndexador
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 313
      Top = 196
      Width = 60
      Height = 21
      DataField = 'TAXA_REMUNERACAO'
      DataSource = dsCadastro
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 79
      Top = 231
      Width = 81
      Height = 21
      DataField = 'VALOR_APLICADO'
      DataSource = dsCadastro
      TabOrder = 6
    end
    object edtDataAplic: TDBEdit
      Left = 79
      Top = 92
      Width = 81
      Height = 21
      DataField = 'DATA_APLIC'
      DataSource = dsCadastro
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 291
      Top = 92
      Width = 84
      Height = 21
      DataField = 'DATA_VENC'
      DataSource = dsCadastro
      TabOrder = 8
    end
    object chkStatus: TDBCheckBox
      Left = 184
      Top = 22
      Width = 138
      Height = 17
      Caption = 'Status Ativo/Inativo'
      DataField = 'ATIVO'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited ActionList1: TActionList
    Left = 264
    Top = 232
  end
  inherited ImageList1: TImageList
    Left = 264
    Top = 192
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
      'SELECT I.CODIGO,'
      'I.USUARIO,'
      'I.AGENTE,'
      'I.TP_APLICACAO,'
      'I.DATA_APLIC,'
      'I.DATA_VENC,'
      'I.LIQUIDEZ,'
      'I.INDICE,'
      'I.VALOR_APLICADO,'
      'I.TAXA_REMUNERACAO,'
      'I.ATIVO'
      'FROM TB_INVESTIMENTOS I'
      'WHERE I.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object qryCadastroAGENTE: TIntegerField
      FieldName = 'AGENTE'
    end
    object qryCadastroTP_APLICACAO: TIntegerField
      FieldName = 'TP_APLICACAO'
    end
    object qryCadastroDATA_APLIC: TDateField
      FieldName = 'DATA_APLIC'
    end
    object qryCadastroDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
    end
    object qryCadastroLIQUIDEZ: TIntegerField
      FieldName = 'LIQUIDEZ'
    end
    object qryCadastroINDICE: TIntegerField
      FieldName = 'INDICE'
    end
    object qryCadastroVALOR_APLICADO: TFMTBCDField
      FieldName = 'VALOR_APLICADO'
      Precision = 15
      Size = 2
    end
    object qryCadastroTAXA_REMUNERACAO: TFMTBCDField
      FieldName = 'TAXA_REMUNERACAO'
      Precision = 15
      Size = 8
    end
    object qryCadastroATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  inherited cdsCadastro: TClientDataSet
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object cdsCadastroAGENTE: TIntegerField
      DisplayLabel = 'Agente'
      FieldName = 'AGENTE'
      Required = True
    end
    object cdsCadastroTP_APLICACAO: TIntegerField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'TP_APLICACAO'
      Required = True
    end
    object cdsCadastroDATA_APLIC: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA_APLIC'
      Required = True
    end
    object cdsCadastroDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
    end
    object cdsCadastroLIQUIDEZ: TIntegerField
      DisplayLabel = 'Liquidez'
      FieldName = 'LIQUIDEZ'
      Required = True
    end
    object cdsCadastroINDICE: TIntegerField
      DisplayLabel = 'Indixador'
      FieldName = 'INDICE'
      Required = True
    end
    object cdsCadastroVALOR_APLICADO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_APLICADO'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsCadastroTAXA_REMUNERACAO: TFMTBCDField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA_REMUNERACAO'
      Required = True
      Precision = 15
      Size = 8
    end
    object cdsCadastroATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
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
      '               A.NOME,'
      '               A.COD_USUARIO'
      'FROM TB_AGENTES A'
      'WHERE A.CODIGO > 0'
      'AND A.COD_USUARIO =:USUARIO'
      'ORDER BY A.NOME')
    SQLConnection = dm_Conexao.conConexao
    Left = 208
    Top = 32
    object qryAgentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryAgentesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryAgentesCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dspAgentes: TDataSetProvider
    DataSet = qryAgentes
    Left = 208
    Top = 72
  end
  object cdsAgentes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgentes'
    Left = 208
    Top = 112
    object cdsAgentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAgentesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAgentesCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dsAgentes: TDataSource
    DataSet = cdsAgentes
    OnStateChange = dsCadastroStateChange
    Left = 208
    Top = 152
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
      '             A.DESCRICAO,'
      '             A.COD_USUARIO'
      'FROM TB_TIPOAPLICACOES A'
      'WHERE A.CODIGO > 0'
      'AND A.COD_USUARIO =:USUARIO'
      'ORDER BY A.DESCRICAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 264
    Top = 32
    object qryTipoAplicacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryTipoAplicacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryTipoAplicacoesCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dspTipoAplicacoes: TDataSetProvider
    DataSet = qryTipoAplicacoes
    Left = 264
    Top = 72
  end
  object cdsTipoAplicacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoAplicacoes'
    Left = 264
    Top = 112
    object cdsTipoAplicacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTipoAplicacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoAplicacoesCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dsTipoAplicacoes: TDataSource
    DataSet = cdsTipoAplicacoes
    OnStateChange = dsCadastroStateChange
    Left = 264
    Top = 152
  end
  object qryTipoLiquidez: TSQLQuery
    DataSource = dsTipoLiquidez
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT L.CODIGO, L.DESCRICAO'
      'FROM TB_TIPOLIQUIDEZ L'
      'ORDER BY L.DESCRICAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 312
    Top = 32
    object qryTipoLiquidezCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryTipoLiquidezDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dspTipoLiquidez: TDataSetProvider
    DataSet = qryTipoLiquidez
    Left = 312
    Top = 72
  end
  object cdsTipoLiquidez: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoLiquidez'
    Left = 312
    Top = 112
    object cdsTipoLiquidezCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTipoLiquidezDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsTipoLiquidez: TDataSource
    DataSet = cdsTipoLiquidez
    OnStateChange = dsCadastroStateChange
    Left = 312
    Top = 152
  end
  object qryIndexador: TSQLQuery
    DataSource = dsIndexador
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT I.CODIGO, I.DESCRICAO'
      'FROM TB_INDEXADOR I'
      'ORDER BY I.DESCRICAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 384
    Top = 32
    object qryIndexadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryIndexadorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dspIndexador: TDataSetProvider
    DataSet = qryIndexador
    Left = 384
    Top = 72
  end
  object cdsIndexador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndexador'
    Left = 384
    Top = 112
    object cdsIndexadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsIndexadorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsIndexador: TDataSource
    DataSet = cdsIndexador
    OnStateChange = dsCadastroStateChange
    Left = 384
    Top = 152
  end
end
