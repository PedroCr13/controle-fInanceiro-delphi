inherited dlg_DetalheAplicacao: Tdlg_DetalheAplicacao
  Caption = 'Detalhe Aplica'#231#227'o'
  ClientHeight = 171
  ClientWidth = 223
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 223
    Height = 137
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 94
      Height = 13
      Caption = 'Data Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 43
      Width = 71
      Height = 13
      Caption = 'Cr'#233'ditos  R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 76
      Width = 72
      Height = 13
      Caption = 'D'#233'bitos   R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 108
      Width = 70
      Height = 13
      Caption = 'Valor      R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtData: TDateTimePicker
      Left = 113
      Top = 8
      Width = 90
      Height = 21
      Date = 42627.872267685180000000
      Time = 42627.872267685180000000
      TabOrder = 3
    end
    object edtCreditos: TEdit
      Left = 113
      Top = 41
      Width = 88
      Height = 21
      TabOrder = 2
    end
    object edtDebitos: TEdit
      Left = 113
      Top = 74
      Width = 88
      Height = 21
      TabOrder = 1
    end
    object edtValor: TEdit
      Left = 113
      Top = 105
      Width = 88
      Height = 21
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    Top = 137
    Width = 223
  end
  inherited ActionList1: TActionList
    Left = 184
    Top = 88
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 184
    Top = 48
  end
end
