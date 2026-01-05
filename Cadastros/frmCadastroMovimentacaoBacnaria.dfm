inherited frm_CadastroMovimentacaoBancaria: Tfrm_CadastroMovimentacaoBancaria
  Left = 465
  Top = 183
  Caption = 'Cadastro de Movimenta'#231#227'o Banc'#225'ria'
  ClientHeight = 305
  ClientWidth = 417
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 275
    Width = 417
  end
  inherited pnlCadastro: TPanel
    Width = 417
    Height = 275
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 60
      Width = 34
      Height = 13
      Caption = 'Conta'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 99
      Width = 28
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 175
      Width = 51
      Height = 13
      Caption = 'Hist'#243'rico'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 208
      Width = 55
      Height = 13
      Caption = 'Categoria'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 241
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 137
      Width = 50
      Height = 13
      Caption = 'Valor R$'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 210
      Top = 138
      Width = 26
      Height = 13
      Caption = 'Lcto'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAddHistorico: TSpeedButton
      Left = 335
      Top = 171
      Width = 23
      Height = 22
      Action = actAddHistorico
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00DDDDDD002D8439002C8538002C8538002C84
        3800DDDDDD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002B8F44002C8F45002C8F45002C8F
        4500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002B9B52002C9B53002C9B53002C9B
        5300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002BA760002CA760002CA760002CA7
        6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0095D6B40089D2AC0089D2AC008AD2AD002AAE69002BAE69002BAE69002BAE
        69008BD2AD0089D2AC0089D2AC0092D5B300FF00FF00FF00FF00FF00FF00D3EF
        E20029B5720029B5720029B5720029B5720029B5720029B5720029B5720029B5
        720029B5720029B5720029B5720029B57200CCECDD00FF00FF00FF00FF00D2F0
        E30027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC
        7B0027BC7B0027BC7B0027BC7B0027BC7B00CDEFE000FF00FF00FF00FF00D8F3
        E80023BF810023BF810023BF810023BF810024BF810024BF810024BF810024BF
        810023BF810023BF810023BF810023BF8100CEF0E200FF00FF00FF00FF00FF00
        FF00CEF1E400C3EEDE00C3EEDE00C3EEDE003BC7900020C1860020C1860035C6
        8D00C4EEDE00C3EEDE00C3EEDE00CBF0E200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0037C793001DC38A001DC38A0031C7
        9100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0034CA960019C68F0019C68F002EC9
        9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0030CC990015C8940015C8940029CA
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004AD2A80035CE9F0034CE9F004CD2
        A700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnAddCategoria: TSpeedButton
      Left = 335
      Top = 203
      Width = 23
      Height = 22
      Action = actAddCategoria
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00DDDDDD002D8439002C8538002C8538002C84
        3800DDDDDD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002B8F44002C8F45002C8F45002C8F
        4500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002B9B52002C9B53002C9B53002C9B
        5300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002BA760002CA760002CA760002CA7
        6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0095D6B40089D2AC0089D2AC008AD2AD002AAE69002BAE69002BAE69002BAE
        69008BD2AD0089D2AC0089D2AC0092D5B300FF00FF00FF00FF00FF00FF00D3EF
        E20029B5720029B5720029B5720029B5720029B5720029B5720029B5720029B5
        720029B5720029B5720029B5720029B57200CCECDD00FF00FF00FF00FF00D2F0
        E30027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC
        7B0027BC7B0027BC7B0027BC7B0027BC7B00CDEFE000FF00FF00FF00FF00D8F3
        E80023BF810023BF810023BF810023BF810024BF810024BF810024BF810024BF
        810023BF810023BF810023BF810023BF8100CEF0E200FF00FF00FF00FF00FF00
        FF00CEF1E400C3EEDE00C3EEDE00C3EEDE003BC7900020C1860020C1860035C6
        8D00C4EEDE00C3EEDE00C3EEDE00CBF0E200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0037C793001DC38A001DC38A0031C7
        9100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0034CA960019C68F0019C68F002EC9
        9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0030CC990015C8940015C8940029CA
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004AD2A80035CE9F0034CE9F004CD2
        A700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 20
      Width = 65
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object cbbContas: TDBLookupComboBox
      Left = 80
      Top = 56
      Width = 247
      Height = 21
      DataField = 'CONTA'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'CONTA'
      ListSource = dsContas
      TabOrder = 1
    end
    object edtData: TDBEdit
      Left = 80
      Top = 94
      Width = 79
      Height = 21
      DataField = 'DATA'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 80
      Top = 172
      Width = 247
      Height = 21
      DataField = 'COD_HISTORICO'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'LCTO'
      ListSource = dsHistorico
      TabOrder = 3
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 80
      Top = 205
      Width = 247
      Height = 21
      DataField = 'COD_CATEGORIA'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'CATEGORIA'
      ListSource = dsCategoria
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 239
      Width = 247
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 134
      Width = 118
      Height = 21
      DataField = 'VALOR'
      DataSource = dsCadastro
      TabOrder = 6
    end
    object cbbLancamento: TDBComboBox
      Left = 245
      Top = 134
      Width = 81
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'TIPOLCTO'
      DataSource = dsCadastro
      ItemHeight = 16
      Items.Strings = (
        'C'
        'D')
      TabOrder = 7
      OnChange = cbbLancamentoChange
    end
  end
  inherited ActionList1: TActionList
    Left = 304
    Top = 8
    object actAddHistorico: TAction
      ImageIndex = 27
      OnExecute = actAddHistoricoExecute
    end
    object actAddCategoria: TAction
      ImageIndex = 27
      OnExecute = actAddCategoriaExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 376
    Top = 8
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
      'SELECT M.CODIGO,'
      '       M.CONTA,'
      '       M.DATA,'
      '       M.VALOR,'
      '       M.TIPOLCTO,'
      '       M.SALDO,'
      '       M.DESCRICAO,'
      '       M.COD_HISTORICO,'
      '       M.COD_CATEGORIA'
      'FROM TB_MOVIMENTACAO M'
      'WHERE M.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    Left = 248
    Top = 56
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object qryCadastroDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/00;0;_'
    end
    object qryCadastroVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryCadastroTIPOLCTO: TStringField
      FieldName = 'TIPOLCTO'
      Size = 3
    end
    object qryCadastroSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object qryCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qryCadastroCOD_HISTORICO: TIntegerField
      FieldName = 'COD_HISTORICO'
    end
    object qryCadastroCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
  end
  inherited dspCadastro: TDataSetProvider
    Left = 248
    Top = 96
  end
  inherited cdsCadastro: TClientDataSet
    Left = 248
    Top = 136
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Required = True
    end
    object cdsCadastroDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object cdsCadastroVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsCadastroTIPOLCTO: TStringField
      DisplayLabel = 'Lcto'
      FieldName = 'TIPOLCTO'
      Size = 3
    end
    object cdsCadastroSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object cdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCadastroCOD_HISTORICO: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'COD_HISTORICO'
      Required = True
    end
    object cdsCadastroCOD_CATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'COD_CATEGORIA'
      Required = True
    end
  end
  inherited dsCadastro: TDataSource
    Left = 248
    Top = 176
  end
  object sqlContas: TSQLQuery
    DataSource = dsContas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT C.CODIGO,'
      '       C.CONTA,'
      '       C.COD_USUARIO'
      'FROM TB_CONTAS C'
      'WHERE C.COD_USUARIO =:USUARIO'
      'ORDER BY C.CODIGO')
    SQLConnection = dm_Conexao.conConexao
    Left = 296
    Top = 56
    object sqlContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlContasCONTA: TStringField
      FieldName = 'CONTA'
    end
    object sqlContasCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sqlContas
    Left = 296
    Top = 96
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    Left = 296
    Top = 136
    object cdsContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsContasCONTA: TStringField
      FieldName = 'CONTA'
    end
    object cdsContasCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 296
    Top = 176
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
    Left = 336
    Top = 56
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
    Left = 384
    Top = 56
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
    Left = 336
    Top = 96
  end
  object dspHistorico: TDataSetProvider
    DataSet = qryHistorico
    Left = 384
    Top = 96
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 336
    Top = 136
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
    Left = 384
    Top = 136
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
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 336
    Top = 176
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 384
    Top = 176
  end
end
