inherited dlgImpressaoExtrato: TdlgImpressaoExtrato
  Caption = 'Impress'#227'o de Extrato'
  ClientHeight = 145
  ClientWidth = 292
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 292
    Height = 111
    object lblConta: TLabel
      Left = 10
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 55
      Width = 17
      Height = 13
      Caption = 'De'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 154
      Top = 55
      Width = 20
      Height = 13
      Caption = 'At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbbContas: TDBLookupComboBox
      Left = 59
      Top = 12
      Width = 214
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'CONTA'
      ListSource = dsContas
      TabOrder = 0
    end
    object edtInicio: TDateTimePicker
      Left = 59
      Top = 49
      Width = 85
      Height = 21
      Date = 42626.963494293980000000
      Time = 42626.963494293980000000
      TabOrder = 1
    end
    object edtFim: TDateTimePicker
      Left = 189
      Top = 49
      Width = 85
      Height = 21
      Date = 42626.963494293980000000
      Time = 42626.963494293980000000
      TabOrder = 2
    end
    object chkDadosExtrato: TCheckBox
      Left = 10
      Top = 88
      Width = 167
      Height = 17
      Caption = 'Apenas dados extrato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Top = 111
    Width = 292
  end
  inherited ActionList1: TActionList
    Left = 224
    Top = 88
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 224
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
    Left = 272
    Top = 24
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
    Left = 264
    Top = 56
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    Left = 264
    Top = 96
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
    Left = 264
    Top = 136
  end
end
