inherited frm_CadastroLancamentoConta: Tfrm_CadastroLancamentoConta
  Caption = 'Lan'#231'amento  - Movimenta'#231#227'o de Conta'
  ClientHeight = 179
  ClientWidth = 415
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_BarraBotoes: TPanel
    Top = 149
    Width = 415
  end
  inherited pnlCadastro: TPanel
    Width = 415
    Height = 149
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
      DataField = 'LCTO'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 90
      Top = 91
      Width = 271
      Height = 44
      Columns = 2
      DataField = 'MOVIMENTO'
      DataSource = dsCadastro
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito')
      TabOrder = 2
      Values.Strings = (
        'C'
        'D')
    end
  end
  inherited ActionList1: TActionList
    Left = 208
    Top = 56
  end
  inherited ImageList1: TImageList
    Left = 208
    Top = 16
  end
  inherited qryCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT L.CODIGO,'
      '       L.LCTO,'
      '       L.MOVIMENTO,'
      '      L.COD_USUARIO'
      'FROM TB_LANCAMENTOS L'
      'WHERE L.CODIGO =:CODIGO')
    SQLConnection = dm_Conexao.conConexao
    object qryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryCadastroLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object qryCadastroMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
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
    object cdsCadastroLCTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LCTO'
      Required = True
    end
    object cdsCadastroMOVIMENTO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'MOVIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCadastroCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
end
