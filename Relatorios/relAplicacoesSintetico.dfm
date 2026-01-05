inherited rel_RelatorioAplicacoesSintetico: Trel_RelatorioAplicacoesSintetico
  Left = 363
  Top = 161
  Width = 1148
  Caption = 'Relat'#243'rio de Aplica'#231#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    Width = 1123
    Height = 794
    DataSource = dsRelatorio
    PageSetup.Orientation = poLandscape
    inherited RLBand1: TRLBand
      Width = 1047
      BandType = btHeader
    end
    inherited RLBand2: TRLBand
      Width = 1047
      BandType = btHeader
    end
    inherited RLBand3: TRLBand
      Width = 1047
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel5: TRLLabel
        Left = 4
        Top = 3
        Width = 189
        Height = 16
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
        Left = 198
        Top = 3
        Width = 193
        Height = 16
        AutoSize = False
        Caption = 'Agente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 395
        Top = 3
        Width = 133
        Height = 16
        AutoSize = False
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 531
        Top = 3
        Width = 67
        Height = 16
        AutoSize = False
        Caption = 'Indice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 600
        Top = 3
        Width = 50
        Height = 16
        AutoSize = False
        Caption = 'Taxa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 653
        Top = 3
        Width = 72
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 729
        Top = 3
        Width = 72
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vcto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 805
        Top = 3
        Width = 92
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vlr.Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 899
        Top = 3
        Width = 92
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
      object RLLabel14: TRLLabel
        Left = 996
        Top = 3
        Width = 48
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand4: TRLBand
      Top = 231
      Width = 1047
      inherited RLSystemInfo2: TRLSystemInfo
        Left = 960
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 189
      Width = 1047
      Height = 21
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 4
        Top = 3
        Width = 190
        Height = 16
        AutoSize = False
        DataField = 'DESC_APLICACAO'
        DataSource = dsRelatorio
      end
      object RLDBText2: TRLDBText
        Left = 199
        Top = 3
        Width = 193
        Height = 16
        AutoSize = False
        DataField = 'DESC_AGENTE'
        DataSource = dsRelatorio
      end
      object RLDBText3: TRLDBText
        Left = 396
        Top = 3
        Width = 133
        Height = 16
        AutoSize = False
        DataField = 'DESC_CATEGORIA'
        DataSource = dsRelatorio
      end
      object RLDBText4: TRLDBText
        Left = 532
        Top = 3
        Width = 66
        Height = 16
        AutoSize = False
        DataField = 'DESC_INDICE'
        DataSource = dsRelatorio
      end
      object RLDBText5: TRLDBText
        Left = 600
        Top = 3
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLR_TAXA'
        DataSource = dsRelatorio
      end
      object RLDBText6: TRLDBText
        Left = 653
        Top = 3
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DATA_INICIAL'
        DataSource = dsRelatorio
      end
      object RLDBText7: TRLDBText
        Left = 730
        Top = 3
        Width = 72
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DATA_FINAL'
        DataSource = dsRelatorio
      end
      object RLDBText8: TRLDBText
        Left = 805
        Top = 3
        Width = 91
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_INICIAL'
        DataSource = dsRelatorio
      end
      object RLDBText9: TRLDBText
        Left = 899
        Top = 3
        Width = 91
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_FINAL'
        DataSource = dsRelatorio
      end
      object RLDBText10: TRLDBText
        Left = 996
        Top = 3
        Width = 48
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ULTIMA_DATA_REF'
        DataSource = dsRelatorio
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 210
      Width = 1047
      Height = 21
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lblTotalAplicado: TRLLabel
        Left = 805
        Top = 3
        Width = 92
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalAtualizado: TRLLabel
        Left = 900
        Top = 3
        Width = 91
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited cdsRelatorio: TClientDataSet
    object cdsRelatorioCODAPLIC: TIntegerField
      FieldName = 'CODAPLIC'
    end
    object cdsRelatorioCOD_AGENTE: TIntegerField
      FieldName = 'COD_AGENTE'
    end
    object cdsRelatorioDESC_AGENTE: TStringField
      FieldName = 'DESC_AGENTE'
      Size = 100
    end
    object cdsRelatorioCOD_TPAPLIC: TIntegerField
      FieldName = 'COD_TPAPLIC'
    end
    object cdsRelatorioDESC_APLICACAO: TStringField
      FieldName = 'DESC_APLICACAO'
      Size = 100
    end
    object cdsRelatorioCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object cdsRelatorioDESC_CATEGORIA: TStringField
      FieldName = 'DESC_CATEGORIA'
      Size = 100
    end
    object cdsRelatorioDATA_INICIAL: TDateField
      FieldName = 'DATA_INICIAL'
    end
    object cdsRelatorioDATA_FINAL: TDateField
      FieldName = 'DATA_FINAL'
    end
    object cdsRelatorioDESC_INDICE: TStringField
      FieldName = 'DESC_INDICE'
      Size = 100
    end
    object cdsRelatorioVLR_TAXA: TFMTBCDField
      FieldName = 'VLR_TAXA'
      DisplayFormat = '0.00%'
      Precision = 15
      Size = 2
    end
    object cdsRelatorioVALOR_INICIAL: TFMTBCDField
      FieldName = 'VALOR_INICIAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRelatorioVALOR_FINAL: TFMTBCDField
      FieldName = 'VALOR_FINAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRelatorioULTIMA_DATA_REF: TStringField
      FieldName = 'ULTIMA_DATA_REF'
      Size = 10
    end
    object cdsRelatorioSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
  end
  inherited qryRelatorio: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 1
      end>
    SQL.Strings = (
      'SELECT CODAPLIC,'
      '       COD_AGENTE,'
      '       DESC_AGENTE,'
      '       COD_TPAPLIC,'
      '       DESC_APLICACAO,'
      '       COD_CATEGORIA,'
      '       DESC_CATEGORIA,'
      '       DATA_INICIAL,'
      '       DATA_FINAL,'
      '       DESC_INDICE,'
      '       VLR_TAXA,'
      '       VALOR_INICIAL,'
      '       VALOR_FINAL,'
      '       ULTIMA_DATA_REF, '
      '       STATUS'
      'FROM SP_RELATORIO_APLIC_SINTETICO(:USUARIO)'
      'WHERE STATUS = '#39'S'#39)
    object qryRelatorioCODAPLIC: TIntegerField
      FieldName = 'CODAPLIC'
    end
    object qryRelatorioCOD_AGENTE: TIntegerField
      FieldName = 'COD_AGENTE'
    end
    object qryRelatorioDESC_AGENTE: TStringField
      FieldName = 'DESC_AGENTE'
      Size = 100
    end
    object qryRelatorioCOD_TPAPLIC: TIntegerField
      FieldName = 'COD_TPAPLIC'
    end
    object qryRelatorioDESC_APLICACAO: TStringField
      FieldName = 'DESC_APLICACAO'
      Size = 100
    end
    object qryRelatorioCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
    end
    object qryRelatorioDESC_CATEGORIA: TStringField
      FieldName = 'DESC_CATEGORIA'
      Size = 100
    end
    object qryRelatorioDATA_INICIAL: TDateField
      FieldName = 'DATA_INICIAL'
    end
    object qryRelatorioDATA_FINAL: TDateField
      FieldName = 'DATA_FINAL'
    end
    object qryRelatorioDESC_INDICE: TStringField
      FieldName = 'DESC_INDICE'
      Size = 100
    end
    object qryRelatorioVLR_TAXA: TFMTBCDField
      FieldName = 'VLR_TAXA'
      Precision = 15
      Size = 2
    end
    object qryRelatorioVALOR_INICIAL: TFMTBCDField
      FieldName = 'VALOR_INICIAL'
      Precision = 15
      Size = 2
    end
    object qryRelatorioVALOR_FINAL: TFMTBCDField
      FieldName = 'VALOR_FINAL'
      Precision = 15
      Size = 2
    end
    object qryRelatorioULTIMA_DATA_REF: TStringField
      FieldName = 'ULTIMA_DATA_REF'
      Size = 10
    end
    object qryRelatorioSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 10
    end
  end
end
