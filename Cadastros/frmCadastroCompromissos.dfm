inherited frm_CadastroCompromisso: Tfrm_CadastroCompromisso
  Caption = 'Cadastro de Compromisso'
  ClientHeight = 218
  ClientWidth = 354
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 188
    Width = 354
    inherited btnCancelar: TSpeedButton
      Left = 368
      Visible = False
    end
  end
  inherited pnlCadastro: TPanel
    Width = 354
    Height = 188
    object lbl9: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbedtCODIGO1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl11: TLabel
      Left = 157
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Data Prevista'
      FocusControl = dbedtCODIGO1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl16: TLabel
      Left = 210
      Top = 59
      Width = 26
      Height = 13
      Caption = 'Lcto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl15: TLabel
      Left = 16
      Top = 58
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
    object lbl12: TLabel
      Left = 16
      Top = 96
      Width = 51
      Height = 13
      Caption = 'Hist'#243'rico'
      FocusControl = dbedtCODIGO1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl13: TLabel
      Left = 16
      Top = 129
      Width = 55
      Height = 13
      Caption = 'Categoria'
      FocusControl = dbedtCODIGO1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl14: TLabel
      Left = 16
      Top = 162
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = dbedtCODIGO1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbedtCODIGO1: TDBEdit
      Left = 80
      Top = 20
      Width = 65
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object dbedtDATA1: TDBEdit
      Left = 243
      Top = 20
      Width = 79
      Height = 21
      AutoSelect = False
      AutoSize = False
      DataField = 'DATA_EFETIVACAO'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbcbbTIPOLCTO1: TDBComboBox
      Left = 245
      Top = 55
      Width = 81
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'LCTO'
      DataSource = dsCadastro
      ItemHeight = 16
      Items.Strings = (
        'C'
        'D')
      TabOrder = 3
      OnChange = dbcbbTIPOLCTO1Change
    end
    object dblkcbbCOD_HISTORICO1: TDBLookupComboBox
      Left = 80
      Top = 93
      Width = 247
      Height = 21
      DataField = 'HISTORICO_COMPROMISSO'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'LCTO'
      ListSource = dsHistorico
      TabOrder = 4
    end
    object dblkcbbCOD_CATEGORIA1: TDBLookupComboBox
      Left = 80
      Top = 126
      Width = 247
      Height = 21
      DataField = 'CATEGORIA'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'CATEGORIA'
      ListSource = dsCategoria
      TabOrder = 5
    end
    object dbedtDESCRICAO1: TDBEdit
      Left = 80
      Top = 160
      Width = 247
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      TabOrder = 6
    end
    object dbedtVALOR1: TDBEdit
      Left = 80
      Top = 55
      Width = 118
      Height = 21
      DataField = 'VALOR'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object grp1: TGroupBox
      Left = 7
      Top = 186
      Width = 339
      Height = 52
      Caption = 'Parcelas'
      TabOrder = 7
      object lbl1: TLabel
        Left = 119
        Top = 22
        Width = 70
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chk1: TCheckBox
        Left = 12
        Top = 21
        Width = 97
        Height = 17
        Caption = 'Gerar Parcelas'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object se1: TSpinEdit
        Left = 192
        Top = 18
        Width = 57
        Height = 22
        Enabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 362
    Top = 59
  end
  inherited ImageList1: TImageList
    Left = 362
    Top = 19
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
      '       C.CONTA,'
      '       C.DATA_EFETIVACAO,'
      '       C.VALOR,'
      '       C.LCTO,'
      '       C.DESCRICAO,'
      '       C.HISTORICO_COMPROMISSO,'
      '       C.CATEGORIA,'
      '       C.DATA_CADASTRO'
      'FROM TB_COMPROMISSOS C'
      'WHERE C.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object qryCadastroDATA_EFETIVACAO: TDateField
      FieldName = 'DATA_EFETIVACAO'
    end
    object qryCadastroVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryCadastroLCTO: TStringField
      FieldName = 'LCTO'
      Size = 10
    end
    object qryCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryCadastroHISTORICO_COMPROMISSO: TIntegerField
      FieldName = 'HISTORICO_COMPROMISSO'
    end
    object qryCadastroCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object qryCadastroDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  inherited cdsCadastro: TClientDataSet
    Top = 111
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
    end
    object cdsCadastroDATA_EFETIVACAO: TDateField
      DisplayLabel = 'Data Prevista'
      FieldName = 'DATA_EFETIVACAO'
      Required = True
    end
    object cdsCadastroVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsCadastroLCTO: TStringField
      DisplayLabel = 'Lcto (debito ou credito)'
      FieldName = 'LCTO'
      Required = True
      Size = 10
    end
    object cdsCadastroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCadastroHISTORICO_COMPROMISSO: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO_COMPROMISSO'
      Required = True
    end
    object cdsCadastroCATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Required = True
    end
    object cdsCadastroDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object qryCategoria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT C.CODIGO, '
      '              C.CATEGORIA,'
      '              C.CREDITO_DEBITO,'
      '              C.COD_USUARIO'
      'FROM TB_CATEGORIA C'
      'WHERE C.COD_USUARIO =:USUARIO'
      'ORDER BY C.CATEGORIA')
    SQLConnection = dm_Conexao.conConexao
    Left = 203
    Top = 33
    object qryCategoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryCategoriaCREDITO_DEBITO: TStringField
      FieldName = 'CREDITO_DEBITO'
      FixedChar = True
      Size = 1
    end
    object qryCategoriaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object qryHistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT L.CODIGO, L.LCTO, L.MOVIMENTO, L.COD_USUARIO'
      'FROM TB_LANCAMENTOS L'
      'WHERE  L.COD_USUARIO =:USUARIO'
      'ORDER BY L.LCTO')
    SQLConnection = dm_Conexao.conConexao
    Left = 251
    Top = 33
    object qryHistoricoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryHistoricoLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object qryHistoricoMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryHistoricoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dspCategoria: TDataSetProvider
    DataSet = qryCategoria
    Left = 203
    Top = 73
  end
  object dspHistorico: TDataSetProvider
    DataSet = qryHistorico
    Left = 251
    Top = 73
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 203
    Top = 113
    object cdsCategoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsCategoriaCREDITO_DEBITO: TStringField
      FieldName = 'CREDITO_DEBITO'
      FixedChar = True
      Size = 1
    end
    object cdsCategoriaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistorico'
    Left = 251
    Top = 113
    object cdsHistoricoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsHistoricoLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object cdsHistoricoMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsHistoricoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 252
    Top = 153
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 203
    Top = 153
  end
end
