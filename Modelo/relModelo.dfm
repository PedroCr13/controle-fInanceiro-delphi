object rel_RelatorioModelo: Trel_RelatorioModelo
  Left = 369
  Top = 149
  Width = 827
  Height = 587
  Caption = 'Relat'#243'rio Modelo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 112
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 8
        Top = 8
        Width = 297
        Height = 19
        AutoSize = False
        Caption = 'Sistema de Gerenciamento Financeiro '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbDescricao: TRLLabel
        Left = 8
        Top = 34
        Width = 102
        Height = 16
        Caption = 'Relat'#243'rio de ....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 8
        Top = 60
        Width = 56
        Height = 16
        AutoSize = False
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 65
        Top = 60
        Width = 129
        Height = 16
        Caption = 'Usu'#225'rio Respons'#225'vel '
      end
      object RLLabel4: TRLLabel
        Left = 8
        Top = 87
        Width = 89
        Height = 16
        AutoSize = False
        Caption = 'Impresso em '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 98
        Top = 87
        Width = 60
        Height = 16
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 150
      Width = 718
      Height = 18
      BandType = btTitle
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 168
      Width = 718
      Height = 21
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 189
      Width = 718
      Height = 24
      BandType = btFooter
      object RLSystemInfo2: TRLSystemInfo
        Left = 632
        Top = 4
        Width = 77
        Height = 16
        AutoSize = False
        Info = itPageNumber
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 264
    Top = 368
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 264
    Top = 328
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 264
    Top = 296
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conConexao
    Left = 264
    Top = 264
  end
end
