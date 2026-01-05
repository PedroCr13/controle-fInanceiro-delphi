inherited frm_CadastroCatgorias: Tfrm_CadastroCatgorias
  Caption = 'Cadastro de Categorias'
  ClientHeight = 230
  ClientWidth = 415
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 200
    Width = 415
  end
  inherited pnlCadastro: TPanel
    Width = 415
    Height = 200
    object Label1: TLabel
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
    object Label2: TLabel
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
    object Label3: TLabel
      Left = 22
      Top = 109
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TDBEdit
      Left = 89
      Top = 22
      Width = 67
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 90
      Top = 58
      Width = 271
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CATEGORIA'
      DataSource = dsCadastro
      MaxLength = 20
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 90
      Top = 91
      Width = 271
      Height = 102
      Columns = 2
      DataField = 'CREDITO_DEBITO'
      DataSource = dsCadastro
      Items.Strings = (
        'Receita'
        'Despesa'
        'Investimento/Poup'
        'Reinvestimento'
        'N'#227'o contabilizar')
      TabOrder = 2
      Values.Strings = (
        'C'
        'D'
        'I'
        'R'
        'N')
    end
  end
  inherited ActionList1: TActionList
    Left = 224
  end
  inherited ImageList1: TImageList
    Left = 224
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
      '       C.CATEGORIA,'
      '       C.CREDITO_DEBITO,'
      '       C.COD_USUARIO'
      'FROM TB_CATEGORIA C'
      'WHERE C.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryCadastroCREDITO_DEBITO: TStringField
      FieldName = 'CREDITO_DEBITO'
      FixedChar = True
      Size = 1
    end
    object qryCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  inherited cdsCadastro: TClientDataSet
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroCATEGORIA: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CATEGORIA'
      Required = True
      Size = 30
    end
    object cdsCadastroCREDITO_DEBITO: TStringField
      DisplayLabel = 'Marque o tipo da categoria!'
      FieldName = 'CREDITO_DEBITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
end
