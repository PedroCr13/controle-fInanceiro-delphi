inherited dlgDialogoDespessasPeriodo: TdlgDialogoDespessasPeriodo
  Caption = 'Despesas Per'#237'odo'
  ClientHeight = 135
  ClientWidth = 312
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 312
    Height = 101
    object grp1: TGroupBox
      Left = 1
      Top = 1
      Width = 310
      Height = 99
      Align = alClient
      TabOrder = 0
      object lblConta: TLabel
        Left = 10
        Top = 24
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
      object lbl1: TLabel
        Left = 10
        Top = 63
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
      object lbl2: TLabel
        Left = 154
        Top = 63
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
      object dblkcbbContas: TDBLookupComboBox
        Left = 59
        Top = 20
        Width = 214
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'CONTA'
        ListSource = dsContas
        TabOrder = 0
      end
      object dtpInicio: TDateTimePicker
        Left = 59
        Top = 57
        Width = 85
        Height = 21
        Date = 42626.963494293980000000
        Time = 42626.963494293980000000
        TabOrder = 1
      end
      object dtpFim: TDateTimePicker
        Left = 189
        Top = 57
        Width = 85
        Height = 21
        Date = 42626.963494293980000000
        Time = 42626.963494293980000000
        TabOrder = 2
      end
    end
  end
  inherited Panel2: TPanel
    Top = 101
    Width = 312
  end
  inherited ActionList1: TActionList
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
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
