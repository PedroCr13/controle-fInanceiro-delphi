inherited frm_ConsultaModelo: Tfrm_ConsultaModelo
  Left = 359
  Top = 189
  Caption = 'Consulta'
  ClientHeight = 473
  ClientWidth = 881
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 432
    Width = 881
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 65
    Width = 881
    Height = 367
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 879
      Height = 365
      Align = alClient
      DataSource = dsConsulta
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 881
    Height = 65
    Align = alTop
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 712
    Top = 72
  end
  inherited ImageList1: TImageList
    Left = 712
    Top = 32
  end
  object qryConsulta: TSQLQuery
    DataSource = dsConsulta
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conConexao
    Left = 400
    Top = 104
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Left = 400
    Top = 144
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 400
    Top = 184
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 400
    Top = 224
  end
end
