inherited dlg_CarteiraInvestimetos: Tdlg_CarteiraInvestimetos
  Caption = 'Carteira de Investimentos'
  ClientHeight = 141
  ClientWidth = 253
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 253
    Height = 107
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 251
      Height = 105
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 28
        Width = 24
        Height = 13
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 18
        Top = 66
        Width = 23
        Height = 13
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbbMeses: TComboBox
        Left = 50
        Top = 23
        Width = 167
        Height = 21
        Style = csDropDownList
        CharCase = ecUpperCase
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'JANEIRO'
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL '
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
      end
      object edtAno: TEdit
        Left = 50
        Top = 62
        Width = 78
        Height = 21
        MaxLength = 4
        TabOrder = 1
        OnKeyPress = edtAnoKeyPress
      end
    end
  end
  inherited Panel2: TPanel
    Top = 107
    Width = 253
  end
  inherited ActionList1: TActionList
    Left = 152
    Top = 56
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 152
    Top = 16
  end
end
