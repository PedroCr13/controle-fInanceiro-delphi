inherited frm_ConsultaHistoricoCarteira: Tfrm_ConsultaHistoricoCarteira
  Left = 151
  Top = 113
  Caption = 'Hist'#243'rico Carteira de Aplica'#231#245'es'
  ClientHeight = 628
  ClientWidth = 1142
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1142
    Height = 56
    Align = alTop
    TabOrder = 0
    object grp1: TGroupBox
      Left = 1
      Top = 1
      Width = 1140
      Height = 54
      Align = alClient
      TabOrder = 0
      object lbl1: TLabel
        Left = 10
        Top = 24
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
        Left = 154
        Top = 24
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
      object btnConfirmar: TSpeedButton
        Left = 281
        Top = 13
        Width = 95
        Height = 29
        Action = actConfirmar
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
      object dtpInicio: TDateTimePicker
        Left = 59
        Top = 18
        Width = 85
        Height = 21
        Date = 42626.963494293980000000
        Time = 42626.963494293980000000
        TabOrder = 0
      end
      object dtpFim: TDateTimePicker
        Left = 189
        Top = 18
        Width = 85
        Height = 21
        Date = 42626.963494293980000000
        Time = 42626.963494293980000000
        TabOrder = 1
      end
    end
  end
  object pnl2: TPanel [1]
    Left = 0
    Top = 56
    Width = 353
    Height = 272
    Align = alLeft
    Caption = 'pnl2'
    TabOrder = 1
    object dbgrd2: TDBGrid
      Left = 1
      Top = 1
      Width = 351
      Height = 270
      Align = alClient
      DataSource = dsConsulta
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'lblanoMes'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APORTADO'
          Title.Alignment = taCenter
          Title.Caption = 'Aporte'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 131
          Visible = True
        end>
    end
  end
  object pnl3: TPanel [2]
    Left = 353
    Top = 56
    Width = 432
    Height = 272
    Align = alLeft
    Caption = 'pnl3'
    TabOrder = 2
    object dbgrd1: TDBGrid
      Left = 1
      Top = 1
      Width = 430
      Height = 270
      Align = alClient
      DataSource = dsDetalheCarteiraMes
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgrd1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'APLICACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Aplica'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCENTUAL'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RENDIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Rendimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end>
    end
  end
  object pnl4: TPanel [3]
    Left = 0
    Top = 328
    Width = 1142
    Height = 300
    Align = alBottom
    Caption = 'pnl4'
    TabOrder = 3
    object dbcht2: TDBChart
      Left = 1
      Top = 1
      Width = 1140
      Height = 298
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.AdjustFrame = False
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      ClipPoints = False
      LeftAxis.AxisValuesFormat = 'R$  #,##0.###'
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 100.000000000000000000
      LeftAxis.LabelsSeparation = 50
      LeftAxis.Logarithmic = True
      LeftAxis.MinorTickCount = 4
      LeftAxis.MinorTickLength = 4
      LeftAxis.TickLength = 0
      Legend.Alignment = laBottom
      Legend.ColorWidth = 10
      Legend.ResizeChart = False
      Legend.ShadowSize = 0
      Legend.TopPos = 0
      Legend.Visible = False
      RightAxis.MinorTickLength = 3
      View3D = False
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object btnPaginaAnteriorGrafico: TSpeedButton
        Left = 736
        Top = 389
        Width = 45
        Height = 25
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00CBD7CD002C863A00FF00FF00DBDBDB00DCDC
          DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002C9249002C924900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002CA059002CA059002CA05900AAD8BC00A6D6B900A6D6
          B900A6D6B900A6D6B900A6D6B900A6D6B900FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002CAC67002CAC67002CAC67002CAC67002CAC67002CAC67002CAC
          67002CAC67002CAC67002CAC67002CAC6700C7E8D600FF00FF00FF00FF00FF00
          FF0029B4710029B4710029B4710029B4710029B4710029B4710029B4710029B4
          710029B4710029B4710029B4710029B47100C7EAD900FF00FF00FF00FF00C3EC
          DA0024BB7A0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC
          7B0027BC7B0027BC7B0027BC7B0027BC7B00C6EDDC00FF00FF00FF00FF00FF00
          FF004FCA950023C0820023C0820023C0820023C0820023C0820023C0820023C0
          820023C0820023C0820023C0820023C08200C5EDDE00FF00FF00FF00FF00FF00
          FF00FF00FF0056CD9C001FC288001FC288001FC288003AC791003BC792003BC7
          92003BC792003BC792003BC792003DC89200C9F0E300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0055CE9F001BC58E001AC58E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0055D0A20013C79300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0067DCBC00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object btnAvancaPaginaGragico: TSpeedButton
        Left = 780
        Top = 389
        Width = 45
        Height = 25
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00DCDCDC00DBDBDB00FF00FF002C86
          3A00CBD7CD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C92
          49002C924900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00A6D6B900A6D6B900A6D6B900A6D6B900A6D6B900A6D6B900AAD8BC002CA0
          59002CA059002CA05900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C7E8
          D6002CAC67002CAC67002CAC67002CAC67002CAC67002CAC67002CAC67002CAC
          67002CAC67002CAC67002CAC6700FF00FF00FF00FF00FF00FF00FF00FF00C7EA
          D90029B4710029B4710029B4710029B4710029B4710029B4710029B4710029B4
          710029B4710029B4710029B4710029B47100FF00FF00FF00FF00FF00FF00C6ED
          DC0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC7B0027BC
          7B0027BC7B0027BC7B0027BC7B0024BB7A00C3ECDA00FF00FF00FF00FF00C5ED
          DE0023C0820023C0820023C0820023C0820023C0820023C0820023C0820023C0
          820023C0820023C0820023C082004FCA9500FF00FF00FF00FF00FF00FF00C9F0
          E3003DC892003BC792003BC792003BC792003BC792003BC792003AC791001FC2
          88001FC288001FC2880056CD9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001AC5
          8E001BC58E0055CE9F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0013C7
          930055D0A200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0067DC
          BC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object Series1: TLineSeries
        Marks.ArrowLength = 5
        Marks.Style = smsXValue
        Marks.Visible = False
        DataSource = cdsConsulta
        SeriesColor = clRed
        Title = 'Despesas'
        XLabelsSource = 'lblanoMes'
        LinePen.Width = 2
        Pointer.HorizSize = 2
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.VertSize = 2
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'SALDO'
      end
    end
  end
  object pnl5: TPanel [4]
    Left = 785
    Top = 56
    Width = 357
    Height = 272
    Align = alClient
    Caption = 'pnl5'
    TabOrder = 4
    object chtCarteiraMensal: TChart
      Left = 1
      Top = 1
      Width = 355
      Height = 270
      AllowPanning = pmNone
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Pen.Visible = False
      MarginBottom = 5
      MarginTop = 0
      Title.Text.Strings = (
        'Divis'#227'o Carteira')
      AxisVisible = False
      Chart3DPercent = 30
      ClipPoints = False
      Frame.Visible = False
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.ExactDateTime = False
      Legend.Alignment = laBottom
      Legend.ColorWidth = 5
      Legend.HorizMargin = 40
      Legend.ShadowSize = 0
      Legend.TextStyle = ltsPlain
      Legend.TopPos = 0
      Legend.VertMargin = 44
      View3DOptions.Elevation = 315
      View3DOptions.HorizOffset = 5
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DOptions.VertOffset = 8
      View3DOptions.Zoom = 78
      View3DOptions.ZoomText = False
      View3DWalls = False
      Align = alClient
      TabOrder = 0
      object Series2: TPieSeries
        Marks.ArrowLength = -35
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'sDivisaoCarteira'
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1.000000000000000000
        PieValues.Order = loNone
      end
    end
  end
  inherited ActionList1: TActionList
    Images = ImageList1
    Left = 216
    Top = 112
    object actConfirmar: TAction
      Caption = 'Confirmar'
      ImageIndex = 37
      OnExecute = actConfirmarExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 216
    Top = 72
  end
  object qryConsulta: TSQLQuery
    DataSource = dsConsulta
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'DATA_INI'
        ParamType = ptInput
        Value = 42370d
      end
      item
        DataType = ftDate
        Name = 'DATA_FIM'
        ParamType = ptInput
        Value = 42735d
      end>
    SQL.Strings = (
      
        'SELECT C.MES_REF, C.ANO_REF, C.SALDO, C.APORTADO FROM SP_EVOLUCA' +
        'O_CARTEIRA_ANUAL(:USUARIO, :DATA_INI, :DATA_FIM) C')
    SQLConnection = dm_Conexao.conConexao
    Left = 272
    Top = 72
    object qryConsultaMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object qryConsultaANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object qryConsultaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object qryConsultaAPORTADO: TFMTBCDField
      FieldName = 'APORTADO'
      Precision = 15
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Left = 272
    Top = 112
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    OnCalcFields = cdsConsultaCalcFields
    Left = 272
    Top = 152
    object cdsConsultaMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsConsultaANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsConsultalblanoMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'lblanoMes'
      Size = 15
      Calculated = True
    end
    object cdsConsultaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsConsultaAPORTADO: TFMTBCDField
      FieldName = 'APORTADO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    OnDataChange = dsConsultaDataChange
    Left = 272
    Top = 192
  end
  object qryDetalheCarteiraMes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
        Value = '2017'
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
        Value = 2
      end>
    SQL.Strings = (
      
        'SELECT CODIGOTPAPLICACAO, APLICACAO, VALOR, PERCENTUAL, RENDIMEN' +
        'TO'
      'FROM SP_CATEIRA_APLICACOES(:USUARIO, :ANO, :MES)')
    SQLConnection = dm_Conexao.conConexao
    Left = 392
    Top = 88
    object qryDetalheCarteiraMesAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object qryDetalheCarteiraMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object qryDetalheCarteiraMesPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Precision = 15
      Size = 2
    end
    object qryDetalheCarteiraMesCODIGOTPAPLICACAO: TIntegerField
      FieldName = 'CODIGOTPAPLICACAO'
    end
    object qryDetalheCarteiraMesRENDIMENTO: TFMTBCDField
      FieldName = 'RENDIMENTO'
      Precision = 15
      Size = 2
    end
  end
  object dspDetalheCarteiraMes: TDataSetProvider
    DataSet = qryDetalheCarteiraMes
    Left = 392
    Top = 120
  end
  object cdsDetalheCarteiraMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalheCarteiraMes'
    Left = 392
    Top = 152
    object cdsDetalheCarteiraMesAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object cdsDetalheCarteiraMesPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '0.00%'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsDetalheCarteiraMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsDetalheCarteiraMesCODIGOTPAPLICACAO: TIntegerField
      FieldName = 'CODIGOTPAPLICACAO'
    end
    object cdsDetalheCarteiraMesRENDIMENTO: TFMTBCDField
      FieldName = 'RENDIMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsDetalheCarteiraMes: TDataSource
    DataSet = cdsDetalheCarteiraMes
    Left = 392
    Top = 192
  end
  object qryRendimentoMes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPOAPLICACAO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT SPRM.APLICACAO, SPRM.VALOR, SPRM.MES, SPRM.ANO'
      
        'FROM sp_retorna_rend_mes(:TIPOAPLICACAO, :MES, :ANO, :USUARIO) S' +
        'PRM')
    SQLConnection = dm_Conexao.conConexao
    Left = 504
    Top = 88
    object qryRendimentoMesAPLICACAO: TStringField
      DisplayWidth = 100
      FieldName = 'APLICACAO'
    end
    object qryRendimentoMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryRendimentoMesMES: TIntegerField
      FieldName = 'MES'
    end
    object qryRendimentoMesANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspRendimentoMes: TDataSetProvider
    DataSet = qryRendimentoMes
    Left = 504
    Top = 120
  end
  object cdsRendimentoMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRendimentoMes'
    Left = 504
    Top = 152
    object cdsRendimentoMesAPLICACAO: TStringField
      DisplayWidth = 100
      FieldName = 'APLICACAO'
    end
    object cdsRendimentoMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsRendimentoMesMES: TIntegerField
      FieldName = 'MES'
    end
    object cdsRendimentoMesANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dsRendimentoMes: TDataSource
    DataSet = cdsRendimentoMes
    Left = 504
    Top = 192
  end
end
