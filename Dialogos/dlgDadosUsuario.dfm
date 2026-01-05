inherited dlgDialogoDadosUsuario: TdlgDialogoDadosUsuario
  Left = 487
  Top = 269
  Caption = 'Usu'#225'rio'
  ClientHeight = 169
  ClientWidth = 248
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 248
    Height = 135
    object lbl3: TLabel
      Left = 19
      Top = 23
      Width = 70
      Height = 13
      Caption = 'Senha Atual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 19
      Top = 58
      Width = 71
      Height = 13
      Caption = 'Nova Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 20
      Top = 95
      Width = 90
      Height = 13
      Caption = 'Confirma Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited Panel2: TPanel
    Top = 135
    Width = 248
  end
  inherited ActionList1: TActionList
    Left = 176
    Top = 80
  end
  inherited ImageList1: TImageList
    Left = 176
    Top = 40
  end
end
