inherited dlg_Login: Tdlg_Login
  Caption = 'Login'
  ClientHeight = 138
  ClientWidth = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 241
    Height = 104
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 44
      Height = 13
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 37
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRecuperarSenha: TLabel
      Left = 16
      Top = 82
      Width = 98
      Height = 13
      Cursor = crHandPoint
      Caption = 'Recuperar senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lblRecuperarSenhaClick
    end
    object lbl1: TLabel
      Left = 152
      Top = 82
      Width = 74
      Height = 13
      Cursor = crHandPoint
      Caption = 'Criar Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lbl1Click
    end
    object edtLoginUsuario: TEdit
      Left = 68
      Top = 14
      Width = 149
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 0
    end
    object edtSenha: TEdit
      Left = 68
      Top = 53
      Width = 149
      Height = 21
      MaxLength = 6
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = edtSenhaKeyPress
    end
  end
  inherited Panel2: TPanel
    Top = 104
    Width = 241
  end
  inherited ActionList1: TActionList
    inherited actConfirmar: TAction
      OnExecute = actConfirmarExecute
    end
  end
end
