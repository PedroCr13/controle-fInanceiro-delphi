inherited rel_RelatorioCarteiraInvestimentos: Trel_RelatorioCarteiraInvestimentos
  Caption = 'Relat'#243'rio Carteira de Investimentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    DataSource = dsRelatorio
    inherited RLBand3: TRLBand
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel5: TRLLabel
        Left = 14
        Top = 3
        Width = 188
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aplica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 205
        Top = 3
        Width = 148
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Saldo Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 356
        Top = 2
        Width = 109
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percentual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand4: TRLBand
      Top = 210
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 189
      Width = 718
      Height = 21
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 14
        Top = 3
        Width = 187
        Height = 16
        AutoSize = False
        DataField = 'APLICACAO'
        DataSource = dsRelatorio
      end
      object RLDBText2: TRLDBText
        Left = 205
        Top = 3
        Width = 149
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = dsRelatorio
      end
      object RLDBText3: TRLDBText
        Left = 357
        Top = 3
        Width = 108
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PERCENTUAL'
        DataSource = dsRelatorio
      end
    end
  end
  inherited cdsRelatorio: TClientDataSet
    object cdsRelatorioAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object cdsRelatorioVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRelatorioPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '0.00%'
      Precision = 15
      Size = 2
    end
  end
  inherited qryRelatorio: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT APLICACAO, VALOR, PERCENTUAL'
      'FROM SP_CATEIRA_APLICACOES(:USUARIO, :ANO, :MES)')
    object qryRelatorioAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object qryRelatorioVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryRelatorioPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Precision = 15
      Size = 2
    end
  end
end
