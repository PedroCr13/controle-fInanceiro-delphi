inherited dlgDialogoEfetivaCompromisso: TdlgDialogoEfetivaCompromisso
  Left = 509
  Top = 226
  Caption = 'Efetiva Compromisso'
  ClientHeight = 148
  ClientWidth = 217
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 217
    Height = 114
    object lblData: TLabel
      Left = 1
      Top = 7
      Width = 215
      Height = 39
      Align = alTop
      Alignment = taCenter
      Caption = 
        'Este compromisso ser'#225' inclu'#237'do'#13#10'em seu extrato banc'#225'rio. '#13#10'Confi' +
        'rme a data e valor! '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 20
      Top = 90
      Width = 50
      Height = 13
      Caption = 'Valor R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 20
      Top = 57
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 1
      Top = 1
      Width = 215
      Height = 6
      Align = alTop
      AutoSize = False
    end
    object dtpData: TDateTimePicker
      Left = 77
      Top = 52
      Width = 109
      Height = 21
      Date = 42889.870932407410000000
      Time = 42889.870932407410000000
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 78
      Top = 86
      Width = 109
      Height = 21
      TabOrder = 1
      Text = 'edtValor'
    end
  end
  inherited Panel2: TPanel
    Top = 114
    Width = 217
  end
  inherited ActionList1: TActionList
    Left = 181
    Top = 48
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 181
    Top = 8
  end
end
