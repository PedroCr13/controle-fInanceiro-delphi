inherited frm_CadastroCategoriaInvestimentos: Tfrm_CadastroCategoriaInvestimentos
  Caption = 'Categoria Investimentos'
  ClientHeight = 137
  ClientWidth = 414
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 107
    Width = 414
  end
  inherited pnlCadastro: TPanel
    Width = 414
    Height = 107
    object lbl1: TLabel
      Left = 22
      Top = 26
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 22
      Top = 62
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbedtDESCRICAO: TDBEdit
      Left = 91
      Top = 58
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      MaxLength = 15
      TabOrder = 0
    end
    object dbedtCODIGO: TDBEdit
      Left = 90
      Top = 22
      Width = 67
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 314
    Top = 48
  end
  inherited ImageList1: TImageList
    Left = 314
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
      'SELECT C.CODIGO,'
      '       C.DESCRICAO,'
      '       C.COD_USUARIO'
      'FROM TB_CATEGORIA_APLICACAO C'
      'WHERE C.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    Left = 224
    Top = 8
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  inherited dspCadastro: TDataSetProvider
    Left = 224
    Top = 48
  end
  inherited cdsCadastro: TClientDataSet
    Left = 272
    Top = 8
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object cdsCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 272
    Top = 48
  end
end
