inherited frm_ConsultaDespesas: Tfrm_ConsultaDespesas
  Left = 187
  Top = 168
  Caption = 'Despesas'
  ClientHeight = 545
  ClientWidth = 1055
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 522
    Width = 1055
    Height = 23
    object pnlTotal: TPanel
      Left = 1
      Top = 1
      Width = 1053
      Height = 21
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblTotalDespesas: TLabel
        Left = 1
        Top = 1
        Width = 144
        Height = 19
        Align = alLeft
        Caption = 'Total Despesas R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalPoupado: TLabel
        Left = 280
        Top = 1
        Width = 137
        Height = 19
        Align = alLeft
        Caption = 'Total Poupado R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalReceitas: TLabel
        Left = 145
        Top = 1
        Width = 135
        Height = 19
        Align = alLeft
        Caption = 'Total Receitas R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited Panel2: TPanel
    Top = 56
    Width = 193
    Height = 265
    Align = alNone
    Enabled = False
    Visible = False
    inherited DBGrid1: TDBGrid
      Width = 191
      Height = 248
      Align = alTop
      DataSource = nil
      Enabled = False
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 1055
    Height = 56
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 1053
      Height = 54
      Align = alClient
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 52
        Height = 13
        Caption = 'Conta N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 321
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
      object Label3: TLabel
        Left = 464
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
      object btnConfimarSelecao: TSpeedButton
        Left = 598
        Top = 14
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
      object cbxListaContas: TDBLookupComboBox
        Left = 68
        Top = 20
        Width = 244
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'CONTA'
        ListSource = dsContas
        TabOrder = 0
      end
      object edtDtInicio: TDateTimePicker
        Left = 349
        Top = 20
        Width = 89
        Height = 21
        Date = 42625.402579178240000000
        Time = 42625.402579178240000000
        TabOrder = 1
      end
      object edtDtFim: TDateTimePicker
        Left = 502
        Top = 20
        Width = 89
        Height = 21
        Date = 42625.402579178240000000
        Time = 42625.402579178240000000
        TabOrder = 2
      end
    end
  end
  object pnl1: TPanel [3]
    Left = 0
    Top = 56
    Width = 1055
    Height = 466
    Align = alClient
    Caption = 'pnl1'
    TabOrder = 3
    object pgc1: TPageControl
      Left = 1
      Top = 1
      Width = 1053
      Height = 464
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      object ts1: TTabSheet
        Caption = 'Mensal'
        object pnl5: TPanel
          Left = 711
          Top = 0
          Width = 334
          Height = 436
          Align = alRight
          Caption = 'pnl1'
          TabOrder = 0
          object dbcht1: TDBChart
            Left = 1
            Top = 1
            Width = 332
            Height = 434
            AllowPanning = pmNone
            AllowZoom = False
            AnimatedZoomSteps = 0
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Pen.Visible = False
            MarginBottom = 0
            MarginLeft = 0
            MarginRight = 0
            MarginTop = 0
            Title.AdjustFrame = False
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Title.Text.Strings = (
              'M'#234's')
            AxisVisible = False
            Chart3DPercent = 10
            ClipPoints = False
            Frame.Visible = False
            LeftAxis.AxisValuesFormat = 'R$  #,##0.###'
            LeftAxis.ExactDateTime = False
            LeftAxis.Increment = 100.000000000000000000
            LeftAxis.LabelsSeparation = 0
            LeftAxis.LabelStyle = talText
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 5
            LeftAxis.PositionPercent = 1.000000000000000000
            LeftAxis.TickLength = 0
            LeftAxis.Title.Angle = 0
            LeftAxis.Visible = False
            Legend.Alignment = laBottom
            Legend.ColorWidth = 20
            Legend.DividingLines.Style = psDashDotDot
            Legend.DividingLines.SmallDots = True
            Legend.HorizMargin = 45
            Legend.ResizeChart = False
            Legend.ShadowSize = 0
            Legend.TextStyle = ltsRightPercent
            Legend.TopPos = 6
            MaxPointsPerPage = 17
            RightAxis.MinorTickLength = 3
            ScaleLastPage = False
            View3DOptions.Elevation = 315
            View3DOptions.HorizOffset = 7
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DOptions.VertOffset = -45
            View3DOptions.Zoom = 89
            View3DOptions.ZoomText = False
            View3DWalls = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object LineSeries1: TPieSeries
              Marks.ArrowLength = 0
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = cdsGraficoMes
              SeriesColor = clRed
              XLabelsSource = 'CATEGORIA'
              Dark3D = False
              OtherSlice.Text = 'Other'
              PieValues.DateTime = False
              PieValues.Name = 'Pie'
              PieValues.Multiplier = 1.000000000000000000
              PieValues.Order = loDescending
              PieValues.ValueSource = 'TOTAL'
            end
          end
        end
        object pnl2: TPanel
          Left = 191
          Top = 0
          Width = 520
          Height = 436
          Align = alClient
          Caption = 'pnl2'
          TabOrder = 1
          object dbgrd1: TDBGrid
            Left = 1
            Top = 1
            Width = 518
            Height = 434
            Align = alClient
            DataSource = dsDetalheMes
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect]
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
                FieldName = 'DATA'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 80
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
                Width = 158
                Visible = True
              end
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
                Width = 158
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
                Width = 90
                Visible = True
              end>
          end
        end
        object pnl6: TPanel
          Left = 0
          Top = 0
          Width = 191
          Height = 436
          Align = alLeft
          Caption = 'pnl6'
          TabOrder = 2
          object dbgrd2: TDBGrid
            Left = 1
            Top = 1
            Width = 189
            Height = 248
            Align = alTop
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
                FieldName = 'MESEXTENSO'
                Title.Alignment = taCenter
                Title.Caption = 'M'#234's'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 37
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ANO'
                Title.Alignment = taCenter
                Title.Caption = 'Ano'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUBTOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Despesas'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 78
                Visible = True
              end>
          end
        end
      end
      object ts2: TTabSheet
        Caption = 'Per'#237'odo'
        ImageIndex = 1
        object pnl4: TPanel
          Left = 0
          Top = 0
          Width = 1045
          Height = 436
          Align = alClient
          Caption = 'pnl4'
          TabOrder = 0
          object dbcht2: TDBChart
            Left = 1
            Top = 1
            Width = 1043
            Height = 434
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.AdjustFrame = False
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            LeftAxis.AxisValuesFormat = 'R$  #,##0.###'
            LeftAxis.ExactDateTime = False
            LeftAxis.Increment = 100.000000000000000000
            LeftAxis.LabelsSeparation = 50
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 8
            LeftAxis.TickLength = 0
            Legend.Alignment = laBottom
            Legend.ColorWidth = 10
            Legend.ShadowSize = 0
            Legend.TopPos = 0
            MaxPointsPerPage = 20
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
              Action = actPaginaAnteriorGrafico
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
              Action = actAvancaPaginaGragico
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
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = cdsConsulta
              SeriesColor = clRed
              Title = 'Despesas'
              XLabelsSource = 'REF'
              LinePen.Width = 2
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = True
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'SUBTOTAL'
            end
            object Series2: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = cdsReceitas
              SeriesColor = clBlue
              Title = 'Receitas'
              XLabelsSource = 'REF'
              LinePen.Width = 2
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'TOTAL_MES'
            end
            object Series3: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = cdsInvestimentos
              SeriesColor = clGreen
              Title = 'Poupado'
              XLabelsSource = 'REF'
              LinePen.Width = 2
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'TOTAL_MES'
            end
          end
        end
      end
      object ts3: TTabSheet
        Caption = 'Categoria'
        ImageIndex = 2
        object pnl3: TPanel
          Left = 0
          Top = 0
          Width = 1045
          Height = 436
          Align = alClient
          TabOrder = 0
          object dbcht3: TDBChart
            Left = 1
            Top = 1
            Width = 1043
            Height = 434
            AnimatedZoomSteps = 0
            BackWall.Brush.Color = clWhite
            MarginBottom = 0
            MarginLeft = 0
            MarginRight = 0
            MarginTop = 0
            Title.AdjustFrame = False
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Title.Text.Strings = (
              'Total por Categoria no P'#233'riodo')
            Chart3DPercent = 25
            LeftAxis.AxisValuesFormat = 'R$  #,##0.###'
            LeftAxis.ExactDateTime = False
            LeftAxis.Increment = 100.000000000000000000
            LeftAxis.LabelsSeparation = 0
            LeftAxis.LabelStyle = talText
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 17
            LeftAxis.TickLength = 3
            LeftAxis.Ticks.Width = 2
            LeftAxis.TicksInner.Width = 10
            LeftAxis.Title.Angle = 0
            Legend.ColorWidth = 20
            Legend.DividingLines.Style = psDashDotDot
            Legend.DividingLines.SmallDots = True
            Legend.HorizMargin = 395
            Legend.ResizeChart = False
            Legend.ShadowSize = 0
            Legend.TextStyle = ltsRightPercent
            Legend.TopPos = 6
            Legend.Visible = False
            MaxPointsPerPage = 15
            RightAxis.MinorTickLength = 3
            View3D = False
            View3DOptions.Elevation = 360
            View3DOptions.HorizOffset = 46
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DOptions.Zoom = 108
            View3DOptions.ZoomText = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object btnPaginaAnteriorGrafico1: TSpeedButton
              Left = 816
              Top = 1
              Width = 45
              Height = 18
              Action = actRetornaCategoria
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
            object btnAvancaPaginaGragico1: TSpeedButton
              Left = 860
              Top = 1
              Width = 45
              Height = 18
              Action = actAvancaCategoria
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
            object PieSeries1: THorizBarSeries
              ColorEachPoint = True
              Marks.ArrowLength = 5
              Marks.Style = smsPercent
              Marks.Visible = True
              DataSource = cdsDespCategoriaPeriodo
              SeriesColor = clRed
              XLabelsSource = 'CATEGORIA'
              BarWidthPercent = 80
              MultiBar = mbNone
              OffsetPercent = 20
              SideMargins = False
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loDescending
              XValues.ValueSource = 'TOTAL_PERIODO'
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loAscending
            end
          end
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Images = ImageList1
    Left = 320
    Top = 144
    object actConfirmar: TAction
      Caption = 'Confirmar'
      ImageIndex = 37
      OnExecute = actConfirmarExecute
    end
    object actAvancaPaginaGragico: TAction
      ImageIndex = 32
      OnExecute = actAvancaPaginaGragicoExecute
    end
    object actPaginaAnteriorGrafico: TAction
      ImageIndex = 3
      OnExecute = actPaginaAnteriorGraficoExecute
    end
    object actFechar: TAction
      Caption = 'Fechar'
      ImageIndex = 9
    end
    object actAvancaCategoria: TAction
      ImageIndex = 32
      OnExecute = actAvancaCategoriaExecute
    end
    object actRetornaCategoria: TAction
      ImageIndex = 3
      OnExecute = actRetornaCategoriaExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 320
    Top = 112
  end
  inherited qryConsulta: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 42005d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 42632d
      end>
    SQL.Strings = (
      'SELECT MES,'
      '       ANO,'
      '       SUBTOTAL,'
      '       MES ||'#39'/'#39'|| ANO AS "REF"'
      'FROM SP_SUBTOTAL_DESPESA_MES_PERIODO(:CONTA, :DATAINI, :DATAFIM)')
    object qryConsultaMES: TStringField
      FieldName = 'MES'
      Size = 10
    end
    object qryConsultaANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qryConsultaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object qryConsultaREF: TStringField
      FieldName = 'REF'
      Size = 21
    end
  end
  inherited cdsConsulta: TClientDataSet
    OnCalcFields = cdsConsultaCalcFields
    object cdsConsultaMES: TStringField
      FieldName = 'MES'
      Size = 10
    end
    object cdsConsultaANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object cdsConsultaREF: TStringField
      FieldName = 'REF'
      Size = 21
    end
    object cdsConsultaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsConsultaMESEXTENSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'MESEXTENSO'
      Calculated = True
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
  object sqlContas: TSQLQuery
    DataSource = dsContas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT C.CODIGO,'
      '       C.CONTA,'
      '       C.COD_USUARIO'
      'FROM TB_CONTAS C'
      'WHERE C.COD_USUARIO =:USUARIO'
      'ORDER BY C.CODIGO')
    SQLConnection = dm_Conexao.conConexao
    Left = 464
    Top = 104
    object sqlContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sqlContasCONTA: TStringField
      FieldName = 'CONTA'
    end
    object sqlContasCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sqlContas
    Left = 464
    Top = 144
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    Left = 464
    Top = 184
    object cdsContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsContasCONTA: TStringField
      FieldName = 'CONTA'
    end
    object cdsContasCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 464
    Top = 224
  end
  object qryDetalheMes: TSQLQuery
    DataSource = dsDetalheMes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
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
      end>
    SQL.Strings = (
      'SELECT M.DATA,'
      '       L.LCTO,'
      '       M.DESCRICAO,'
      '       C.CATEGORIA,'
      '       M.VALOR'
      'FROM TB_MOVIMENTACAO M'
      'INNER JOIN TB_LANCAMENTOS L ON (L.CODIGO = M.COD_HISTORICO)'
      'INNER JOIN TB_CATEGORIA C ON (C.CODIGO = M.COD_CATEGORIA)'
      'WHERE M.CONTA =:CONTA'
      'AND EXTRACT(MONTH FROM M.DATA) =:MES'
      'AND EXTRACT(YEAR FROM M.DATA) =:ANO'
      'AND M.COD_CATEGORIA NOT IN (0)'
      'AND C.CREDITO_DEBITO = '#39'D'#39
      'ORDER BY M.DATA')
    SQLConnection = dm_Conexao.conConexao
    Left = 520
    Top = 104
    object qryDetalheMesDATA: TDateField
      FieldName = 'DATA'
    end
    object qryDetalheMesLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object qryDetalheMesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qryDetalheMesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryDetalheMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dspDetalheMes: TDataSetProvider
    DataSet = qryDetalheMes
    Left = 520
    Top = 144
  end
  object cdsDetalheMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalheMes'
    Left = 520
    Top = 184
    object cdsDetalheMesDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDetalheMesLCTO: TStringField
      FieldName = 'LCTO'
      Size = 100
    end
    object cdsDetalheMesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsDetalheMesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsDetalheMesVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsDetalheMes: TDataSource
    DataSet = cdsDetalheMes
    Left = 520
    Top = 224
  end
  object qryGraficoMes: TSQLQuery
    DataSource = dsGraficoMes
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
        Name = 'ANO'
        ParamType = ptInput
        Value = 2016
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
        Value = 1
      end>
    SQL.Strings = (
      'SELECT EXTRACT(MONTH FROM M.DATA) AS "MES",'
      '       EXTRACT(YEAR FROM M.DATA) AS "ANO",'
      '       C.CATEGORIA,'
      '       COALESCE(SUM(M.VALOR), 0.00) AS "TOTAL"'
      'FROM TB_MOVIMENTACAO M'
      'INNER JOIN TB_CATEGORIA C ON(M.COD_CATEGORIA = C.CODIGO)'
      'WHERE M.CONTA =:CONTA AND EXTRACT(YEAR FROM M.DATA) =:ANO'
      'AND EXTRACT(MONTH FROM M.DATA) =:MES'
      'AND M.COD_CATEGORIA NOT IN (0)'
      'AND C.CREDITO_DEBITO = '#39'D'#39
      'GROUP BY MES, ANO, C.CATEGORIA'
      'ORDER BY ANO, MES')
    SQLConnection = dm_Conexao.conConexao
    Left = 576
    Top = 104
    object qryGraficoMesMES: TSmallintField
      FieldName = 'MES'
    end
    object qryGraficoMesANO: TSmallintField
      FieldName = 'ANO'
    end
    object qryGraficoMesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryGraficoMesTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 2
    end
  end
  object dspGraficoMes: TDataSetProvider
    DataSet = qryGraficoMes
    Left = 576
    Top = 144
  end
  object cdsGraficoMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGraficoMes'
    Left = 576
    Top = 184
    object cdsGraficoMesMES: TSmallintField
      FieldName = 'MES'
    end
    object cdsGraficoMesANO: TSmallintField
      FieldName = 'ANO'
    end
    object cdsGraficoMesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsGraficoMesTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 2
    end
  end
  object dsGraficoMes: TDataSource
    DataSet = cdsGraficoMes
    Left = 576
    Top = 224
  end
  object qryReceitas: TSQLQuery
    DataSource = dsReceitas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 42005d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 42632d
      end>
    SQL.Strings = (
      'SELECT EXTRACT(MONTH FROM M.DATA) AS "MES",'
      '       EXTRACT(YEAR FROM M.DATA) AS "ANO",'
      
        '       EXTRACT(MONTH FROM M.DATA) ||'#39'/'#39'|| EXTRACT(YEAR FROM M.DA' +
        'TA) AS "REF",'
      '       COALESCE(SUM(M.VALOR), 0.00) AS "TOTAL_MES"'
      'FROM TB_MOVIMENTACAO M'
      'INNER JOIN TB_CATEGORIA C ON(M.COD_CATEGORIA = C.CODIGO)'
      'WHERE M.CONTA =:CONTA'
      'AND M.DATA BETWEEN :DATAINI AND :DATAFIM'
      'AND C.CREDITO_DEBITO = '#39'C'#39
      'GROUP BY MES, ANO'
      'ORDER BY ANO, MES')
    SQLConnection = dm_Conexao.conConexao
    Left = 632
    Top = 104
    object qryReceitasMES: TSmallintField
      FieldName = 'MES'
    end
    object qryReceitasANO: TSmallintField
      FieldName = 'ANO'
    end
    object qryReceitasREF: TStringField
      FieldName = 'REF'
      Size = 13
    end
    object qryReceitasTOTAL_MES: TFMTBCDField
      FieldName = 'TOTAL_MES'
      Precision = 15
      Size = 2
    end
  end
  object dspReceitas: TDataSetProvider
    DataSet = qryReceitas
    Left = 632
    Top = 144
  end
  object cdsReceitas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceitas'
    Left = 632
    Top = 184
    object cdsReceitasMES: TSmallintField
      FieldName = 'MES'
    end
    object cdsReceitasANO: TSmallintField
      FieldName = 'ANO'
    end
    object cdsReceitasREF: TStringField
      FieldName = 'REF'
      Size = 13
    end
    object cdsReceitasTOTAL_MES: TFMTBCDField
      FieldName = 'TOTAL_MES'
      Precision = 15
      Size = 2
    end
  end
  object dsReceitas: TDataSource
    DataSet = cdsReceitas
    Left = 632
    Top = 224
  end
  object qryInvestimentos: TSQLQuery
    DataSource = dsInvestimentos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 42005d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 42632d
      end>
    SQL.Strings = (
      'SELECT EXTRACT(MONTH FROM M.DATA) AS "MES",'
      '       EXTRACT(YEAR FROM M.DATA) AS "ANO",'
      
        '       EXTRACT(MONTH FROM M.DATA) ||'#39'/'#39'|| EXTRACT(YEAR FROM M.DA' +
        'TA) AS "REF",'
      '       COALESCE(SUM(M.VALOR), 0.00) AS "TOTAL_MES"'
      'FROM TB_MOVIMENTACAO M'
      'INNER JOIN TB_CATEGORIA C ON(M.COD_CATEGORIA = C.CODIGO)'
      'WHERE M.CONTA =:CONTA'
      'AND M.DATA BETWEEN :DATAINI AND :DATAFIM'
      'AND C.CREDITO_DEBITO = '#39'I'#39
      'GROUP BY MES, ANO'
      'ORDER BY ANO, MES')
    SQLConnection = dm_Conexao.conConexao
    Left = 680
    Top = 104
    object qryInvestimentosMES: TSmallintField
      FieldName = 'MES'
    end
    object qryInvestimentosANO: TSmallintField
      FieldName = 'ANO'
    end
    object qryInvestimentosREF: TStringField
      FieldName = 'REF'
      Size = 13
    end
    object qryInvestimentosTOTAL_MES: TFMTBCDField
      FieldName = 'TOTAL_MES'
      Precision = 15
      Size = 2
    end
  end
  object dspInvestimentos: TDataSetProvider
    DataSet = qryInvestimentos
    Left = 680
    Top = 144
  end
  object cdsInvestimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInvestimentos'
    Left = 680
    Top = 184
    object cdsInvestimentosMES: TSmallintField
      FieldName = 'MES'
    end
    object cdsInvestimentosANO: TSmallintField
      FieldName = 'ANO'
    end
    object cdsInvestimentosREF: TStringField
      FieldName = 'REF'
      Size = 13
    end
    object cdsInvestimentosTOTAL_MES: TFMTBCDField
      FieldName = 'TOTAL_MES'
      Precision = 15
      Size = 2
    end
  end
  object dsInvestimentos: TDataSource
    DataSet = cdsInvestimentos
    Left = 680
    Top = 224
  end
  object qryDespCategoriaPeriodo: TSQLQuery
    DataSource = dsDespCategoriaPeriodo
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 42005d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 42632d
      end>
    SQL.Strings = (
      'SELECT C.CATEGORIA,'
      '       COALESCE(SUM(M.VALOR), 0.00) AS "TOTAL_PERIODO"'
      'FROM TB_MOVIMENTACAO M'
      'INNER JOIN TB_CATEGORIA C ON(M.COD_CATEGORIA = C.CODIGO)'
      'WHERE M.CONTA =:CONTA'
      'AND M.DATA BETWEEN :DATAINI AND :DATAFIM'
      'AND C.CREDITO_DEBITO = '#39'D'#39
      'GROUP BY C.CATEGORIA'
      'ORDER BY "TOTAL_PERIODO" DESC')
    SQLConnection = dm_Conexao.conConexao
    Left = 728
    Top = 104
    object qryDespCategoriaPeriodoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qryDespCategoriaPeriodoTOTAL_PERIODO: TFMTBCDField
      FieldName = 'TOTAL_PERIODO'
      Precision = 15
      Size = 2
    end
  end
  object dspDespCategoriaPeriodo: TDataSetProvider
    DataSet = qryDespCategoriaPeriodo
    Left = 728
    Top = 144
  end
  object cdsDespCategoriaPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDespCategoriaPeriodo'
    Left = 728
    Top = 184
    object cdsDespCategoriaPeriodoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsDespCategoriaPeriodoTOTAL_PERIODO: TFMTBCDField
      FieldName = 'TOTAL_PERIODO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsDespCategoriaPeriodo: TDataSource
    DataSet = cdsDespCategoriaPeriodo
    Left = 728
    Top = 224
  end
end
