inherited rel_RelatorioDespesasPeriodo: Trel_RelatorioDespesasPeriodo
  Caption = 'Despesas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    DataSource = dsRelatorio
    inherited RLBand1: TRLBand
      BandType = btHeader
    end
    inherited RLBand2: TRLBand
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawBottom = True
    end
    inherited RLBand3: TRLBand
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel5: TRLLabel
        Left = 11
        Top = 3
        Width = 42
        Height = 16
        AutoSize = False
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 57
        Top = 3
        Width = 91
        Height = 16
        AutoSize = False
        DataField = 'REF'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand4: TRLBand
      Top = 274
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 189
      Width = 718
      Height = 64
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataSource = dsDetalheMes
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 21
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLDBText4: TRLDBText
          Left = 608
          Top = 3
          Width = 99
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = dsDetalheMes
        end
        object RLDBText3: TRLDBText
          Left = 416
          Top = 3
          Width = 188
          Height = 16
          AutoSize = False
          DataField = 'CATEGORIA'
          DataSource = dsDetalheMes
        end
        object RLDBText2: TRLDBText
          Left = 13
          Top = 3
          Width = 76
          Height = 16
          AutoSize = False
          DataField = 'DATA'
          DataSource = dsDetalheMes
        end
        object RLDBText6: TRLDBText
          Left = 93
          Top = 3
          Width = 100
          Height = 16
          AutoSize = False
          DataField = 'LCTO'
          DataSource = dsDetalheMes
        end
        object RLDBText7: TRLDBText
          Left = 197
          Top = 3
          Width = 215
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = dsDetalheMes
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 21
        Width = 718
        Height = 21
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText5: TRLDBText
          Left = 607
          Top = 3
          Width = 100
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SUBTOTAL'
          DataSource = dsRelatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 416
          Top = 3
          Width = 189
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Subtotal Despesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 253
      Width = 718
      Height = 21
      BandType = btSummary
      object RLLabel7: TRLLabel
        Left = 416
        Top = 3
        Width = 189
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Total Despesas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotalRelatorio: TRLLabel
        Left = 607
        Top = 3
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited dsRelatorio: TDataSource
    OnDataChange = dsRelatorioDataChange
  end
  inherited cdsRelatorio: TClientDataSet
    Active = True
    object cdsRelatorioMES: TStringField
      FieldName = 'MES'
      Size = 10
    end
    object cdsRelatorioANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object cdsRelatorioSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRelatorioREF: TStringField
      FieldName = 'REF'
      Size = 21
    end
  end
  inherited qryRelatorio: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 42370d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 42633d
      end>
    SQL.Strings = (
      'SELECT MES,'
      '       ANO,'
      '       SUBTOTAL,'
      '       MES ||'#39'/'#39'|| ANO AS "REF"'
      'FROM SP_SUBTOTAL_DESPESA_MES_PERIODO(:CONTA, :DATAINI, :DATAFIM)')
    object qryRelatorioMES: TStringField
      FieldName = 'MES'
      Size = 10
    end
    object qryRelatorioANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qryRelatorioSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object qryRelatorioREF: TStringField
      FieldName = 'REF'
      Size = 21
    end
  end
  object qryDetalheMes: TSQLQuery
    DataSource = dsDetalheMes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT M.DATA,'
      '       L.LCTO,'
      '       M.DESCRICAO,'
      '       C.CATEGORIA,'
      '       M.VALOR'
      'FROM TB_MOVIMENTACAO M'
      'INNER JOIN TB_LANCAMENTOS L ON (L.CODIGO = M.COD_HISTORICO)'
      'INNER JOIN TB_CATEGORIA C ON (C.CODIGO = M.COD_CATEGORIA)'
      'WHERE M.CONTA =:CONTA'
      'AND EXTRACT(MONTH FROM M.DATA) =:MES'
      'AND EXTRACT(YEAR FROM M.DATA) =:ANO'
      'AND M.COD_CATEGORIA NOT IN (0)'
      'AND C.CREDITO_DEBITO = '#39'D'#39
      'ORDER BY M.DATA')
    SQLConnection = dm_Conexao.conConexao
    Left = 328
    Top = 264
    object qryDetalheMesDATA: TDateField
      FieldName = 'DATA'
    end
    object qryDetalheMesLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object qryDetalheMesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qryDetalheMesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryDetalheMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dspDetalheMes: TDataSetProvider
    DataSet = qryDetalheMes
    Left = 328
    Top = 304
  end
  object cdsDetalheMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalheMes'
    Left = 328
    Top = 344
    object cdsDetalheMesDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDetalheMesLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object cdsDetalheMesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsDetalheMesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsDetalheMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsDetalheMes: TDataSource
    DataSet = cdsDetalheMes
    Left = 328
    Top = 384
  end
end
