inherited rel_RelatorioExtratoPeriodo: Trel_RelatorioExtratoPeriodo
  Left = 333
  Top = 145
  Width = 840
  Caption = 'Extrato Banc'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    DataSource = dsRelatorio
    inherited RLBand3: TRLBand
      Top = 189
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLDBText1: TRLDBText
        Left = 2
        Top = 2
        Width = 69
        Height = 16
        AutoSize = False
        DataField = 'DATA_MOV'
        DataSource = dsRelatorio
      end
      object RLDBText2: TRLDBText
        Left = 84
        Top = 2
        Width = 157
        Height = 16
        AutoSize = False
        DataField = 'HISTORICO_MOV'
        DataSource = dsRelatorio
      end
      object rltxtCategoria: TRLDBText
        Left = 246
        Top = 2
        Width = 211
        Height = 16
        AutoSize = False
        DataField = 'CATEGORIA'
        DataSource = dsRelatorio
      end
      object RLDBText5: TRLDBText
        Left = 465
        Top = 2
        Width = 89
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_MOV'
        DataSource = dsRelatorio
      end
      object RLDBText6: TRLDBText
        Left = 556
        Top = 1
        Width = 17
        Height = 16
        AutoSize = False
        DataField = 'TPLCTO_MOV'
        DataSource = dsRelatorio
      end
      object RLDBText7: TRLDBText
        Left = 594
        Top = 1
        Width = 97
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SALDO_MOV'
        DataSource = dsRelatorio
      end
      object RLDBText8: TRLDBText
        Left = 694
        Top = 1
        Width = 17
        Height = 16
        AutoSize = False
        DataField = 'SALDO_POS_NEG'
        DataSource = dsRelatorio
      end
    end
    inherited RLBand4: TRLBand
      Top = 210
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 168
      Width = 718
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel6: TRLLabel
        Left = 84
        Top = 3
        Width = 108
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hist'#243'rico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbCategoria: TRLLabel
        Left = 247
        Top = 2
        Width = 210
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 2
        Width = 68
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 463
        Top = 2
        Width = 90
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 556
        Top = 2
        Width = 20
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 594
        Top = 2
        Width = 98
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 695
        Top = 2
        Width = 18
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited cdsRelatorio: TClientDataSet
    Active = True
    object cdsRelatorioCOD_LCTO: TIntegerField
      FieldName = 'COD_LCTO'
    end
    object cdsRelatorioDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object cdsRelatorioHISTORICO_MOV: TStringField
      FieldName = 'HISTORICO_MOV'
      Size = 100
    end
    object cdsRelatorioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsRelatorioCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object cdsRelatorioVALOR_MOV: TFMTBCDField
      FieldName = 'VALOR_MOV'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRelatorioTPLCTO_MOV: TStringField
      FieldName = 'TPLCTO_MOV'
      FixedChar = True
      Size = 10
    end
    object cdsRelatorioSALDO_MOV: TFMTBCDField
      FieldName = 'SALDO_MOV'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRelatorioSALDO_POS_NEG: TStringField
      FieldName = 'SALDO_POS_NEG'
      FixedChar = True
      Size = 1
    end
  end
  inherited qryRelatorio: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'INICIO'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      'SELECT COD_LCTO,'
      '       DATA_MOV,'
      '       HISTORICO_MOV,'
      '       DESCRICAO,'
      '       CATEGORIA,'
      '       VALOR_MOV,'
      '       TPLCTO_MOV,'
      '       SALDO_MOV,'
      '       SALDO_POS_NEG'
      'FROM SP_EMITE_EXTRATO_PERIODO(:CONTA, :INICIO, :FIM)')
    object qryRelatorioCOD_LCTO: TIntegerField
      FieldName = 'COD_LCTO'
    end
    object qryRelatorioDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
    end
    object qryRelatorioHISTORICO_MOV: TStringField
      FieldName = 'HISTORICO_MOV'
      Size = 100
    end
    object qryRelatorioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryRelatorioCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 50
    end
    object qryRelatorioVALOR_MOV: TFMTBCDField
      FieldName = 'VALOR_MOV'
      Precision = 15
      Size = 2
    end
    object qryRelatorioTPLCTO_MOV: TStringField
      FieldName = 'TPLCTO_MOV'
      FixedChar = True
      Size = 10
    end
    object qryRelatorioSALDO_MOV: TFMTBCDField
      FieldName = 'SALDO_MOV'
      Precision = 15
      Size = 2
    end
    object qryRelatorioSALDO_POS_NEG: TStringField
      FieldName = 'SALDO_POS_NEG'
      FixedChar = True
      Size = 1
    end
  end
end
