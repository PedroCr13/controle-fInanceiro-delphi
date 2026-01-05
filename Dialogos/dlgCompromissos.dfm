inherited dlgDialogoCompromissos: TdlgDialogoCompromissos
  Left = 396
  Top = 115
  Caption = 'Compromissos'
  ClientHeight = 591
  ClientWidth = 1040
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 57
    Width = 1040
    Height = 500
    object pnl1: TPanel
      Left = 1
      Top = 1
      Width = 1038
      Height = 476
      Align = alClient
      TabOrder = 0
      object lbl3: TLabel
        Left = 734
        Top = 21
        Width = 249
        Height = 13
        Caption = 'Resumo Consolidado (Previsto X Realizado)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgrd1: TDBGrid
        Left = 1
        Top = 1
        Width = 678
        Height = 474
        Align = alLeft
        DataSource = dsConsulta
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgrd1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_EFETIVACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Previs'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA_1'
            Title.Alignment = taCenter
            Title.Caption = 'Categoria'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Previsto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_REALIZADO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Realizado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LCTO'
            Title.Alignment = taCenter
            Title.Caption = 'C/D'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS_1'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end>
      end
      object dbgrd2: TDBGrid
        Left = 691
        Top = 44
        Width = 336
        Height = 329
        DataSource = dsResumoCompromissos
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CATEGORIA'
            Title.Alignment = taCenter
            Title.Caption = 'Categoria'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PREVISTO'
            Title.Alignment = taCenter
            Title.Caption = 'Previsto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REALIZADO'
            Title.Alignment = taCenter
            Title.Caption = 'Realizado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end>
      end
    end
    object pnl2: TPanel
      Left = 1
      Top = 477
      Width = 1038
      Height = 22
      Align = alBottom
      TabOrder = 1
      object lblTotalCreditosPrevistas: TLabel
        Left = 370
        Top = 1
        Width = 169
        Height = 20
        Align = alLeft
        AutoSize = False
        Caption = 'Cr'#233'ditos R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotalDebitosPrevistos: TLabel
        Left = 539
        Top = 1
        Width = 169
        Height = 20
        Align = alLeft
        AutoSize = False
        Caption = 'D'#233'bitos R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 1
        Top = 1
        Width = 369
        Height = 20
        Align = alLeft
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited Panel2: TPanel
    Top = 557
    Width = 1040
    inherited btnConfirmar: TSpeedButton
      Left = 190
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D6CEC600D6CEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D6D6
        CE00BD634A007B635A00A5A59C00CECEC600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B59C
        8C00FFB58C00FFB58C00F78C6B007B5A5200BDBDB500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B594
        8400F7B58C00E76B4200F79C7300FFA57B0084524200CEC6BD00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00CECEC600C6C6BD00FF00FF00C6BD
        B500EF946B00EF846300DE5A3900FF9C7300F78C6300ADADA500FF00FF00FF00
        FF00FF00FF00FF00FF00D6CEC6009C948C00E78C6300845A5200D6CEC600FF00
        FF00FF00FF00DE735200DE5A3900F7946B00FF9C7300ADADA500FF00FF00FF00
        FF00FF00FF00BDBDB500BD634A00F7B58C00FFB58C009C635200CECEC600CECE
        C600BDBDB500A5634A00EF845A00FFA57B00F78C6300A5A59C00FF00FF00CECE
        C6009C736B00E77B5A00EF946B00FFC6AD00FFE7CE00BD634A00A5635200CE73
        5200F7A57B00FFB58C00FFA57B00FFB59400EF9C7300A5A59C00BDB5AD00D65A
        3100E7734A00F7A57B00FFDEBD00FFDEC600FFE7CE00FFCEA500FFBD9400FFB5
        8C00FFAD8C00FFD6CE00FFF7EF00FFD6B500F7A58400A5A59C00D65A3900E773
        4A00FFD6AD00FFD6B500FFDEBD00FFDEBD00FFE7C600FFE7D600FFEFDE00FFF7
        E700FFF7EF00FF00FF00FFF7EF00FFDEBD00EF9C7300C6C6BD00F7AD8400FFD6
        AD00FFD6AD00FFD6B500FFDEBD00FFDEBD00FFE7C600FFE7CE00FFEFDE00FFEF
        E700FFF7EF00FF00FF00FFF7F700FFE7C600AD9C8C00FF00FF00E78C6B00FFD6
        AD00FFD6AD00FFD6B500FFDEBD00FFDEBD00FFDEC600FFE7CE00FFEFD600FFF7
        E700FFF7EF00FF00FF00EFB5A500BDADA500FF00FF00FF00FF00FF00FF00CE9C
        8C00F7BD9400FFD6B500FFD6B500FFDEBD00FFE7C600FFDEC600F7D6BD00EFB5
        A500D68C6B00BDADA500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00DE846300FFD6B500FFDEBD00FFE7CE008C6B6300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C6BDB500EFA58400FFE7C600A5A59C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00DEAD9C00D6CEC600FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    inherited btnCancelar: TSpeedButton
      Left = 288
      Top = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00191E7C00191E7D00FF00FF00DBDBDB00DADADA00DADADA00DBDB
        DB00DDDDDD00363A8900181D7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00181D8100181D8100181D8100181D8100FF00FF00FF00FF00FF00FF00FF00
        FF003A3F9400181D8100181D8100171C8100FF00FF00FF00FF00FF00FF00FF00
        FF00181E8900181E8900181E8900181E8900181E8900FF00FF00FF00FF003B40
        9B00181E8900181E8900181E8900181E8900676BB100FF00FF00FF00FF00FF00
        FF004044A300191E9000191E9000191E9000191E9000191E90003C40A100191E
        9000191E9000191E9000191E9000191E9000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004146AA00191F9800191F9800191F9800191F9800191F9800191F
        9800191F9800191F9800191F9800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF004045AF00191F9F00191F9F00191F9F00191F9F00191F
        9F00191F9F00191FA000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF001A21A7001A20A7001A20A7001A20A7001A20
        A7001A20A700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF003B41BA001A21AF001A21AF001A21AF001A21AF001A21
        AF001A21AF001A21AE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF003B41C1001A21B7001A21B7001A21B7001A21B7001920B6001A21
        B7001A21B7001A21B7001A21B600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003B42C7001A22BE001A22BE001A22BE001A22BE003A4BD400505AD3001820
        BD001A22BE001A22BE001A22BE001A22BE00FF00FF00FF00FF00FF00FF00FF00
        FF001B22C5001B22C5001B22C5001B22C5003A4BD700FF00FF00FF00FF005059
        D7001920C4001B22C5001B22C5001B22C5006B71DA00FF00FF00FF00FF00FF00
        FF003849DA001B23CD001B23CD003A4CDB00FF00FF00FF00FF00FF00FF00FF00
        FF004F5ADB001921CC001B23CD003342D700FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF003343DD003848DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004E57DF003E50E000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Visible = False
    end
    object btnConfirmar1: TSpeedButton
      Left = 95
      Top = 3
      Width = 95
      Height = 29
      Action = actAdicionar
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00DDDDDD002D8439002C8538002C8538002C84
        3800DDDDDD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002B8F44002C8F45002C8F45002C8F
        4500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002B9B52002C9B53002C9B53002C9B
        5300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002BA760002CA760002CA760002CA7
        6000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0095D6B40089D2AC0089D2AC008AD2AD002AAE69002BAE69002BAE69002BAE
        69008BD2AD0089D2AC0089D2AC0092D5B300FF00FF00FF00FF00FF00FF00D3EF
        E20029B5720029B5720029B5720029B5720029B5720029B5720029B5720029B5
        720029B5720029B5720029B5720029B57200CCECDD00FF00FF00FF00FF00D2F0
        E30027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC
        7B0027BC7B0027BC7B0027BC7B0027BC7B00CDEFE000FF00FF00FF00FF00D8F3
        E80023BF810023BF810023BF810023BF810024BF810024BF810024BF810024BF
        810023BF810023BF810023BF810023BF8100CEF0E200FF00FF00FF00FF00FF00
        FF00CEF1E400C3EEDE00C3EEDE00C3EEDE003BC7900020C1860020C1860035C6
        8D00C4EEDE00C3EEDE00C3EEDE00CBF0E200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0037C793001DC38A001DC38A0031C7
        9100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0034CA960019C68F0019C68F002EC9
        9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0030CC990015C8940015C8940029CA
        9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004AD2A80035CE9F0034CE9F004CD2
        A700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnCancelar1: TSpeedButton
      Left = 2
      Top = 3
      Width = 95
      Height = 29
      Action = actEfetivar
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00DCDCDC00D9D9D900FF00FF00D8D8D800D9D9
        D900DCDCDC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF002C8C3F002C893E00DBE4DD00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF002C954D002C964D002C964D002C964D00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF002CA25B002CA25B002CA25B002CA25B002CA25B0062B9
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF002CAC67002CAC67002CAC67002CAC67002CAC67002CAC67002CAC
        6700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF002AB370002AB371002AB371002AB371004AC0860024B16D002AB371002AB3
        710029B37100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0020B9760027BB7A0027BB7A0048C48B00FF00FF008FDBB80028BB7A0027BB
        7A0027BB7A0080D6B000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A1E3C8001ABD7D0046C79000FF00FF00FF00FF00FF00FF0045C78F0024BF
        810024BF810024BF8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001AC0
        840020C1860020C1860020C18600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009DE4
        CB001AC48B001CC48C001CC48C001BC48B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0051CFA10018C6910018C6910014C690006DDBBA00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0056D0A40033CC9C007CE0C400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object pnlFiltro: TPanel [2]
    Left = 0
    Top = 0
    Width = 1040
    Height = 57
    Align = alTop
    TabOrder = 2
    object lbl1: TLabel
      Left = 184
      Top = 22
      Width = 17
      Height = 13
      Caption = 'De'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 304
      Top = 22
      Width = 20
      Height = 13
      Caption = 'At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnFiltrarPeriodo: TSpeedButton
      Left = 428
      Top = 14
      Width = 87
      Height = 26
      Action = actFiltrarPeriodo
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006B8FB60018609F00997C7C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006B8FB6000D9FF4008EDFFE002789CE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006B8FB6000E9FF4008EDFFE008AECFE006EBAEC00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B8F
        B6000E9FF4008EDFFE008AECFE006EBAEC00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000F92
        E4008EDFFE008AECFE006EBAEC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AE9797009374740096787800A2888800A3888800D9CFCF00C6B7B7008F8B
        990073D7FE006EBAEC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F5A
        5A00926E6800FEFAE200FEFEF800FEFEFE00FEFCE800B0979600AE979700D6C9
        C900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009B808000A075
        6800FEDEBC00FEF4D900FEFEEC00FEFEEF00FEFAE100FEE6C500BBA5A200DDD4
        D400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C6C6C00FBBD
        9000FED1AC00FEE3C300FEF0D300FEF1D600FEE8CA00FED8B300FCC39900C5B3
        B300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008E6D6D00F9AF
        7D00FCC19500FECFA900FED8B300FED9B500FED3AC00FDC69C00FDB97F00D5C7
        C700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009A787400F6A1
        6A00FEC48E00FED4A200FEDDAC00FEDAAC00FEDDAC00FED4A000FEC79000D4C7
        C700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A0858500FEC4
        8D00FED6A300FEE4B500FEEEC300FEF0C700FEEEC300FEE5B500FED7A300DBCF
        CF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00997C7C00D2A6
        8900FEE1B300FEF0C800FEF4D400FEF5D900FEF4D400FEF0C800D4BBB200DDD3
        D300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B59F
        9F00DCC0A700FEF3D100FEF7E100FEFAEC00FEF8E100DCC9C000CDBDBD00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AD969600C8B7B700CEB9B600D0C1C100D4C7C700D4C8C800FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object dtpDtInicio: TDateTimePicker
      Left = 207
      Top = 17
      Width = 89
      Height = 21
      Date = 42625.402579178240000000
      Time = 42625.402579178240000000
      TabOrder = 0
    end
    object dtpDtFim: TDateTimePicker
      Left = 335
      Top = 17
      Width = 89
      Height = 21
      Date = 42625.402579178240000000
      Time = 42625.402579178240000000
      TabOrder = 1
    end
    object dblkcbbFiltrarStatus: TDBLookupComboBox
      Left = 23
      Top = 17
      Width = 145
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'STATUS'
      ListSource = dsStatusCompromisso
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 233
    Top = 76
    inherited actConfirmar: TAction
      Caption = 'Retornar'
      ImageIndex = 13
      OnExecute = actConfirmarExecute
    end
    inherited actCancelar: TAction
      Caption = 'Excluir'
      ImageIndex = 19
    end
    object actAdicionar: TAction
      Caption = 'Adicionar'
      ImageIndex = 27
      OnExecute = actAdicionarExecute
    end
    object actEfetivar: TAction
      Caption = 'Efetivar'
      ImageIndex = 37
      OnExecute = actEfetivarExecute
    end
    object actFiltrarPeriodo: TAction
      Caption = 'Consultar'
      ImageIndex = 22
      OnExecute = actFiltrarPeriodoExecute
    end
  end
  object qryConsulta: TSQLQuery
    DataSource = dsConsulta
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'CODIGOSTATUS'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'DATA_INICIO'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      'SELECT C.CODIGO, C.DATA_CADASTRO, C.DATA_EFETIVACAO,'
      '       C.CONTA, C.CATEGORIA, CT.CATEGORIA, C.VALOR, C.LCTO,'
      '       C.DESCRICAO, C.STATUS, S.STATUS, C.VALOR_REALIZADO'
      'FROM TB_COMPROMISSOS C'
      'INNER JOIN TB_CATEGORIA CT ON (CT.CODIGO = C.CATEGORIA)'
      'INNER JOIN TB_STATUS_COMPROMISSOS S ON (S.CODIGO = C.STATUS)'
      'WHERE C.CONTA = :CONTA'
      'AND C.STATUS =:CODIGOSTATUS'
      'AND C.DATA_EFETIVACAO between :DATA_INICIO AND :DATA_FINAL'
      'ORDER BY C.DATA_EFETIVACAO')
    SQLConnection = dm_Conexao.conConexao
    Left = 291
    Top = 31
    object qryConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qryConsultaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qryConsultaDATA_EFETIVACAO: TDateField
      FieldName = 'DATA_EFETIVACAO'
    end
    object qryConsultaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object qryConsultaCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object qryConsultaCATEGORIA_1: TStringField
      FieldName = 'CATEGORIA_1'
      Size = 100
    end
    object qryConsultaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryConsultaLCTO: TStringField
      FieldName = 'LCTO'
      Size = 10
    end
    object qryConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryConsultaSTATUS_1: TStringField
      FieldName = 'STATUS_1'
      Size = 15
    end
    object qryConsultaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object qryConsultaVALOR_REALIZADO: TFMTBCDField
      FieldName = 'VALOR_REALIZADO'
      Precision = 15
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Left = 290
    Top = 71
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 290
    Top = 110
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsConsultaDATA_EFETIVACAO: TDateField
      FieldName = 'DATA_EFETIVACAO'
    end
    object cdsConsultaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object cdsConsultaCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object cdsConsultaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsConsultaLCTO: TStringField
      FieldName = 'LCTO'
      Size = 10
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsConsultaCATEGORIA_1: TStringField
      FieldName = 'CATEGORIA_1'
      Size = 100
    end
    object cdsConsultaSTATUS_1: TStringField
      FieldName = 'STATUS_1'
      Size = 15
    end
    object cdsConsultaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsConsultaVALOR_REALIZADO: TFMTBCDField
      FieldName = 'VALOR_REALIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 290
    Top = 152
  end
  object sqlStatusCompromisso: TSQLQuery
    DataSource = dsStatusCompromisso
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT S.CODIGO, S.STATUS FROM TB_STATUS_COMPROMISSOS S'
      'ORDER BY S.STATUS ASC')
    SQLConnection = dm_Conexao.conConexao
    Left = 343
    Top = 32
    object sqlStatusCompromissoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlStatusCompromissoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 15
    end
  end
  object dspStatusCompromisso: TDataSetProvider
    DataSet = sqlStatusCompromisso
    Left = 342
    Top = 72
  end
  object cdsStatusCompromisso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStatusCompromisso'
    Left = 342
    Top = 111
    object cdsStatusCompromissoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsStatusCompromissoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 15
    end
  end
  object dsStatusCompromisso: TDataSource
    DataSet = cdsStatusCompromisso
    Left = 342
    Top = 153
  end
  object qryResumoCompromissos: TSQLQuery
    DataSource = dsResumoCompromissos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'DATA_INICIO'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      'SELECT CT.CATEGORIA,'
      '       SUM(C.VALOR) AS "PREVISTO",'
      '       SUM(C.VALOR_REALIZADO) as "REALIZADO",'
      '       C.LCTO'
      'FROM TB_COMPROMISSOS C'
      'INNER JOIN TB_CATEGORIA CT ON (CT.CODIGO = C.CATEGORIA)'
      'WHERE C.CONTA =:CONTA'
      ''
      'AND C.DATA_EFETIVACAO BETWEEN :DATA_INICIO AND :DATA_FINAL'
      'GROUP BY CT.CATEGORIA, C.LCTO'
      'ORDER BY C.LCTO, "PREVISTO" DESC')
    SQLConnection = dm_Conexao.conConexao
    Left = 196
    Top = 345
    object qryResumoCompromissosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryResumoCompromissosPREVISTO: TFMTBCDField
      FieldName = 'PREVISTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryResumoCompromissosREALIZADO: TFMTBCDField
      FieldName = 'REALIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryResumoCompromissosLCTO: TStringField
      FieldName = 'LCTO'
      Size = 10
    end
  end
  object dspResumoCompromissos: TDataSetProvider
    DataSet = qryResumoCompromissos
    Left = 195
    Top = 386
  end
  object cdsResumoCompromissos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResumoCompromissos'
    Left = 195
    Top = 425
    object cdsResumoCompromissosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsResumoCompromissosPREVISTO: TFMTBCDField
      FieldName = 'PREVISTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsResumoCompromissosREALIZADO: TFMTBCDField
      FieldName = 'REALIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsResumoCompromissosLCTO: TStringField
      FieldName = 'LCTO'
      Size = 10
    end
  end
  object dsResumoCompromissos: TDataSource
    DataSet = cdsResumoCompromissos
    Left = 195
    Top = 467
  end
end
