object frmCRUD: TfrmCRUD
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'CRUD'
  ClientHeight = 646
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcGeral: TcxPageControl
    Left = 0
    Top = 0
    Width = 763
    Height = 646
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabCadastro
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 642
    ClientRectLeft = 4
    ClientRectRight = 759
    ClientRectTop = 24
    object tabPesquisa: TcxTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 0
      object pFiltro: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 749
        Height = 89
        Align = alTop
        BevelEdges = [beBottom]
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          749
          87)
        object Label22: TLabel
          Left = 441
          Top = 0
          Width = 110
          Height = 13
          Caption = 'Nome Fantasia/Apelido'
        end
        object Label23: TLabel
          Left = 2
          Top = 0
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label24: TLabel
          Left = 279
          Top = 42
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Enabled = False
        end
        object Label25: TLabel
          Left = 2
          Top = 42
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object btFiltrar: TButton
          Left = 668
          Top = 53
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Filtrar'
          TabOrder = 5
          OnClick = btFiltrarClick
        end
        object btLimparFiltros: TButton
          Left = 587
          Top = 53
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Limpar'
          TabOrder = 4
          OnClick = btLimparFiltrosClick
        end
        object edPesNome: TEdit
          Left = 2
          Top = 15
          Width = 433
          Height = 21
          TabOrder = 0
          TextHint = 'Informe o Nome ou parte dele'
        end
        object edPesNomeFantasia: TEdit
          Left = 441
          Top = 15
          Width = 302
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          TextHint = 'Informe o Nome ou parte dele'
        end
        object edPesBairro: TEdit
          Left = 2
          Top = 57
          Width = 271
          Height = 21
          TabOrder = 2
          TextHint = 'Informe o Bairro ou parte dele'
        end
        object edPesCidade: TEdit
          Left = 279
          Top = 57
          Width = 302
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 3
          TextHint = 'Informe o Nome ou parte dele'
        end
      end
      object dbgPesq: TcxGrid
        Left = 0
        Top = 95
        Width = 755
        Height = 523
        Align = alClient
        TabOrder = 1
        object gridPesq: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
        end
        object gridPesquisa: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          OnCellDblClick = gridPesquisaCellDblClick
          DataController.DataSource = ds
          DataController.DetailKeyFieldNames = 'None selected'
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Column = colPesquisaID
              DisplayText = 'Registros'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object colPesquisaID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object colPesquisaTIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            Width = 37
          end
          object colPesquisaCNPJ_CPF: TcxGridDBColumn
            DataBinding.FieldName = 'CNPJ_CPF'
          end
          object colPesquisaIE_RG: TcxGridDBColumn
            DataBinding.FieldName = 'IE_RG'
          end
          object colPesquisaINSC_MUNICIPAL: TcxGridDBColumn
            DataBinding.FieldName = 'INSC_MUNICIPAL'
          end
          object colPesquisaNOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
          end
          object colPesquisaNOME_FANTASIA: TcxGridDBColumn
            DataBinding.FieldName = 'NOME_FANTASIA'
          end
          object colPesquisaENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'ENDERECO'
          end
          object colPesquisaEND_NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'END_NUMERO'
          end
          object colPesquisaEND_COMPLEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'END_COMPLEMENTO'
          end
          object colPesquisaBAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'BAIRRO'
          end
          object colPesquisaFK_UF: TcxGridDBColumn
            DataBinding.FieldName = 'FK_UF'
          end
          object colPesquisaFK_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'FK_CIDADE'
          end
          object colPesquisaCEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
          object colPesquisaFK_PAIS: TcxGridDBColumn
            DataBinding.FieldName = 'FK_PAIS'
          end
          object colPesquisaDATA_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_CADASTRO'
          end
          object colPesquisaSITE: TcxGridDBColumn
            DataBinding.FieldName = 'SITE'
          end
          object colPesquisaOBS: TcxGridDBColumn
            DataBinding.FieldName = 'OBS'
          end
          object colPesquisaINATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'INATIVO'
          end
          object colPesquisaBLOQUEADO: TcxGridDBColumn
            DataBinding.FieldName = 'BLOQUEADO'
          end
        end
        object lvlPesq: TcxGridLevel
          Caption = 'dbgPesqLevel1'
          GridView = gridPesquisa
        end
      end
    end
    object tabCadastro: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object pBase: TPanel
        Left = 0
        Top = 62
        Width = 755
        Height = 556
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pCad: TPanel
          Left = 0
          Top = 0
          Width = 755
          Height = 317
          Align = alClient
          BevelEdges = [beBottom]
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            755
            315)
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Enabled = False
            FocusControl = edID
          end
          object Label7: TLabel
            Left = 296
            Top = 16
            Width = 48
            Height = 13
            Caption = 'CNPJ/CPF'
            FocusControl = edCNPJ_CPF
          end
          object Label8: TLabel
            Left = 447
            Top = 16
            Width = 28
            Height = 13
            Caption = 'IE/RG'
            FocusControl = edIE_RG
          end
          object Label9: TLabel
            Left = 584
            Top = 16
            Width = 70
            Height = 13
            Caption = 'Insc. Municipal'
            FocusControl = edINSC_MUNICIPAL
          end
          object Label10: TLabel
            Left = 8
            Top = 59
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = edNOME
          end
          object Label11: TLabel
            Left = 447
            Top = 59
            Width = 110
            Height = 13
            Caption = 'Nome Fantasia/Apelido'
            FocusControl = edNOME_FANTASIA
          end
          object Label6: TLabel
            Left = 8
            Top = 102
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = edENDERECO
          end
          object Label12: TLabel
            Left = 447
            Top = 102
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
            FocusControl = edEND_NUMERO
          end
          object Label13: TLabel
            Left = 584
            Top = 102
            Width = 65
            Height = 13
            Caption = 'Complemento'
            FocusControl = edEND_COMPLEMENTO
          end
          object Label14: TLabel
            Left = 8
            Top = 145
            Width = 28
            Height = 13
            Caption = 'Bairro'
            FocusControl = edBAIRRO
          end
          object Label16: TLabel
            Left = 496
            Top = 145
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label17: TLabel
            Left = 307
            Top = 145
            Width = 19
            Height = 13
            Caption = 'CEP'
            FocusControl = edCEP
          end
          object Label18: TLabel
            Left = 8
            Top = 188
            Width = 19
            Height = 13
            Caption = 'Pa'#237's'
          end
          object Label19: TLabel
            Left = 447
            Top = 145
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object Label15: TLabel
            Left = 307
            Top = 188
            Width = 85
            Height = 13
            Caption = 'Data de Cadastro'
          end
          object Label20: TLabel
            Left = 447
            Top = 188
            Width = 18
            Height = 13
            Caption = 'Site'
            FocusControl = edSITE
          end
          object Label21: TLabel
            Left = 8
            Top = 235
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
            FocusControl = mmOBS
          end
          object edID: TDBEdit
            Left = 8
            Top = 32
            Width = 134
            Height = 21
            DataField = 'ID'
            DataSource = ds
            Enabled = False
            TabOrder = 0
          end
          object edCNPJ_CPF: TDBEdit
            Left = 296
            Top = 32
            Width = 145
            Height = 21
            DataField = 'CNPJ_CPF'
            DataSource = ds
            TabOrder = 2
          end
          object edIE_RG: TDBEdit
            Left = 447
            Top = 32
            Width = 131
            Height = 21
            DataField = 'IE_RG'
            DataSource = ds
            TabOrder = 3
          end
          object edINSC_MUNICIPAL: TDBEdit
            Left = 584
            Top = 32
            Width = 163
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'INSC_MUNICIPAL'
            DataSource = ds
            TabOrder = 4
          end
          object edNOME: TDBEdit
            Left = 8
            Top = 75
            Width = 433
            Height = 21
            DataField = 'NOME'
            DataSource = ds
            TabOrder = 5
          end
          object edNOME_FANTASIA: TDBEdit
            Left = 447
            Top = 75
            Width = 300
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NOME_FANTASIA'
            DataSource = ds
            TabOrder = 6
          end
          object rgTIPO: TDBRadioGroup
            Left = 151
            Top = 16
            Width = 138
            Height = 40
            Caption = 'Tipo Empresa'
            Columns = 2
            DataField = 'TIPO'
            DataSource = ds
            Items.Strings = (
              'Jur'#237'dica'
              'F'#237'sica')
            TabOrder = 1
            Values.Strings = (
              'J'
              'F')
          end
          object edENDERECO: TDBEdit
            Left = 8
            Top = 118
            Width = 433
            Height = 21
            DataField = 'ENDERECO'
            DataSource = ds
            TabOrder = 7
          end
          object edEND_NUMERO: TDBEdit
            Left = 447
            Top = 118
            Width = 131
            Height = 21
            DataField = 'END_NUMERO'
            DataSource = ds
            TabOrder = 8
          end
          object edEND_COMPLEMENTO: TDBEdit
            Left = 584
            Top = 118
            Width = 163
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'END_COMPLEMENTO'
            DataSource = ds
            TabOrder = 9
          end
          object edBAIRRO: TDBEdit
            Left = 8
            Top = 161
            Width = 293
            Height = 21
            DataField = 'BAIRRO'
            DataSource = ds
            TabOrder = 10
          end
          object edCEP: TDBEdit
            Left = 307
            Top = 161
            Width = 134
            Height = 21
            DataField = 'CEP'
            DataSource = ds
            MaxLength = 8
            TabOrder = 11
          end
          object cbFK_CIDADE: TDBLookupComboBox
            Left = 496
            Top = 161
            Width = 251
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'FK_CIDADE'
            DataSource = ds
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsCidade
            TabOrder = 13
          end
          object cbFK_UF: TDBLookupComboBox
            Left = 447
            Top = 161
            Width = 43
            Height = 21
            DataField = 'FK_UF'
            DataSource = ds
            KeyField = 'ID'
            ListField = 'SIGLA'
            ListSource = dsUF
            TabOrder = 12
          end
          object cbFK_PAIS: TDBLookupComboBox
            Left = 8
            Top = 204
            Width = 293
            Height = 21
            DataField = 'FK_PAIS'
            DataSource = ds
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsPais
            TabOrder = 14
          end
          object edSITE: TDBEdit
            Left = 447
            Top = 204
            Width = 300
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecLowerCase
            DataField = 'SITE'
            DataSource = ds
            TabOrder = 16
          end
          object mmOBS: TDBMemo
            Left = 8
            Top = 254
            Width = 654
            Height = 51
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'OBS'
            DataSource = ds
            TabOrder = 17
            ExplicitHeight = 80
          end
          object dtDATA_CADASTRO: TJvDBDateEdit
            Left = 307
            Top = 204
            Width = 134
            Height = 21
            DataField = 'DATA_CADASTRO'
            DataSource = ds
            ButtonFlat = True
            DefaultToday = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
              000000000000848484FF0000000000000000848484FF00000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF0000
              000000000000848484FF0000000000000000848484FF00000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
              000000000000848484FF0000000000000000848484FF00000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF0000
              0000000000000000000000000000000000000000000000000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF8484
              84FF000000004463D8FF4463D8FF4463D8FF4463D8FF00000000848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
              0000000000004463D8FF00000000000000004463D8FF00000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF0000
              0000000000004463D8FF00000000000000004463D8FF00000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF8484
              84FF000000004463D8FF4463D8FF4463D8FF4463D8FF00000000848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
              0000000000000000000000000000000000000000000000000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF0000
              000000000000848484FF0000000000000000848484FF00000000000000008484
              84FF0000000000000000848484FF0000000000000000848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
              84FF848484FF848484FF848484FF848484FF848484FF848484FF}
            ImageKind = ikCustom
            ShowNullDate = False
            Weekends = [Sun, Sat]
            TabOrder = 15
          end
          object chkINATIVO: TDBCheckBox
            Left = 668
            Top = 253
            Width = 77
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Inativo'
            DataField = 'INATIVO'
            DataSource = ds
            TabOrder = 18
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkBLOQUEADO: TDBCheckBox
            Left = 668
            Top = 276
            Width = 77
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Bloqueado'
            DataField = 'BLOQUEADO'
            DataSource = ds
            TabOrder = 19
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object pDetail: TPanel
          Left = 0
          Top = 344
          Width = 755
          Height = 212
          Align = alBottom
          BevelEdges = [beTop]
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 1
          object dbgDetail: TcxGrid
            Left = 0
            Top = 62
            Width = 755
            Height = 148
            Align = alClient
            TabOrder = 0
            ExplicitTop = 89
            ExplicitHeight = 121
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = ds
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
            end
            object gridDetail: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = True
              Navigator.Buttons.PriorPage.Visible = True
              Navigator.Buttons.Prior.Visible = True
              Navigator.Buttons.Next.Visible = True
              Navigator.Buttons.NextPage.Visible = True
              Navigator.Buttons.Last.Visible = True
              Navigator.Buttons.Insert.Visible = True
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Visible = True
              Navigator.Buttons.Cancel.Visible = True
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Visible = True
              Navigator.Buttons.GotoBookmark.Visible = True
              Navigator.Buttons.Filter.Visible = True
              DataController.DataSource = dsDetail
              DataController.DetailKeyFieldNames = 'None selected'
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                  Column = gridDetailNOME
                  DisplayText = 'Contatos'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
              OptionsView.ShowColumnFilterButtons = sfbWhenSelected
              object gridDetailID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object gridDetailFK_PESSOA: TcxGridDBColumn
                DataBinding.FieldName = 'FK_PESSOA'
                Visible = False
              end
              object gridDetailNOME: TcxGridDBColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'NOME'
                Width = 247
              end
              object gridDetailEMAIL: TcxGridDBColumn
                Caption = 'Email'
                DataBinding.FieldName = 'EMAIL'
                Width = 225
              end
              object gridDetailTELEFONE: TcxGridDBColumn
                Caption = 'Telefone'
                DataBinding.FieldName = 'TELEFONE'
                Width = 135
              end
              object gridDetailINATIVO: TcxGridDBColumn
                Caption = 'Inativo'
                DataBinding.FieldName = 'INATIVO'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.Alignment = taRightJustify
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Width = 99
              end
            end
            object lvlDetail: TcxGridLevel
              Caption = 'dbgPesqLevel1'
              GridView = gridDetail
            end
          end
          object pDetailCad: TPanel
            Left = 0
            Top = 0
            Width = 755
            Height = 62
            Align = alTop
            BevelEdges = [beBottom]
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 1
            Visible = False
            ExplicitTop = -6
            DesignSize = (
              755
              60)
            object Label1: TLabel
              Left = 6
              Top = 11
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object Label2: TLabel
              Left = 255
              Top = 11
              Width = 24
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Email'
              ExplicitLeft = 199
            end
            object Label3: TLabel
              Left = 525
              Top = 11
              Width = 42
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Telefone'
              ExplicitLeft = 469
            end
            object chkDetailINATIVO: TDBCheckBox
              Left = 694
              Top = 28
              Width = 59
              Height = 17
              Anchors = [akTop, akRight]
              Caption = 'Inativo'
              DataField = 'INATIVO'
              DataSource = dsDetail
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object edDetailNOME: TDBEdit
              Left = 6
              Top = 26
              Width = 243
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              DataField = 'NOME'
              DataSource = dsDetail
              TabOrder = 1
            end
            object edEMAIL: TDBEdit
              Left = 255
              Top = 26
              Width = 264
              Height = 21
              Anchors = [akTop, akRight]
              CharCase = ecLowerCase
              DataField = 'EMAIL'
              DataSource = dsDetail
              TabOrder = 2
            end
            object edTELEFONE: TDBEdit
              Left = 525
              Top = 26
              Width = 157
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'TELEFONE'
              DataSource = dsDetail
              TabOrder = 3
            end
          end
        end
        object pDetailBotoes: TPanel
          Left = 0
          Top = 317
          Width = 755
          Height = 27
          Align = alBottom
          BevelEdges = [beTop]
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 677
            Top = 3
            Width = 75
            Height = 19
            Align = alRight
            Alignment = taCenter
            AutoSize = False
            Caption = 'Contatos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = cl3DDkShadow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitLeft = 632
          end
          object btDetailInsert: TButton
            AlignWithMargins = True
            Left = 2
            Top = 1
            Width = 64
            Height = 23
            Margins.Left = 2
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alLeft
            Caption = 'Inserir'
            ImageIndex = 0
            Images = imgsDetail
            TabOrder = 0
            OnClick = btDetailInsertClick
          end
          object btDetailEdit: TButton
            AlignWithMargins = True
            Left = 70
            Top = 1
            Width = 64
            Height = 23
            Margins.Left = 2
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alLeft
            Caption = 'Editar'
            ImageIndex = 1
            Images = imgsDetail
            TabOrder = 1
            OnClick = btDetailEditClick
          end
          object btDetailCancel: TButton
            AlignWithMargins = True
            Left = 284
            Top = 1
            Width = 72
            Height = 23
            Margins.Left = 2
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alLeft
            Caption = 'Cancelar'
            ImageIndex = 3
            Images = imgsDetail
            TabOrder = 4
            OnClick = btDetailCancelClick
          end
          object btDetailSave: TButton
            AlignWithMargins = True
            Left = 214
            Top = 1
            Width = 66
            Height = 23
            Margins.Left = 2
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alLeft
            Caption = 'Salvar'
            ImageIndex = 2
            Images = imgsDetail
            TabOrder = 3
            OnClick = btDetailSaveClick
          end
          object btDetailDelete: TButton
            AlignWithMargins = True
            Left = 138
            Top = 1
            Width = 72
            Height = 23
            Margins.Left = 2
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alLeft
            Caption = 'Excluir'
            ImageIndex = 4
            Images = imgsDetail
            TabOrder = 2
            OnClick = btDetailDeleteClick
          end
        end
      end
      object pBotoes: TPanel
        Left = 0
        Top = 0
        Width = 755
        Height = 62
        Align = alTop
        BevelEdges = [beBottom]
        BevelKind = bkTile
        BevelOuter = bvNone
        Padding.Bottom = 3
        TabOrder = 1
        object btAuto: TSpeedButton
          Left = 730
          Top = 0
          Width = 23
          Height = 22
          Flat = True
          OnClick = btAutoClick
        end
        object btInsert: TButton
          Left = 0
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Inserir'
          DisabledImageIndex = 12
          ImageAlignment = iaTop
          ImageIndex = 0
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 0
          OnClick = btInsertClick
        end
        object btEdit: TButton
          Left = 56
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Editar'
          DisabledImageIndex = 13
          ImageAlignment = iaTop
          ImageIndex = 1
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 1
          OnClick = btEditClick
        end
        object btSave: TButton
          Left = 112
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Salvar'
          DisabledImageIndex = 15
          ImageAlignment = iaTop
          ImageIndex = 3
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 2
          OnClick = btSaveClick
        end
        object btCancel: TButton
          Left = 168
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Cancelar'
          DisabledImageIndex = 16
          ImageAlignment = iaTop
          ImageIndex = 4
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 3
          OnClick = btCancelClick
        end
        object btDelete: TButton
          Left = 224
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Excluir'
          DisabledImageIndex = 14
          ImageAlignment = iaTop
          ImageIndex = 2
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 4
          OnClick = btDeleteClick
        end
        object btPrint: TButton
          Left = 336
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Imprimir'
          DisabledImageIndex = 18
          ImageAlignment = iaTop
          ImageIndex = 6
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 5
        end
        object btFirst: TButton
          Left = 392
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Primeiro'
          DisabledImageIndex = 19
          ImageAlignment = iaTop
          ImageIndex = 7
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 6
          OnClick = btFirstClick
        end
        object btPrior: TButton
          Left = 448
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Anterior'
          DisabledImageIndex = 20
          ImageAlignment = iaTop
          ImageIndex = 8
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 7
          OnClick = btPriorClick
        end
        object btNext: TButton
          Left = 504
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Pr'#243'ximo'
          DisabledImageIndex = 21
          ImageAlignment = iaTop
          ImageIndex = 9
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 8
          OnClick = btNextClick
        end
        object btLast: TButton
          Left = 560
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = #218'ltimo'
          DisabledImageIndex = 22
          ImageAlignment = iaTop
          ImageIndex = 10
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 9
          OnClick = btLastClick
        end
        object btClose: TButton
          Left = 616
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Fechar'
          DisabledImageIndex = 23
          ImageAlignment = iaTop
          ImageIndex = 11
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 10
          OnClick = btCloseClick
        end
        object btSearch: TButton
          Left = 280
          Top = 0
          Width = 56
          Height = 57
          Align = alLeft
          Caption = 'Pesquisar'
          DisabledImageIndex = 17
          ImageAlignment = iaTop
          ImageIndex = 5
          ImageMargins.Top = 5
          Images = imgsCad
          TabOrder = 11
          OnClick = btSearchClick
        end
      end
    end
  end
  object ds: TDataSource
    DataSet = dmConexao.cdsCad
    Left = 16
    Top = 516
  end
  object dsDetail: TDataSource
    DataSet = dmConexao.cdsDetail
    Left = 56
    Top = 516
  end
  object dsPais: TDataSource
    DataSet = dmConexao.cdsPais
    Left = 101
    Top = 516
  end
  object dsUF: TDataSource
    DataSet = dmConexao.cdsUF
    Left = 140
    Top = 516
  end
  object dsCidade: TDataSource
    DataSet = dmConexao.cdsCidade
    Left = 179
    Top = 516
  end
  object imgsDetail: TImageList
    Left = 440
    Top = 520
    Bitmap = {
      494C010105000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000DBDBDB00CBCBCB00CBCB
      CB00CBCBCB00DEDEDE0000000000D1D1D100CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00D1D1D10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9D9D008A8A8B008A8B
      8B00898A8A00A1A1A100ACACAC008D8D8D006F6F6F005A5A59008E8F8F008A8A
      8A00888888008D8D8E00A9A9A900CFCFCF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500A7A6A500DBDAD700C1BD
      BB00B1AEAB0092919200777776008381800092908F00908D8C00A6A2A000B9B7
      B500D2CFCD00C5C4C300999998008E8E8E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8F8F00C6C5C400D1D0CE00CACA
      C700B8B5B300AAA8A5008B8A8A009E9B9900959290006A6A6900A4A19E006E6C
      6B00CECCCA00E1E0DE00C3C2C000898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8A8A00908E8B008B898600C9C7
      C500C4C2C000BCBAB800898A8A00605F5E009F9D9C00BDBAB900A29F9C00B8B6
      B400CECCCA0087868600C7C4C200888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088888900B6B3B200C4C2C000C1BF
      BD00D1CFCD00C1BEBC0087888800A3A19F00C2C0BF00706F6E00A29F9C006D6B
      6B00CECCCA00E1E0DE00C6C4C100888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868700E8E7E700B9B7B500B8B7
      B400DDDCDB00C6C3C10086878700615F5F00DAD8D700B9B6B500A19E9C00B8B6
      B400CFCDCA0087878600C6C4C200888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868700F2F1EF00EEEDEB00B1AD
      AB00E9E9E900CCCAC80084848500BFBDBB00E1E0DF006D6C6B00A19E9C006D6B
      6A00CECCCA00E1E0DE00C6C4C100888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091929200ACA8A700B0ADAB00BBB8
      B600EBEBEB00B9B8B500878686007F7E7D00DDDCDB00B6B2B1009E9B9900B5B3
      B100CDCBC90087868500C6C4C100888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D40099989700B2AEAC00E7E5
      E400DDDCDA0091919200ADABAA00E7E6E400D9D8D800B2AFAE009C999700B2B0
      AE00CBC8C600DDDDDA00C5C2C000888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAE00888989008B8C
      8C008B8B8C0085858500BEBBB900E4E3E000D7D6D500AFACAB0098959300AFAD
      AB00C8C6C400DBDAD800C3C1BE00878787000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868700CAC7C600EEEDEB00F6F5F400F8F7F600F9F8F700F7F6
      F500F4F3F200EAE9E700CCCBC900878787000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086878700EEEDEC007C7B7A00514F4E004A494700555252006360
      5E00706E6C0096939100ECECEA00868687000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000087888800EBEAE7007C7B7A006563620072706D007B7877008480
      7E008A888600A7A3A100E9E8E500878787000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000091919100A09F9F00CBCAC900E8E7E500E8E7E400E7E6E400E6E5
      E300E6E5E300C8C7C6009F9E9E00919191000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C1C1C100949494008787880087878700878787008787
      87008787870094949400C1C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9D9D900CBCBCB00CBCBCB00CBCBCB00CBCBCB00D9D9D9000000
      000000000000000000000000000000000000CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB000000000000000000CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00000000000000000000000000000000000000
      0000CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB000000
      000000000000000000000000000000000000000000000000000000000000DCDC
      DC00A2BEB100359B6C00008C4B00008B4A00008B4A00008C4B00359B6C00A2BE
      B10000000000000000000000000000000000596C7C004A6884004F94D900538C
      D100CBCBCB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0A77300B7821800B6801400B37A
      0600D7CFD200D8CEC900CECCCB00C7BDAB00D9CFCE00D5CAC300D4CAC400D6CF
      D200B37A0600B6801400B7821800C0A773000000000000000000000000009297
      C6002C3CC0002B3BBE002B3ABE002B3ABE002B3ABE002B3BBE002C3CC0009297
      C6000000000000000000000000000000000000000000000000000000000043A0
      76000090500001A1690000AA760000AB770000AB770000AA760001A169000090
      500054A781000000000000000000000000005F829D0080A4B50090D5FD005FBB
      FF003A6B9A00CBCBCB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7821800F6CD8B00F2C67D00F0C1
      7100FAF7FB00FFFFFF004C48480098939200FFFFFF00F7EFEA00F6EFEB00F9F6
      FA00F0C17100F2C67D00F6CD8B00B782180000000000000000009599C7002F3E
      C3005F71F900697DFF00697CFF00697CFF00697CFF00697DFF005F71F9002F3E
      C3009599C700000000000000000000000000000000000000000054A781000091
      520002AC770000C38C0000D6990018DEA80018DEA80000D6990000C38C0001AB
      76000092530054A7810000000000000000004CAAEA009FE6FF0099DBF900259F
      FF00179CFF003E6E9A00CBCBCB00000000000000000000000000000000000000
      000000000000000000000000000000000000B6811600F3CA8700EDBC6D00EBB7
      6100F8F5F700FFFFFF004A454100948C8800FFFFFF00F1E8E000F0E7E000F7F4
      F700EBB76100EDBC6D00F3CA8700B6811600000000009599C7002F3EC200586B
      F6005F74FF005D72FE005E72FD005E73FD005E72FD005D72FE005F74FF00586B
      F6002F3EC2009599C700000000000000000000000000ADC8BC00009051000FB4
      830002D2990000D69B0000D19300FFFFFF00FFFFFF0000D1930000D69B0000D1
      980001AB760000905000ADC9BC00000000004FB1EB0088E2FF0043BCFF0029A6
      FF001E9BFF001A9DFF003E6E9A00CBCBCB000000000000000000000000000000
      000000000000000000000000000000000000B6811600F1CB8900E9B76200E7B2
      5700F9F8FB00FDF7F200877F79004A444100FEF7F200EEE3D800EDE2D900F8F7
      FB00E8B25700E9B76200F1CB8900B68116009297C600303FC2005568F300586C
      FC004E64F9004D63F8005468F900576BF9005468F9004D63F8004E64F900586C
      FC005568F300303FC2009297C6000000000000000000359B6B0016AB780011C9
      970000D49A0000D2970000CD8E00FFFFFF00FFFFFF0000CD8E0000D2970000D5
      9B0000C18C0001A16900359C6C0000000000000000003478C3004ECDFF003DB9
      FF002DA8FF001F9CFF001A9DFF003E6E9A00CBCBCB0000000000000000000000
      000000000000000000000000000000000000B6811600F3CC8E00E8B25A00E7AE
      5100FCFFFF00ECE0D700F1E4DA00F1E5DA00EDE0D500EADDD300E9DED500FBFF
      FF00E7AE5100E8B25A00F3CC8E00B68116002D3DC0005367F200556BFA004960
      F700FFFFFF00FFFFFF003E56F600475EF6003E56F600FFFFFF00FFFFFF004960
      F700556BFA005166F2002D3DC0000000000000000000008A480038C49C0000D1
      980000CD920000CB8E0000C78700FFFFFF00FFFFFF0000C7870000CB8E0000CE
      930000D09A0000AB7600008C4B00000000000000000000000000397DC50051CF
      FF003EB9FF002DA8FF001F9CFF001A9DFF003E6E9A00CBCBCB00000000000000
      000000000000000000000000000000000000B6811500F3CE9400E6AE5100E5AB
      4B00E6C9A400FFFFFF00FFFFFF00FFFFFF00FEFFFF00FDFFFF00FEFFFF00E6C9
      A400E5AC4B00E6AE5100F3CE9400B68115002B3BBF006276FC004D64F6004259
      F400FFFFFF00FFFFFF00FFFFFF002C46F300FFFFFF00FFFFFF00FFFFFF004259
      F4004E64F6005F75FC002C3BBF0000000000000000000089460051D2AF0012D4
      A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000CF970000AD7800008B4A0000000000000000000000000000000000397D
      C60051CFFF003EB9FF002DA8FF001F9CFF001A9DFF003E6E9A00CBCBCB000000
      000000000000000000000000000000000000B6811500F3D09A00E5A84500E3A6
      4000E2A13600E29E2F00E19D2D00E19D2C00E19D2C00E19D2D00E29E2F00E2A1
      3600E3A64000E5A84500F3D09A00B68115002A3ABF007386FA00495FF300435A
      F3006E80F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006E80F600435A
      F300495FF3006E81FA002B3ABF0000000000000000000088450066DDBE0010D0
      A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000CD970000AD7800008B4A00000000000000000000000000000000000000
      0000397DC60051CFFF003EB9FF002DA8FF001F9CFF001A9DFF003D6E9B00CBCB
      CB0000000000000000000000000000000000B6811400F4D4A000E1A13600F2DE
      B700FCFFFF00FBFFFD00FBFFFC00FBFFFD00FBFFFD00FBFFFD00FBFFFD00FBFF
      FF00F2DEB700E1A13600F4D4A000B68114002939BF008696FB00425AF1004259
      F100354EF0005B70F200FFFFFF00FFFFFF00FFFFFF005B70F200354EF0004259
      F100435BF1007D90F9002A39BF0000000000000000000088460076E0C50000CA
      980000C5900000C48E0000C18700FFFFFF00FFFFFF0000C1870000C48E0000C7
      930000CB990000AB7600008C4B00000000000000000000000000000000000000
      000000000000397DC60051CFFF003EB9FF002DA8FF001E9CFF00169CFF00326C
      A200CBCBCB00000000000000000000000000B6801400F6D8A700E09C2700FBFF
      FF00FCFBF300FCF9EF00FBF8EE00FCFAF000FCFAF000FBF9EE00F9F8ED00FAF9
      F100FAFEFE00E09B2700F6D8A700B68014002737BF009AA8FB003A55EF003953
      EE002844ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002844ED003953
      EE003B55EF008E9DFA002838BF00000000000000000040A4730059C9A40049DE
      BC0000C7940000C7940000C38E00FFFFFF00FFFFFF0000C38E0000C8960000CB
      9A0006C1900000A168003FA67600000000000000000000000000000000000000
      00000000000000000000397DC60051CFFF003DB9FF0029A8FF00129BFF007FAB
      D100807A7200CBCBCB000000000000000000B6801400F8DCB000E0981C00FBFB
      F80079787B00A2A0A200FCF6EA0079787900A3A1A300A09FA100FAF4E9009D9D
      A000F9F9F600E0981C00F8DCB000B68014002637BF009FABF100314CED002B47
      EB00FFFFFF00FFFFFF00FFFFFF005369EF00FFFFFF00FFFFFF00FFFFFF002C47
      EB00314CED009FABF1002737BF000000000000000000CBE6D9000A945800ADF8
      E90018D0A70000C4940000C29000FFFFFF00FFFFFF0000C3910000C7990005C8
      9B0018B7870000905000CBE6D900000000000000000000000000000000000000
      0000000000000000000000000000397DC6004ECEFF0032B9FF0096BFDE00958A
      8100B9B6AF00787D6E00CBCBCB0000000000B6811300FCE3BC009B610400FDFC
      F900FDF5E800FEF4E700FBF2E500FCF2E500FBF2E500FBF2E500FAF1E300F9F1
      E500FCFAF7009A610400FCE3BC00B68113002838C1009FABF1008091F400213E
      E800FFFFFF00FFFFFF005D72EE002340E8005D72EE00FFFFFF00FFFFFF00213E
      E8008091F4009FABF1002838C10000000000000000000000000054AF8300199C
      6300BCFFF7005DE4C90000C3970000BF900000C0910000C4980022CAA20031C2
      97000393550069BA940000000000000000000000000000000000000000000000
      000000000000000000000000000000000000327DC900B9E3F40090857D00D3D0
      CB008A8E8400B672B200986ACA0000000000B6801200FEE9C60071410000FFFF
      FF0079797A007A7A7A00A2A1A1009F9F9F00F6ECDE0077777700A1A1A1009E9F
      A000FFFFFF0070410000FEE9C600B6801200B2B9E7002E3EC30097A5EF00778A
      F2005B71EE006074EE002643E6002C48E7002643E6006074EE005B71EE00778A
      F20097A5EF002E3EC300B2B9E7000000000000000000000000000000000069B9
      92000E96590074D5B6009FF3E00092EFDA0079E5CA005DD6B5002EB586000391
      520054B087000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000093867A00F2F0EB008689
      8000C990C900BB7FB700AE7DCE0000000000B6801200FDECD100DA860000FFFF
      FF00F1E5D800F2E5D800F2E5D700F0E3D600EFE2D500F1E4D700F1E4D600EFE3
      D600FFFFFF00DA860000FDECD100B680120000000000B4BAE8002E3EC20095A2
      EE007688F0001E3BE4002340E5002541E5002340E5001E3BE4007688F00095A2
      EE002E3EC200B4BAE80000000000000000000000000000000000000000000000
      0000CBE6D90043A676000087440000874300008744000089460043A87900CBE6
      D900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000087877F00E8B9
      E800D5A6D200BE8BD3000000000000000000B7811500FFECCD00FCE7C300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCE7C300FFECCD00B78115000000000000000000B4BAE8002F3D
      C30094A0EF00ADB9F800ADB8F700ADB9F700ADB8F700ADB9F80094A0EF002F3D
      C300B4BAE8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C38A
      D900BD88D300000000000000000000000000DAC08E00B7811400B57E0F00B57C
      0B00B57C0900B57C0900B57C0900B57C0900B57C0900B57C0900B57C0900B57C
      0900B57C0B00B57E0F00B7811400DAC08E00000000000000000000000000B2B7
      E700303FC4004555CE004454CD004354CD004454CD004555CE00303FC400B2B7
      E70000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0082030000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000F800000000000000F800000000000000F800000000000000
      F800000000000000FC01000000000000F81F0FFF8301F01FE00F07FF0000E00F
      E00703FF0000C007C00301FF00008003800100FF000000018001807F00000001
      8001C03F000000018001E01F000000018001F00F000000018001F80700000001
      8001FC03000000018001FE0100000001C003FF0100000001E007FF8100008003
      F00FFFC30000C007FFFFFFE70000E00F00000000000000000000000000000000
      000000000000}
  end
  object imgsCad: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 390
    Top = 520
    Bitmap = {
      494C010118002800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000E0000000010020000000000000C0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      0009000000100000001500000011000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000600000011000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      00160000001600000016000000160000001600000016000000170000001C0000
      0028000000360000004000000032000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B000000220000002D0000
      002D0000002D0000002D0000002D000000320000003D00000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      00430000004300000043000000430000004300000043000000430303034C3434
      3499565656D0777777FFA2A2A2FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000065B5B5BFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFF5A5A5AFF5A5A5AFF595959FF595959FF5959
      59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
      59FF595959FF595959FF585858FF636363FF6B6B6BFF767676FF7B7B7BFF7A7A
      7AFF797979FF7C7C7CFFA0A0A0FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006000000110000001600000010000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000100000
      0016000000110000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005000000100000001600000011000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000050000001000000016000000160000001600000010000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166B6B6BFF696969FF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF696969FF676767FF818181FF7D7D7DFF7D7D7DFF7C7C7CFF7C7C
      7CFF7B7B7BFF828282FF9F9F9FFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C000000370000004200000031000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000010000000310000
      0042000000370000001C00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000100000003100000042000000370000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000100000003100000042000000430000004200000031000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166B6B6BFF656565FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF636363FF818181FF7E7E7EFF7D7D7DFF7D7D7DFF7D7D
      7DFF7B7B7BFF878787FF9D9D9DFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000060000001C0000
      003D737373FF737373FF6E6E6EF3000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000166E6E6EF37373
      73FF727272FF0000003D0000001C000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000166E6E6EF3737373FF727272FF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000166E6E6EF3727272FF717171FF727272FF6E6E6EF3000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166B6B6BFF646464FF656565FF6565
      65FF656565FF656565FF656565FF656565FF656565FF656565FF656565FF6565
      65FF656565FF646464FF616161FF828282FF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7C7C7CFF8B8B8BFF9B9B9BFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060000001C0000003D7070
      70FFBEBEBEFFA9A9A9FF747474FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016727272FFBBBB
      BBFFBDBDBDFF6F6F6FFF0000003D0000001C0000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016727272FFBBBBBBFFBDBDBDFF6F6F6FFF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      000000000016727272FFB9B9B9FFB4B4B4FFB9B9B9FF727272FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166C6C6CFF616161FF636363FF6363
      63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
      63FF636363FF636363FF5F5F5FFF838383FF808080FF808080FF808080FF8080
      80FF7D7D7DFF909090FF999999FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000060000001C0000003D707070FFB8B8
      B8FFB0B0B0FFA6A6A6FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFB7B7
      B7FFAEAEAEFFB8B8B8FF707070FF0000003D0000001C00000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFB7B7B7FFAEAEAEFFB8B8B8FF7070
      70FF0000003D0000001C00000006000000000000000000000000000000000000
      000000000016717171FFB5B5B5FFACACACFFB5B5B5FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166D6D6DFF5F5F5FFF616161FF6161
      61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
      61FF616161FF606060FF5D5D5DFF858585FF828282FF828282FF828282FF8282
      82FF7E7E7EFF949494FF989898FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000060000001C0000003D707070FFB8B8B8FFAAAA
      AAFFAAAAAAFFA5A5A5FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFB6B6
      B6FFA9A9A9FFAAAAAAFFB8B8B8FF707070FF0000003D0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFB6B6B6FFA9A9A9FFAAAAAAFFB8B8
      B8FF707070FF0000003D0000001C000000060000000000000000000000000000
      000000000016717171FFB6B6B6FFA9A9A9FFB6B6B6FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166E6E6EFF5E5E5EFF5F5F5FFF6060
      60FF606060FF606060FF606060FF606060FF606060FF606060FF606060FF6060
      60FF606060FF5F5F5FFF5B5B5BFF878787FF848484FF838383FF838383FF8383
      83FF818181FF999999FF969696FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000060000001C0000003D707070FFB8B8B8FFA6A6A6FFA5A5
      A5FFA6A6A6FFA5A5A5FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFB6B6
      B6FFA4A4A4FFA5A5A5FFA6A6A6FFB8B8B8FF707070FF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFB6B6B6FFA4A4A4FFA5A5A5FFA6A6
      A6FFB8B8B8FF707070FF0000003D0000001C0000000600000000000000000000
      000000000016717171FFB6B6B6FFA5A5A5FFB6B6B6FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166F6F6FFF5B5B5BFF5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5E5E5EFF5D5D5DFF595959FF888888FF858585FF848484FF848484FF8484
      84FF828282FF9E9E9EFF949494FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000060000001C0000003D717171FFB8B8B8FFA2A2A2FFA1A1A1FFA1A1
      A1FFA2A2A2FFA5A5A5FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFB5B5
      B5FFA1A1A1FFA1A1A1FFA1A1A1FFA2A2A2FFB8B8B8FF717171FF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFB5B5B5FFA1A1A1FFA1A1A1FFA1A1
      A1FFA2A2A2FFB8B8B8FF717171FF0000003D0000001C00000006000000000000
      000000000016717171FFB6B6B6FFA2A2A2FFB6B6B6FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000166F6F6FFF595959FF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5B5B5BFF575757FF8A8A8AFF868686FF858585FF858585FF8585
      85FF7D7D7DFFA2A2A2FF929292FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00060000001C0000003D717171FFB3B3B3FF9F9F9FFF9E9E9EFF9E9E9EFF9E9E
      9EFF9E9E9EFFA5A5A5FF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFB5B5
      B5FF9D9D9DFF9E9E9EFF9E9E9EFF9E9E9EFF9F9F9FFFB3B3B3FF717171FF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFB5B5B5FF9D9D9DFF9E9E9EFF9E9E
      9EFF9E9E9EFF9F9F9FFFB3B3B3FF717171FF0000003D0000001C000000060000
      000000000016717171FFB7B7B7FF9E9E9EFFB7B7B7FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016707070FF585858FF5A5A5AFF5A5A
      5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A
      5AFF5A5A5AFF595959FF555555FF8B8B8BFF888888FF878787FF878787FF8787
      87FF767676FFA7A7A7FF919191FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C0000003C717171FFB4B4B4FF9B9B9BFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFFA6A6A6FF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFB6B6
      B6FF999999FF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9B9B9BFFB4B4B4FF7171
      71FF0000003C0000001C00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFB6B6B6FF999999FF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9B9B9BFFB4B4B4FF717171FF0000003C0000001C0000
      000600000016717171FFB8B8B8FF9B9B9BFFB8B8B8FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016717171FF565656FF585858FF5959
      59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
      59FF595959FF585858FF535353FF8D8D8DFF898989FF888888FF888888FF8888
      88FF6D6D6DFFABABABFF8F8F8FFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000000000000060000001C0000
      003C717171FFAFAFAFFC979797FF979797FF979797FF979797FF979797FF9797
      97FF969696FFA6A6A6FF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016727272FFB7B7
      B7FF959595FF979797FF979797FF979797FF979797FF979797FF979797FFAFAF
      AFFC717171FF0000003C0000001C000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016727272FFB7B7B7FF959595FF979797FF9797
      97FF979797FF979797FF979797FF979797FFAFAFAFFC717171FF0000003C0000
      001C0000001C717171FFBABABAFF989898FFBABABAFF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016727272FF535353FF565656FF5757
      57FF575757FF575757FF575757FF575757FF575757FF575757FF575757FF5757
      57FF575757FF565656FF505050FF8E8E8EFF8A8A8AFF898989FF888888FF9292
      92FF969696FFAFAFAFFF8D8D8DFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000011000000377171
      71FFA9A9A9F6929292FF939393FF939393FF939393FF939393FF939393FF9393
      93FF929292FFA7A7A7FF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016727272FFB8B8
      B8FF919191FF939393FF939393FF939393FF939393FF939393FF939393FF9292
      92FFA9A9A9F6717171FF00000037000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016727272FFB8B8B8FF919191FF939393FF9393
      93FF939393FF939393FF939393FF939393FF929292FFA9A9A9F6717171FF0000
      003700000027717171FFBABABAFF959595FFBABABAFF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016737373FF525252FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF545454FF4F4F4FFF909090FF8C8C8CFF8B8B8BFF8A8A8AFF9696
      96FF818181FFB2B2B2FF8B8B8BFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000011737373FFABAB
      ABF8999999FF8F8F8FFF909090FF909090FF909090FF909090FF909090FF9090
      90FF8F8F8FFFA8A8A8FF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016727272FFB9B9
      B9FF8D8D8DFF909090FF909090FF909090FF909090FF909090FF909090FF8F8F
      8FFF999999FFABABABF8737373FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016727272FFB9B9B9FF8D8D8DFF909090FF9090
      90FF909090FF909090FF909090FF909090FF8F8F8FFF999999FFABABABF87373
      73FF00000027717171FFBCBCBCFF919191FFBCBCBCFF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016737373FF505050FF535353FF5454
      54FF545454FF545454FF545454FF545454FF545454FF545454FF545454FF5454
      54FF545454FF535353FF4D4D4DFF929292FF8D8D8DFF8C8C8CFF8B8B8BFF9898
      98FF797979FFB7B7B7FF8A8A8AFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000006737373FFAEAE
      AEF7959595FF8A8A8AFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C
      8CFF8B8B8BFFAAAAAAFF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016727272FFBBBB
      BBFF898989FF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8A8A
      8AFF959595FFAEAEAEF7737373FF000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016727272FFBBBBBBFF898989FF8C8C8CFF8C8C
      8CFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF8A8A8AFF959595FFAEAEAEF77373
      73FF0000001C717171FFBEBEBEFF8E8E8EFFBEBEBEFF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016747474FF4E4E4EFF525252FF5252
      52FF525252FF525252FF525252FF525252FF525252FF525252FF525252FF5252
      52FF525252FF515151FF4B4B4BFF939393FF8E8E8EFF8D8D8DFF8C8C8CFF9797
      97FF717171FFBBBBBBFF888888FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000067171
      71FFB1B1B1F5868686FF878787FF888888FF898989FF898989FF898989FF8888
      88FF868686FFABABABFF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016727272FFBDBD
      BDFF858585FF888888FF898989FF898989FF898989FF888888FF878787FF8686
      86FFB1B1B1F5717171FF00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016727272FFBDBDBDFF858585FF888888FF8989
      89FF898989FF898989FF888888FF878787FF868686FFB1B1B1F5717171FF0000
      000600000016717171FFC0C0C0FF8B8B8BFFC0C0C0FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016757575FF4C4C4CFF505050FF5050
      50FF505050FF505050FF505050FF505050FF505050FF505050FF505050FF5050
      50FF505050FF4F4F4FFF494949FF959595FF8F8F8FFF8E8E8EFF8E8E8EFF9393
      93FF949494FFBDBDBDFF878787FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006717171FFB5B5B5F5828282FF848484FF868686FF868686FF868686FF8585
      85FF838383FFADADADFF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFBFBF
      BFFF828282FF858585FF868686FF868686FF868686FF848484FF828282FFB5B5
      B5F5717171FF0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFBFBFBFFF828282FF858585FF8686
      86FF868686FF868686FF848484FF828282FFB5B5B5F5717171FF000000060000
      000000000016717171FFC2C2C2FF888888FFC2C2C2FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016767676FF494949FF4D4D4DFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4D4D4DFF474747FF969696FF919191FF909090FF909090FF8E8E
      8EFF8C8C8CFFC1C1C1FF858585FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006717171FFC3C3C3FF7D7D7DFF808080FF828282FF828282FF8282
      82FF7E7E7EFFAEAEAEFF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFC1C1
      C1FF7D7D7DFF818181FF828282FF828282FF808080FF7D7D7DFFC3C3C3FF7171
      71FF000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFC1C1C1FF7D7D7DFF818181FF8282
      82FF828282FF808080FF7D7D7DFFC3C3C3FF717171FF00000006000000000000
      000000000016717171FFC4C4C4FF848484FFC4C4C4FF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016777777FF484848FF4C4C4CFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4C4C4CFF454545FF989898FF929292FF919191FF919191FF9090
      90FF8D8D8DFFC5C5C5FF838383FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006717171FFC6C6C6FF787878FF7B7B7BFF7D7D7DFF7D7D
      7DFF7A7A7AFFB0B0B0FF737373FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFC3C3
      C3FF797979FF7C7C7CFF7D7D7DFF7B7B7BFF787878FFC6C6C6FF717171FF0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFC3C3C3FF797979FF7C7C7CFF7D7D
      7DFF7B7B7BFF787878FFC6C6C6FF717171FF0000000600000000000000000000
      000000000016707070FFC6C6C6FF808080FFC6C6C6FF707070FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016787878FF464646FF4A4A4AFF4B4B
      4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B
      4BFF4B4B4BFF4A4A4AFF424242FF9A9A9AFF939393FF929292FF929292FF9191
      91FF8E8E8EFFC8C8C8FF818181FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000006717171FFC9C9C9FF757575FF787878FF7979
      79FF777777FFB3B3B3FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFC7C7
      C7FF757575FF797979FF787878FF757575FFC9C9C9FF717171FF000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFC7C7C7FF757575FF797979FF7878
      78FF757575FFC9C9C9FF717171FF000000060000000000000000000000000000
      000000000016707070FFCACACAFF7C7C7CFFCACACAFF707070FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016787878FF444444FF484848FF4949
      49FF494949FF494949FF494949FF494949FF494949FF494949FF494949FF4949
      49FF494949FF484848FF414141FF9B9B9BFF949494FF939393FF939393FF9292
      92FF8F8F8FFFCDCDCDFF808080FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000006717171FFCDCDCDFF717171FF7373
      73FF727272FFB5B5B5FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFCACA
      CAFF707070FF737373FF717171FFCDCDCDFF717171FF00000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFCACACAFF707070FF737373FF7171
      71FFCDCDCDFF717171FF00000006000000000000000000000000000000000000
      000000000016707070FFCCCCCCFF787878FFCCCCCCFF707070FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000016797979FF434343FF474747FF4848
      48FF484848FF484848FF484848FF484848FF484848FF484848FF484848FF4848
      48FF484848FF474747FF3F3F3FFF9D9D9DFF969696FF959595FF959595FF9494
      94FF919191FFD0D0D0FF7D7D7DFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000006717171FFD0D0D0FF6C6C
      6CFF6C6C6CFFB7B7B7FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016717171FFCCCC
      CCFF6A6A6AFF6B6B6BFFD0D0D0FF717171FF0000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016717171FFCCCCCCFF6A6A6AFF6B6B6BFFD0D0
      D0FF717171FF0000000600000000000000000000000000000000000000000000
      000000000016707070FFCECECEFF757575FFCECECEFF707070FF000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000167A7A7AFF404040FF454545FF4646
      46FF464646FF464646FF464646FF464646FF464646FF464646FF464646FF4646
      46FF464646FF454545FF3D3D3DFF9E9E9EFF979797FF969696FF969696FF9595
      95FF929292FFD3D3D3FF7B7B7BFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006717171FFD3D3
      D3FF636363FFB9B9B9FF727272FF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000015717171FFCECE
      CEFF626262FFD2D2D2FF717171FF000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000015717171FFCECECEFF626262FFD2D2D2FF7171
      71FF000000060000000000000000000000000000000000000000000000000000
      000000000015707070FFD1D1D1FF6F6F6FFFD1D1D1FF707070FF000000150000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000167B7B7BFF3E3E3EFF434343FF4444
      44FF444444FF444444FF444444FF444444FF444444FF444444FF444444FF4444
      44FF444444FF434343FF3A3A3AFF9F9F9FFF989898FF979797FF979797FF9696
      96FF939393FFD7D7D7FF797979FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000067171
      71FFD0D0D0FFBCBCBCFF737373FF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000D717171FFD4D4
      D4FFCFCFCFFF707070FF00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D717171FFD4D4D4FFCFCFCFFF707070FF0000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000D717171FFD8D8D8FFD6D6D6FFD8D8D8FF717171FF0000000D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000157B7B7BFF3C3C3CFF414141FF4242
      42FF424242FF424242FF424242FF424242FF424242FF424242FF424242FF4242
      42FF424242FF404040FF373737FF9E9E9EFF989898FF979797FF989898FF9797
      97FF949494FFDBDBDBFF787878FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006727272FF727272FF505050B4000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004505050B47171
      71FF727272FF0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000004505050B4717171FF727272FF000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000004505050B4717171FF707070FF717171FF505050B4000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D7B7B7BFF353535FF393939FF3A3A
      3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A
      3AFF3A3A3AFF383838FF303030FFDADADAFFAAAAAAFF959595FF989898FF9898
      98FF959595FFDEDEDEFF767676FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000004545454B47C7C7CFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7D7D7DFF777777FFA6A6A6FFD2D2D2FFC7C7C7FFA0A0A0FF9696
      96FF959595FFE0E0E0FF757575FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000038A8A8AABD9D9D9FFBFBF
      BFFF969696FFE2E2E2FF727272FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000118181822AFAF
      AFD1D5D5D5FFE5E5E5FF717171FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00013B3B3B4BDFDFDFFC6F6F6FFF000000060000000000000000000000000000
      0000000000000000000000000000000000000000000500000010000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000010000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000600000011000000160000
      0016000000110000000600000000000000000000000000000000000000000000
      00000000000000000000000000040000000D0000001500000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000150000000D00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000050000001900000035000000420000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004200000035000000190000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000060000001C00000037000000430000
      0043000000370000001C00000006000000000000000000000000000000000000
      000000000000000000000000000D0000002B0000003F00000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      00430000004300000043000000430000003F0000002B0000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005000000190000003A636363EF6C6C6CFF6C6C
      6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
      6CFF6C6C6CFF6C6C6CFF646464EF0000003A0000001900000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000060000001C0000003D7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000003700000011000000000000000000000000000000000000
      0000000000000000000000000015555555C4767676FF747474FF747474FF7474
      74FF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
      74FF747474FF747474FF747474FF767676FF555555C400000015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000500000019000000395F5F5FEB727272FF737373FF7272
      72FF717171FF707070FF6F6F6FFF6D6D6DFF6C6C6CFF6B6B6BFF6A6A6AFF6868
      68FF696969FF6A6A6AFF6C6C6CFF606060EB0000003900000019000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000060000001C0000003D7C7C7CFF848484FF949494FF9A9A
      9AFFA0A0A0FF898989FF00000016000000000000000000000000000000000000
      0000000000000000000000000016767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767676FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000019000000395F5F5FEB747474FF818181FFA8A8A8FFA9A9
      A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9
      A9FFA9A9A9FFA8A8A8FF757575FF6B6B6BFF606060EB00000039000000190000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000060000001C0000003D7C7C7CFF848484FF939393FF9A9A9AFF9D9D
      9DFFABABABFF888888FF00000016000000000000000000000000000000000000
      0000000000000000000000000016737373FFFFFFFFFFF4F4F4FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF4F4F4FFFFFFFFFF737373FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005000000100000001600000016000000160000
      0010000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000006000000110000001600000010000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      000500000019000000395E5E5EEB767676FF848484FFA6A6A6FFA6A6A6FFA5A5
      A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5
      A5FFA5A5A5FFA6A6A6FFA6A6A6FF757575FF6B6B6BFF606060EB000000390000
      0019000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00060000001C0000003D7C7C7CFF848484FF929292FF999999FF9A9A9AFFEAEA
      EAFFA7A7A7FF888888FF0000001200000000000000040000000D000000150000
      0016000000160000001600000027737373FFFFFFFFFFE9E9E9FFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFE9E9E9FFFFFFFFFF737373FF00000027000000160000
      001600000016000000150000000D000000040000000000000000000000000000
      0000000000000000000000000010000000310000004200000043000000420000
      0032000000120000000100000000000000000000000000000000000000000000
      000000000000000000060000001C000000370000004200000031000000100000
      0000000000000000000000000000000000000000000000000000000000050000
      0019000000395E5E5EEB7A7A7AFF878787FFA4A4A4FFA4A4A4FFA2A2A2FFA2A2
      A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2
      A2FFA2A2A2FFA2A2A2FFA4A4A4FFA4A4A4FF747474FF6B6B6BFF606060EB0000
      0039000000190000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C0000003D7C7C7CFF848484FF929292FF999999FF9A9A9AFFE7E7E7FFECEC
      ECFFACACACFF8A8A8AFF00000008000000000000000D0000002B0000003F0000
      0043000000430000004300000048737373FFFFFFFFFFE0E0E0FFE0E0E0FFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE0E0E0FFE0E0E0FFFFFFFFFF737373FF00000048000000430000
      0043000000430000003F0000002B0000000D0000000000000000000000000000
      00000000000000000000000000166E6E6EF3727272FF717171FF727272FF6C6C
      6CF10000001D0000000300000000000000000000000000000000000000000000
      0000000000060000001C0000003D727272FF737373FF6E6E6EF3000000160000
      0000000000000000000000000000000000000000000000000005000000190000
      00395E5E5EEB7C7C7CFF8B8B8BFFA2A2A2FFA2A2A2FFA0A0A0FF9F9F9FFF9F9F
      9FFFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FF9F9F9FFF9F9F9FFFA0A0A0FFA2A2A2FFA3A3A3FF747474FF6B6B6BFF6060
      60EB000000390000001900000005000000000000000000000000000000000000
      0000000000000000000000000001000000050000000D00000014000000160000
      00160000001600000016000000140000000D00000005000000060000001C0000
      003D7B7B7BFF848484FF929292FF999999FF9A9A9AFFE7E7E7FFEAEAEAFFAAAA
      AAFF858585FF1B1B1B390000000100000000000000155A5A5AC4808080FF7D7D
      7DFF7D7D7DFF808080FF818181FF737373FFFFFFFFFFD5D5D5FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD6D6D6FFD6D6D6FFD5D5D5FFFFFFFFFF737373FF818181FF808080FF7D7D
      7DFF7D7D7DFF808080FF5A5A5AC4000000150000000000000000000000000000
      0000000000000000000000000016727272FFB9B9B9FFB4B4B4FFB9B9B9FF7272
      72FF1919194F0000000500000000000000000000000000000000000000000000
      00060000001C0000003D6F6F6FFFBDBDBDFFBBBBBBFF727272FF000000160000
      00000000000000000000000000000000000000000005000000190000003A5E5E
      5EEB7E7E7EFF8E8E8EFFA0A0A0FFA0A0A0FF9E9E9EFF9C9C9CFF999999FF9999
      99FF9C9C9CFF9E9E9EFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9E9E9EFF9C9C
      9CFF999999FF999999FF9C9C9CFF9F9F9FFFA1A1A1FFA1A1A1FF747474FF6B6B
      6BFF606060EB0000003A00000019000000050000000000000000000000000000
      00000000000000000005000000100000001F000000310000003E000000420000
      004300000043000000420000003E0000003100000020000000230000003D7777
      77FF909090FF919191FF989898FF999999FFE7E7E7FFEAEAEAFFA9A9A9FF8484
      84FF0000000600000000000000000000000000000016808080FFE7E7E7FFDFDF
      DFFFE0E0E0FFE4E4E4FF757575FF757575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575FF757575FFE4E4E4FFE0E0
      E0FFDFDFDFFFE7E7E7FF808080FF000000160000000000000000000000000000
      0000000000000000000000000016717171FFB5B5B5FFACACACFFB5B5B5FF7171
      71FF1818184C0000000500000000000000000000000000000000000000060000
      001C0000003D707070FFB8B8B8FFAEAEAEFFB7B7B7FF717171FF000000160000
      00000000000000000000000000000000000000000010000000355E5E5EEB8282
      82FF919191FF9E9E9EFF9E9E9EFF9C9C9CFF9A9A9AFF939393FFE1E1E1FFF9F9
      F9FF9A9A9AFF999999FF9C9C9CFF9D9D9DFF9D9D9DFF9C9C9CFF999999FF9A9A
      9AFFF9F9F9FFE1E1E1FF939393FF9A9A9AFF9D9D9DFF9F9F9FFF9E9E9EFF7474
      74FF6C6C6CFF606060EB00000035000000100000000000000000000000000000
      0001000000090000001C000000350E0E0E5C4B4B4BC36C6C6CF86F6F6FFF6E6E
      6EFF6E6E6EFF6F6F6FFF6C6C6CF84B4B4BC30C0C0C5B00000049777777FF9898
      98FF9F9F9FFFA3A3A3FF969696FFE6E6E6FFEAEAEAFFA9A9A9FF848484FF0000
      000600000000000000000000000000000000000000167D7D7DFFE1E1E1FFD4D4
      D4FFD4D4D4FFD8D8D8FF949494FF6B6B6BFF6A6A6AFF676767FF797979FF7979
      79FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
      78FF797979FF797979FF676767FF6A6A6AFF6B6B6BFF949494FFD8D8D8FFD4D4
      D4FFD4D4D4FFE1E1E1FF7D7D7DFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFB6B6B6FFA9A9A9FFB6B6B6FF7171
      71FF1818184C00000005000000000000000000000000000000060000001C0000
      003D707070FFB8B8B8FFAAAAAAFFA9A9A9FFB6B6B6FF717171FF000000160000
      00000000000000000000000000000000000000000016626262EE848484FF9494
      94FF9C9C9CFF9C9C9CFF9B9B9BFF989898FF919191FFDDDDDDFFFFFFFFFFFFFF
      FFFFF5F5F5FF909090FF989898FF9A9A9AFF9A9A9AFF989898FF989898FFF5F5
      F5FFFFFFFFFFFFFFFFFFDDDDDDFF919191FF999999FF9B9B9BFF9D9D9DFF9D9D
      9DFF747474FF6C6C6CFF646464EE000000160000000000000000000000010000
      000C00000024050505485D5D5DDF7D7D7DFFB1B1B1FFCECECEFFE3E3E3FFE2E2
      E2FFE2E2E2FFE3E3E3FFCECECEFFB1B1B1FF7C7C7CFF747474FD939393FFA2A2
      A2FFA8A8A8FFACACACFFEAEAEAFFE7E7E7FFA9A9A9FF848484FF000000060000
      000000000000000000000000000000000000000000167D7D7DFFE0E0E0FFCDCD
      CDFFCDCDCDFFCFCFCFFFD5D5D5FF8C8C8CFF5F5F5FFF606060FF606060FF5F5F
      5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
      5FFF5F5F5FFF606060FF606060FF5F5F5FFF8C8C8CFFD5D5D5FFCFCFCFFFCDCD
      CDFFCDCDCDFFE0E0E0FF7D7D7DFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFB6B6B6FFA5A5A5FFB6B6B6FF7171
      71FF1818184C000000050000000000000000000000060000001C0000003D7070
      70FFB8B8B8FFA6A6A6FFA5A5A5FFA4A4A4FFB6B6B6FF717171FF000000160000
      000000000000000000000000000000000000000000166A6A6AFF969696FF9B9B
      9BFF9A9A9AFF999999FF989898FF949494FFDFDFDFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDCDCDCFF8F8F8FFF969696FF969696FF8F8F8FFFDBDBDBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0FF949494FF999999FF999999FF9B9B
      9BFF9D9D9DFF6B6B6BFF6D6D6DFF000000160000000000000000000000090000
      00241F1F1F76707070FFB2B2B2FFE5E5E5FFE2E2E2FFE0E0E0FFDFDFDFFFDEDE
      DEFFDEDEDEFFDFDFDFFFDFDFDFFFE2E2E2FFE5E5E5FFB1B1B1FF6F6F6FFF9898
      98FFB1B1B1FFEEEEEEFFF3F3F3FFC2C2C2FF828282FF00000006000000000000
      000000000000000000000000000000000000000000167D7D7DFFE2E2E2FFC8C8
      C8FFC8C8C8FFC9C9C9FFCBCBCBFFCECECEFFD2D2D2FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D3D3FFD2D2D2FFCECECEFFCBCBCBFFC9C9C9FFC8C8
      C8FFC8C8C8FFE2E2E2FF7D7D7DFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFB6B6B6FFA2A2A2FFB6B6B6FF7171
      71FF1818184C0000000500000000000000060000001C0000003D717171FFB8B8
      B8FFA2A2A2FFA1A1A1FFA1A1A1FFA1A1A1FFB5B5B5FF717171FF000000160000
      00000000000000000000000000000000000000000016696969FF999999FF9999
      99FF989898FF989898FF979797FF929292FFF0F0F0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBDBDBFF8B8B8BFF8B8B8BFFDBDBDBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8FF939393FF979797FF989898FF9999
      99FF9C9C9CFF6C6C6CFF6C6C6CFF0000001600000000000000050000001C2121
      2174787878FFD2D2D2FFE4E4E4FFE2E2E2FFCFCFCFFFBCBCBCFFB0B0B0FFB0B0
      B0FFB0B0B0FFAFAFAFFFBBBBBBFFCECECEFFE1E1E1FFE4E4E4FFD1D1D1FF7272
      72FFA4A4A4FFF8F8F8FFCECECEFF909090FF0000000600000000000000000000
      000000000000000000000000000000000000000000167D7D7DFFE3E3E3FFC2C2
      C2FFC3C3C3FFC3C3C3FFC5C5C5FFC8C8C8FFCACACAFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC8C8C8FFC5C5C5FFC3C3C3FFC3C3
      C3FFC2C2C2FFE3E3E3FF7D7D7DFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFB7B7B7FF9E9E9EFFB7B7B7FF7171
      71FF1818184C00000005000000060000001C0000003D717171FFB3B3B3FF9F9F
      9FFF9E9E9EFF9E9E9EFF9E9E9EFF9D9D9DFFB5B5B5FF717171FF000000160000
      00000000000000000000000000000000000000000016696969FF9E9E9EFF9696
      96FF959595FF969696FF959595FF929292FF939393FFF4F4F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6FFD6D6D6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F4F4FF939393FF939393FF959595FF969696FF9696
      96FF999999FF707070FF6C6C6CFF0000001600000001000000110505053E7B7B
      7BFFD4D4D4FFE6E6E6FFDDDDDDFFB5B5B5FFACACACFFAFAFAFFFB5B5B5FFBABA
      BAFFBEBEBEFFC2C2C2FFBCBCBCFFB1B1B1FFB3B3B3FFDCDCDCFFE6E6E6FFD1D1
      D1FF6F6F6FFFC7C7C7FF909090FF000000060000000000000000000000000000
      000000000000000000000000000000000000000000167D7D7DFFE6E6E6FFBDBD
      BDFFBFBFBFFFC1C1C1FFC5C5C5FF959595FF787878FF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF7A7A7AFF7A7A7AFF787878FF959595FFC5C5C5FFC1C1C1FFBFBF
      BFFFBDBDBDFFE6E6E6FF7D7D7DFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFB8B8B8FF9B9B9BFFB8B8B8FF7171
      71FF1818184B0000000A0000001C0000003C717171FFB4B4B4FF9B9B9BFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF999999FFB6B6B6FF717171FF000000160000
      00000000000000000000000000000000000000000016696969FFA3A3A3FF9494
      94FF949494FF949494FF949494FF939393FF909090FF909090FFF4F4F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4F4F4FF909090FF909090FF939393FF949494FF949494FF9595
      95FF989898FF727272FF6C6C6CFF000000160000000600000021606060DDB8B8
      B8FFE8E8E8FFE0E0E0FFAAAAAAFFA8A8A8FFAEAEAEFFB4B4B4FFB9B9B9FFBFBF
      BFFFC3C3C3FFC6C6C6FFCACACAFFCACACAFFB9B9B9FFA7A7A7FFDFDFDFFFE8E8
      E8FFB4B4B4FF838383FD00000020000000050000000000000000000000000000
      000000000000000000000000000000000000000000167C7C7CFFEAEAEAFFB7B7
      B7FFB9B9B9FFBDBDBDFF8D8D8DFF737373FF767676FF767676FF777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF767676FF767676FF737373FF8D8D8DFFBDBDBDFFB9B9
      B9FFB7B7B7FFEAEAEAFF7C7C7CFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFBABABAFF989898FFBABABAFF7171
      71FF1515154C0000001F0000003C717171FFAFAFAFFC979797FF979797FF9797
      97FF979797FF979797FF979797FF959595FFB7B7B7FF727272FF000000160000
      00000000000000000000000000000000000000000016686868FFA7A7A7FF9292
      92FF929292FF939393FF939393FF939393FF919191FF8E8E8EFF8F8F8FFFF3F3
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3F3F3FF8F8F8FFF8E8E8EFF919191FF939393FF939393FF939393FF9393
      93FF969696FF757575FF6C6C6CFF000000160000000E1818185B848484FFEEEE
      EEFFE9E9E9FFADADADFFA2A2A2FFA9A9A9FFB0B0B0FFB7B7B7FFBCBCBCFFC2C2
      C2FFC7C7C7FFCBCBCBFFCFCFCFFFCFCFCFFFCDCDCDFFB7B7B7FFAAAAAAFFE9E9
      E9FFEDEDEDFF808080FF0C0C0C460000000D0000000000000000000000000000
      000000000000000000000000000000000000000000167C7C7CFFEEEEEEFFAEAE
      AEFFB0B0B0FFB7B7B7FF646464FF6B6B6BFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6B6B6BFF646464FFB7B7B7FFB0B0
      B0FFAEAEAEFFEEEEEEFF7C7C7CFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFBABABAFF959595FFBABABAFF7171
      71FF131313500000003A717171FFA9A9A9F6929292FF939393FF939393FF9393
      93FF939393FF939393FF939393FF919191FFB8B8B8FF727272FF000000160000
      00000000000000000000000000000000000000000016686868FFABABABFF8F8F
      8FFF909090FF909090FF909090FF909090FF909090FF8F8F8FFF8B8B8BFF8A8A
      8AFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
      EEFF8A8A8AFF8B8B8BFF8F8F8FFF909090FF909090FF909090FF909090FF9191
      91FF939393FF787878FF6C6C6CFF0000001600000014505050BCBBBBBBFFEDED
      EDFFCECECEFF9C9C9CFFA8A8A8FFB6B6B6FFB6B6B6FFB6B6B6FFBEBEBEFFC4C4
      C4FFC9C9C9FFD0D0D0FFD6D6D6FFD5D5D5FFD0D0D0FFCBCBCBFFA4A4A4FFCDCD
      CDFFEDEDEDFFBABABAFF4F4F4FBD000000140000000000000000000000000000
      000000000000000000000000000000000000000000167C7C7CFFF1F1F1FFECEC
      ECFFEDEDEDFFF4F4F4FF767676FF7D7D7DFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7D7D7DFF767676FFF4F4F4FFEDED
      EDFFECECECFFF1F1F1FF7C7C7CFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFBCBCBCFF919191FFBCBCBCFF7171
      71FF0D0D0D47737373FFABABABF8999999FF8F8F8FFF909090FF909090FF9090
      90FF909090FF909090FF909090FF8D8D8DFFB9B9B9FF727272FF000000160000
      00000000000000000000000000000000000000000016686868FFAFAFAFFF8D8D
      8DFF8E8E8EFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8E8E8EFF8A8A8AFF8080
      80FFD3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3
      D3FF808080FF8A8A8AFF8E8E8EFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F
      8FFF919191FF7A7A7AFF6C6C6CFF0000001600000016747474F8DBDBDBFFEEEE
      EEFFABABABFF9A9A9AFFBDBDBDFFC5C5C5FFC1C1C1FFBFBFBFFFBDBDBDFFC4C4
      C4FFC9C9C9FFD0D0D0FFD6D6D6FFD6D6D6FFCFCFCFFFCACACAFFB6B6B6FFA9A9
      A9FFEEEEEEFFDBDBDBFF747474F8000000160000000000000000000000000000
      000000000000000000000000000000000000000000167C7C7CFFD5D5D5FFC5C5
      C5FFC6C6C6FFCDCDCDFF939393FF999999FF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
      9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF999999FF939393FFCDCDCDFFC6C6
      C6FFC5C5C5FFD5D5D5FF7C7C7CFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFBEBEBEFF8E8E8EFFBEBEBEFF7171
      71FF0E0E0E3E737373FFAEAEAEF7959595FF8A8A8AFF8C8C8CFF8C8C8CFF8C8C
      8CFF8C8C8CFF8C8C8CFF8C8C8CFF898989FFBBBBBBFF727272FF000000160000
      00000000000000000000000000000000000000000016676767FFB4B4B4FF8B8B
      8BFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8A8A8AFF828282FFD7D7
      D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD7D7D7FF828282FF8A8A8AFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8E8E
      8EFF8F8F8FFF7C7C7CFF6C6C6CFF0000001600000016787878FFF5F5F5FFF0F0
      F0FF909090FF999999FFD2D2D2FFCACACAFFC6C6C6FFC5C5C5FFC2C2C2FFC1C1
      C1FFC7C7C7FFCCCCCCFFD0D0D0FFD0D0D0FFCCCCCCFFC7C7C7FFC4C4C4FF8D8D
      8DFFF0F0F0FFF5F5F5FF787878FF000000160000000000000000000000000000
      000000000000000000000000000000000000000000167C7C7CFFE9E9E9FFCCCC
      CCFFCDCDCDFFD3D3D3FF838383FF898989FF8B8B8BFF8B8B8BFF8B8B8BFF8B8B
      8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B
      8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF898989FF838383FFD3D3D3FFCDCD
      CDFFCCCCCCFFE9E9E9FF7C7C7CFF000000160000000000000000000000000000
      0000000000000000000000000016717171FFC0C0C0FF8B8B8BFFC0C0C0FF7171
      71FF121212430000000A717171FFB1B1B1F5868686FF878787FF888888FF8989
      89FF898989FF898989FF888888FF858585FFBDBDBDFF727272FF000000160000
      00000000000000000000000000000000000000000016676767FFB8B8B8FF8989
      89FF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF888888FF808080FFD7D7D7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD7D7D7FF808080FF888888FF8B8B8BFF8B8B8BFF8B8B8BFF8C8C
      8CFF8D8D8DFF7E7E7EFF6C6C6CFF0000001600000016787878FFF6F6F6FFF3F3
      F3FF8B8B8BFF989898FFDADADAFFD0D0D0FFCCCCCCFFC9C9C9FFC7C7C7FFC5C5
      C5FFC3C3C3FFC7C7C7FFC9C9C9FFC9C9C9FFC7C7C7FFC4C4C4FFC1C1C1FF8888
      88FFF3F3F3FFF6F6F6FF787878FF000000160000000000000000000000000000
      000000000000000000000000000000000000000000157C7C7CFFF9F9F9FFD1D1
      D1FFD2D2D2FFDADADAFF757575FF7C7C7CFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
      7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
      7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7C7C7CFF757575FFDADADAFFD2D2
      D2FFD1D1D1FFF9F9F9FF7C7C7CFF000000150000000000000000000000000000
      0000000000000000000000000016717171FFC2C2C2FF888888FFC2C2C2FF7171
      71FF151515490000000500000006717171FFB5B5B5F5828282FF848484FF8686
      86FF868686FF868686FF858585FF828282FFBFBFBFFF717171FF000000160000
      00000000000000000000000000000000000000000016676767FFBCBCBCFF8787
      87FF898989FF8A8A8AFF8A8A8AFF878787FF7D7D7DFFD6D6D6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFFEDEDEDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD6D6D6FF7D7D7DFF878787FF8A8A8AFF8A8A8AFF8A8A
      8AFF8B8B8BFF818181FF6B6B6BFF0000001600000016797979FFF8F8F8FFF6F6
      F6FF868686FF959595FFE2E2E2FFD6D6D6FFD1D1D1FFCECECEFFCACACAFFC8C8
      C8FFC5C5C5FFC1C1C1FFC4C4C4FFC4C4C4FFC2C2C2FFBFBFBFFFBDBDBDFF8383
      83FFF5F5F5FFF8F8F8FF797979FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000D7D7D7DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF676767FF6D6D6DFF555555FF535353FF525252FF5252
      52FF525252FF525252FF525252FF525252FF525252FF525252FF525252FF5252
      52FF525252FF525252FF535353FF555555FF6D6D6DFF676767FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7D7D7DFF0000000D0000000000000000000000000000
      0000000000000000000000000016717171FFC4C4C4FF848484FFC4C4C4FF7171
      71FF1818184C000000050000000000000006717171FFC3C3C3FF7D7D7DFF8080
      80FF828282FF828282FF818181FF7D7D7DFFC1C1C1FF717171FF000000160000
      00000000000000000000000000000000000000000016676767FFBFBFBFFF8484
      84FF878787FF888888FF878787FF818181FFDADADAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1F1F1FF808080FF808080FFF1F1F1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAFF818181FF878787FF888888FF8888
      88FF898989FF848484FF6B6B6BFF00000016000000147A7A7AFFFBFBFBFFF9F9
      F9FF7D7D7DFF939393FFEBEBEBFFDDDDDDFFD6D6D6FFD2D2D2FFCECECEFFCACA
      CAFFC7C7C7FFC2C2C2FFBDBDBDFFBEBEBEFFBCBCBCFFBABABAFFB8B8B8FF7C7C
      7CFFF8F8F8FFFBFBFBFF7A7A7AFF000000140000000000000000000000000000
      000000000000000000000000000000000000000000045A5A5AB47D7D7DFF7B7B
      7BFF7B7B7BFF7E7E7EFF838383FF777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777777FF838383FF7E7E7EFF7B7B
      7BFF7B7B7BFF7D7D7DFF5A5A5AB4000000040000000000000000000000000000
      0000000000000000000000000016707070FFC6C6C6FF808080FFC6C6C6FF7070
      70FF1818184C00000005000000000000000000000006717171FFC6C6C6FF7878
      78FF7B7B7BFF7D7D7DFF7C7C7CFF797979FFC3C3C3FF717171FF000000160000
      00000000000000000000000000000000000000000010676767FFC4C4C4FF8585
      85FF838383FF858585FF858585FF7E7E7EFFF7F7F7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2F2F2FF828282FF808080FF808080FF828282FFF2F2F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FF7E7E7EFF858585FF868686FF8686
      86FF878787FF868686FF6B6B6BFF000000100000000D787878F7E5E5E5FFFBFB
      FBFF9A9A9AFF8A8A8AFFD5D5D5FFE7E7E7FFDCDCDCFFD7D7D7FFD2D2D2FFCECE
      CEFFC9C9C9FFC5C5C5FFBFBFBFFFB7B7B7FFB7B7B7FFB6B6B6FFA2A2A2FF9999
      99FFFBFBFBFFE5E5E5FF787878F70000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000116B6B6BFF747474FFFFFFFFFFFAFAFAFFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFFAFAFAFFFFFFFFFF747474FF6B6B6BFF000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016707070FFCACACAFF7C7C7CFFCACACAFF7070
      70FF1818184C0000000500000000000000000000000000000006717171FFC9C9
      C9FF757575FF787878FF797979FF757575FFC7C7C7FF717171FF000000160000
      000000000000000000000000000000000000000000055F5F5FEAA3A3A3FFBCBC
      BCFF848484FF828282FF838383FF808080FF808080FFF2F2F2FFFFFFFFFFFFFF
      FFFFF2F2F2FF808080FF7E7E7EFF838383FF838383FF7E7E7EFF808080FFF2F2
      F2FFFFFFFFFFFFFFFFFFF2F2F2FF808080FF818181FF848484FF848484FF8585
      85FF898989FF7C7C7CFF626262EA0000000500000005545454B3C7C7C7FFFDFD
      FDFFCBCBCBFF797979FFA9A9A9FFF2F2F2FFE5E5E5FFDCDCDCFFD6D6D6FFD1D1
      D1FFCCCCCCFFC6C6C6FFC1C1C1FFB6B6B6FFB1B1B1FFB1B1B1FF828282FFCACA
      CAFFFDFDFDFFC7C7C7FF545454B3000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000067D7D7DFF737373FFFFFFFFFFF4F4F4FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF4F4F4FFFFFFFFFF737373FF7D7D7DFF000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016707070FFCCCCCCFF787878FFCCCCCCFF7070
      70FF1818184C0000000500000000000000000000000000000000000000067171
      71FFCDCDCDFF717171FF737373FF707070FFCACACAFF717171FF000000160000
      00000000000000000000000000000000000000000000000000055B5B5BE5A6A6
      A6FFC1C1C1FF828282FF808080FF818181FF7D7D7DFF7D7D7DFFF6F6F6FFF6F6
      F6FF7D7D7DFF7D7D7DFF828282FF838383FF838383FF828282FF7D7D7DFF7D7D
      7DFFF6F6F6FFF6F6F6FF7D7D7DFF7D7D7DFF828282FF828282FF828282FF8E8E
      8EFF808080FF5F5F5FE50000000500000000000000010F0F0F2C8F8F8FFFFFFF
      FFFFFEFEFEFF898989FF818181FFD1D1D1FFF2F2F2FFE7E7E7FFDDDDDDFFD6D6
      D6FFD0D0D0FFCACACAFFC5C5C5FFB9B9B9FFACACACFF929292FF888888FFFEFE
      FEFFFFFFFFFF8F8F8FFF0F0F0F2C000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016737373FFFFFFFFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFF737373FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016707070FFCECECEFF757575FFCECECEFF7070
      70FF1818184C0000000500000000000000000000000000000000000000000000
      0006717171FFD0D0D0FF6B6B6BFF6A6A6AFFCCCCCCFF717171FF000000160000
      0000000000000000000000000000000000000000000000000000000000055B5B
      5BE5ABABABFFC5C5C5FF808080FF7C7C7CFF7E7E7EFF7B7B7BFF838383FF8383
      83FF7B7B7BFF808080FF818181FF818181FF818181FF818181FF808080FF7B7B
      7BFF838383FF838383FF7B7B7BFF7E7E7EFF808080FF818181FF919191FF8484
      84FF5E5E5EE50000000500000000000000000000000000000005696969D5CACA
      CAFFFFFFFFFFF1F1F1FF707070FF808080FFAAAAAAFFD5D5D5FFECECECFFE2E2
      E2FFDBDBDBFFD3D3D3FFBEBEBEFFABABABFF8C8C8CFF707070FFF1F1F1FFFFFF
      FFFFCACACAFF696969D500000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016737373FFFFFFFFFFE9E9E9FFE9E9E9FFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFE9E9E9FFE9E9E9FFFFFFFFFF737373FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000015707070FFD1D1D1FF6F6F6FFFD1D1D1FF7070
      70FF171717490000000300000000000000000000000000000000000000000000
      000000000006717171FFD2D2D2FF626262FFCECECEFF717171FF000000150000
      0000000000000000000000000000000000000000000000000000000000000000
      00055B5B5BE5AEAEAEFFCBCBCBFF7D7D7DFF7B7B7BFF7D7D7DFF7D7D7DFF7D7D
      7DFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7E7E7EFF959595FF878787FF5E5E
      5EE5000000050000000000000000000000000000000000000000060606148A8A
      8AFFEEEEEEFFFFFFFFFFF3F3F3FF828282FF6F6F6FFF848484FF949494FF9898
      98FF9A9A9AFF9C9C9CFF8E8E8EFF747474FF838383FFF3F3F3FFFFFFFFFFEEEE
      EEFF8A8A8AFF0606061400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016737373FFFFFFFFFFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FFE5E5E5FFFFFFFFFF737373FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D717171FFD8D8D8FFD6D6D6FFD8D8D8FF7171
      71FF191919450000000100000000000000000000000000000000000000000000
      00000000000000000006707070FFCFCFCFFFD4D4D4FF717171FF0000000D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000055A5A5AE5B3B3B3FFCFCFCFFF7B7B7BFF797979FF7C7C7CFF7D7D
      7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
      7DFF7D7D7DFF7C7C7CFF7B7B7BFF7C7C7CFF999999FF898989FF5D5D5DE50000
      0005000000000000000000000000000000000000000000000000000000012424
      244F898989FFF0F0F0FFFFFFFFFFFFFFFFFFCCCCCCFF8F8F8FFF646464FF6565
      65FF656565FF646464FF8F8F8FFFCBCBCBFFFFFFFFFFFFFFFFFFF0F0F0FF8989
      89FF2424244F0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016737373FFFFFFFFFFDFDFDFFFE1E1E1FFE1E1
      E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE1E1E1FFDFDFDFFFFFFFFFFF737373FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000004505050B4717171FF707070FF717171FF5959
      59C6010101060000000000000000000000000000000000000000000000000000
      0000000000000000000000000006727272FF717171FF505050B4000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000055A5A5AE5B7B7B7FFD3D3D3FF7A7A7AFF777777FF7979
      79FF797979FF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF797979FF7A7A7AFF9C9C9CFF8D8D8DFF5D5D5DE5000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      00012424244C828282FFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF828282FF2424
      244C000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016737373FFFFFFFFFFD9D9D9FFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFD9D9D9FFFFFFFFFF737373FF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000055A5A5AE5B7B7B7FFCFCFCFFF777777FF7373
      73FF747474FF747474FF747474FF757575FF757575FF757575FF767676FF7676
      76FF767676FF787878FFA0A0A0FF8F8F8FFF5D5D5DE500000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060606106E6E6ED3939393FFD0D0D0FFF2F2F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2F2F2FFD0D0D0FF939393FF6E6E6ED3060606100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000015747474FFFFFFFFFFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFFFFFFFFF747474FF00000015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000055A5A5AE5B4B4B4FFD2D2D2FFC1C1
      C1FFBFBFBFFFBBBBBBFFB8B8B8FFB5B5B5FFB2B2B2FFAEAEAEFFACACACFFA8A8
      A8FFA4A4A4FFA7A7A7FF929292FF5D5D5DE50000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000011C1C1C385A5A5AAD818181F6858585FF8484
      84FF848484FF858585FF818181F65A5A5AAC0F0F0F2200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767676FF0000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000055F5F5FE9676767FF6666
      66FF676767FF676767FF686868FF686868FF686868FF696969FF696969FF6969
      69FF696969FF6A6A6AFF616161E9000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000004555555B4767676FF747474FF737373FF7373
      73FF737373FF737373FF737373FF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FF747474FF767676FF555555B400000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      0009000000110000001500000016000000160000001600000016000000150000
      0011000000090000000300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060000000F0000000D0000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000050000000F00000015000000160000001600000016000000150000
      000F000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000006000000100000001B0000
      0029000000380000004100000043000000430000004300000043000000410000
      0038000000290000001B00000010000000060000000100000000000000000000
      0000000000000000000000000000000000000000000E000000280000002D0000
      001D0000000F0000000600000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005000000190000003300000041000000430000004300000043000000410000
      003300000019000000090000000B000000110000001500000016000000160000
      00160000001600000016000000160000001600000015000000110000000B0000
      0004000000010000000000000000000000000000000000000000000000050000
      0010000000160000001600000016000000160000001600000016000000110000
      000800000004000000050000000B000000130000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      00150000000D0000000400000000000000000000000000000000000000000000
      00000000000000000000000000030000000D00000020000000350202024C1F1F
      1F99383838DE464646FF454545FF454545FF454545FF454545FF464646FF3838
      38DE1F1F1F990202024C00000035000000200000000D00000003000000000000
      0000000000000000000000000000000000000000000C7A7A7AFF4F4F4FB60505
      054C000000340000002300000014000000090000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      001500000037727272E1878787FF898989FF8A8A8AFF898989FF8A8A8AFF7373
      73E10000003B000000290000002C000000390000004000000042000000430000
      00430000004300000043000000430000004200000040000000390000002C0000
      001E0000001000000005000000000000000000000000000000050000001A0000
      00350000004200000043000000430000004300000043000000430000003A0000
      00270000001E000000210000002D0000003C0000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      003F0000002E0000001500000004000000000000000000000000000000000000
      00000000000000000005000000160000002E0808085A3A3A3ADF474747FF4F4F
      4FFF555555FF5A5A5AFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5A5A5AFF5555
      55FF4F4F4FFF474747FF3A3A3ADF0808085A0000002E00000016000000050000
      000000000000000000000000000000000000000000034A4A4A944A4A4AFF6C6C
      6CFF5F5F5FD01212126C0000003C000000290000001500000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B0000
      002C7A7A7AEDB4B4B4FFD8D8D8FFD7D7D7FFC5C5C5FFADADADFFB0B0B0FFA1A1
      A1FF7A7A7AE9121212672E2E2EA64E4E4EDE575757F8515151FF8E8E8EFF8B8B
      8BFF8B8B8BFF8A8A8AFF898989FF888888FF828282F86D6D6DDE444444A71010
      105C000000350000001B00000006000000000000000000000010000000355959
      59F0606060FF606060FF5E5E5EFF565656FFD3D3D3FFCCCCCCFFCBCBCBFF2929
      29692F2F2F6A2D2D2D6A47474796CECECEFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFD3D3D3FF565656FF5E5E5EFF606060FF6060
      60FF414141C50000002E0000000D000000000000000000000000000000000000
      00000000000500000019000000382A2A2AB4474747FF545454FF5F5F5FFF7474
      74FF8B8B8BFF9E9E9EFFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FF9E9E9EFF8B8B
      8BFF747474FF5F5F5FFF545454FF474747FF2A2A2AB400000038000000190000
      0005000000000000000000000000000000000000000006060618787878FF6C6C
      6CFFC8C8C8FF9E9E9EFF5B5B5BF91D1D1D8A0000003A0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000174646
      46A0A9A9A9FFD3D3D3FFD0D0D0FFCFCFCFFFD1D1D1FFBBBBBBFFACACACFFAFAF
      AFFF9C9C9CFF767676FF6E6E6EFF878787FF888888FF929292FFBABABAFFA2A2
      A2FF9D9D9DFFABABABFFB7B7B7FFC4C4C4FFC6C6C6FFC2C2C2FFADADADFF8C8C
      8CFF717171E00707074200000011000000000000000000000016595959EFBABA
      BAFFB5B5B5FFB4B4B4FFB3B3B3FFABABABFFFFFFFFFFF1F1F1FFFFFFFFFF5252
      52FF7C7C7CFF7D7D7DFF797979FFFFFFFFFFF1F1F1FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF1F1F1FFFFFFFFFFABABABFFB3B3B3FFB4B4B4FFB5B5
      B5FFBABABAFF414141C100000015000000000000000000000000000000000000
      0005000000190000003A3E3E3EED4C4C4CFF5A5A5AFF7D7D7DFF9E9E9EFF9393
      93FF838383FF767676FF737373FF737373FF737373FF737373FF767676FF8383
      83FF939393FF9E9E9EFF7D7D7DFF5A5A5AFF4C4C4CFF3E3E3EED0000003A0000
      00190000000500000000000000000000000000000000000000065F5F5FB1CCCC
      CCFFC4C4C4FFC0C0C0FFBABABAFF909090FF6C6C6CFF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008000000258787
      87FFCDCDCDFFCDCDCDFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFADADADFFAFAF
      AFFFB0B0B0FF8B8B8BFF939393FF9D9D9DFF8E8E8EFFA5A5A5FFB7B7B7FFA0A0
      A0FF9D9D9DFFAAAAAAFFB5B5B5FFC1C1C1FFCCCCCCFFD9D9D9FFDADADAFFC7C7
      C7FF9C9C9CFF898989FE00000016000000000000000000000016606060FFB6B6
      B6FFACACACFFABABABFFAAAAAAFFA3A3A3FFFFFFFFFFECECECFFFFFFFFFF5555
      55FF838383FF828282FF797979FFFEFEFEFFECECECFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFEBEBEBFFFFFFFFFFA3A3A3FFAAAAAAFFABABABFFACAC
      ACFFB6B6B6FF606060FF00000016000000000000000000000000000000030000
      0016000000383E3E3EEB525252FF626262FF959595FF969696FF767676FF7373
      73FF737373FF737373FF737373FF737373FF737373FF737373FF737373FF7373
      73FF737373FF767676FF969696FF959595FF626262FF525252FF3E3E3EEB0000
      003800000016000000030000000000000000000000000000000116161642AAAA
      AAFFC9C9C9FFD0D0D0FFBCBCBCFFADADADFF8E8E8EFF6C6C6CFF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E3030307C9E9E
      9EFFCECECEFFCBCBCBFFBDBDBDFFA5A5A5FFCBCBCBFFCACACAFFBBBBBBFFB1B1
      B1FFB4B4B4FF969696FF919191FF9E9E9EFF8F8F8FFF898989FFB6B6B6FF7474
      74FF9E9E9EFF7C7C7CFFB6B6B6FF8D8D8DFFCCCCCCFFD8D8D8FFD7D7D7FFC6C6
      C6FFB9B9B9FF898989FF00000016000000000000000000000016606060FFB6B6
      B6FFA8A8A8FFA7A7A7FFA6A6A6FF9F9F9FFFFFFFFFFFE8E8E8FFFFFFFFFF5252
      52FF828282FF808080FF777777FFFEFEFEFFE8E8E8FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFFFFFFFFF9F9F9FFFA6A6A6FFA7A7A7FFA8A8
      A8FFB6B6B6FF606060FF000000160000000000000000000000010000000D0000
      002E3E3E3EEC525252FF666666FF9E9E9EFF868686FF727272FF727272FF7272
      72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
      72FF727272FF727272FF737373FF868686FF9E9E9EFF666666FF525252FF3E3E
      3EEC0000002E0000000D00000001000000000000000000000000000000096464
      64E7D1D1D1FFFAFAFAFFC5C5C5FF8B8B8BFF8E8E8EFF909090FF6B6B6BFF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000013595959BCB2B2
      B2FFCBCBCBFFCBCBCBFFAAAAAAFFA4A4A4FFC9C9C9FFC7C7C7FFC2C2C2FFB7B7
      B7FFB4B4B4FFA5A5A5FF909090FF757575FF909090FFCECECEFFB5B5B5FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFF9F9F9FFFD8D8D8FFC7C7
      C7FFB9B9B9FF898989FF00000016000000000000000000000016606060FFB6B6
      B6FFA5A5A5FFA5A5A5FFA4A4A4FF9C9C9CFFFEFEFEFFE6E6E6FFFEFEFEFF4F4F
      4FFF7E7E7EFF7C7C7CFF737373FFFDFDFDFFE6E6E6FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFE5E5E5FFE5E5E5FFFEFEFEFF9C9C9CFFA4A4A4FFA5A5A5FFA5A5
      A5FFB6B6B6FF606060FF000000160000000000000000000000060000001F2828
      28B04C4C4CFF626262FF9E9E9EFF828282FF727272FF727272FF727272FF7272
      72FF727272FF717171FF707070FF6F6F6FFF6F6F6FFF707070FF717171FF7272
      72FF727272FF727272FF727272FF727272FF828282FF9E9E9EFF626262FF4C4C
      4CFF282828B00000001F00000006000000000000000000000000000000022525
      2567A3A3A3FFD0D0D0FFEDEDEDFFB2B2B2FF8E8E8EFF8F8F8FFF909090FF6B6B
      6BFF0000003D0000001C00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016777777E8BEBE
      BEFFC9C9C9FF8A8A8AFF8C8C8CFFA1A1A1FFC7C7C7FFC5C5C5FFC4C4C4FFBDBD
      BDFFB5B5B5FFB0B0B0FF8C8C8CFFA3A3A3FFA6A6A6FF979797FFB5B5B5FF7474
      74FF9E9E9EFF7D7D7DFFB6B6B6FF8E8E8EFFCDCDCDFFDADADAFFD8D8D8FF9292
      92FFB9B9B9FF898989FF00000016000000000000000000000016606060FFB7B7
      B7FFA2A2A2FFA2A2A2FFA1A1A1FF9A9A9AFFFDFDFDFFE2E2E2FFFDFDFDFF4C4C
      4CFF7B7B7BFF7A7A7AFF707070FFFCFCFCFFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE1E1E1FFFEFEFEFF9A9A9AFFA1A1A1FFA2A2A2FFA2A2
      A2FFB7B7B7FF606060FF000000160000000000000000000000100808084C4747
      47FF5A5A5AFF959595FF858585FF727272FF727272FF727272FF727272FF7272
      72FF727272FF707070FFD4D4D4FFFFFFFFFFFFFFFFFFD4D4D4FF707070FF7272
      72FF727272FF727272FF727272FF727272FF727272FF858585FF959595FF5A5A
      5AFF474747FF0808084C00000010000000000000000000000000000000000000
      00067E7E7EFFACACACFFBFBFBFFFEFEFEFFFB3B3B3FF8E8E8EFF8F8F8FFF9090
      90FF6B6B6BFF0000003D0000001C000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFC8C8
      C8FFC6C6C6FF9A9A9AFFCACACAFF9C9C9CFFC5C5C5FFC2C2C2FFC2C2C2FFC5C5
      C5FFB7B7B7FFBBBBBBFF878787FF777777FFBABABAFFCBCBCBFFB4B4B4FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFFA0A0A0FFD9D9D9FFC8C8
      C8FFB9B9B9FF898989FF00000016000000000000000000000016606060FFB9B9
      B9FF9F9F9FFFA0A0A0FF9F9F9FFF979797FFFDFDFDFFE0E0E0FFFCFCFCFF4747
      47FF767676FF767676FF6C6C6CFFFBFBFBFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFE0E0E0FFDFDFDFFFFDFDFDFF979797FF9F9F9FFFA0A0A0FF9F9F
      9FFFB9B9B9FF606060FF0000001600000000000000030000001B393939DD5454
      54FF7E7E7EFF969696FF717171FF727272FF727272FF727272FF727272FF7272
      72FF717171FF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6E6EFF7171
      71FF727272FF727272FF727272FF727272FF727272FF717171FF959595FF7D7D
      7DFF545454FF393939DD0000001B000000030000000000000000000000000000
      0000000000067D7D7DFFADADADFFBFBFBFFFEFEFEFFFB3B3B3FF8E8E8EFF8F8F
      8FFF909090FF6B6B6BFF0000003D0000001C0000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFC5C5
      C5FFC2C2C2FFABABABFFC5C5C5FF969696FFC3C3C3FFC0C0C0FFBFBFBFFFCACA
      CAFFB9B9B9FFBEBEBEFF878787FFA6A6A6FFCDCDCDFF949494FFB4B4B4FF7474
      74FF9E9E9EFF7D7D7DFFB6B6B6FF8E8E8EFFCDCDCDFFDADADAFFD8D8D8FF9393
      93FFBABABAFF898989FF00000016000000000000000000000016606060FFB9B9
      B9FF9C9C9CFF9D9D9DFF9C9C9CFF959595FFFDFDFDFFDDDDDDFFF0F0F0FF7E7E
      7EFF434343FF424242FF7C7C7CFFF0F0F0FFDDDDDDFFDCDCDCFFDDDDDDFFDDDD
      DDFFDDDDDDFFDCDCDCFFDCDCDCFFFDFDFDFF959595FF9C9C9CFF9D9D9DFF9C9C
      9CFFB9B9B9FF606060FF00000016000000000000000902020232474747FF5F5F
      5FFF9E9E9EFF757575FF717171FF717171FF717171FF717171FF717171FF7171
      71FF707070FF6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6DFF7070
      70FF717171FF717171FF717171FF717171FF717171FF717171FF757575FF9E9E
      9EFF5F5F5FFF474747FF02020232000000090000000000000000000000000000
      000000000000000000067D7D7DFFADADADFFBFBFBFFFEFEFEFFFB3B3B3FF8E8E
      8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000001C00000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFC3C3
      C3FFBFBFBFFFBCBCBCFFC1C1C1FF939393FFC1C1C1FFBEBEBEFFBCBCBCFFD0D0
      D0FFBBBBBBFFC0C0C0FF868686FF797979FFE0E0E0FFC8C8C8FFB4B4B4FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFFA0A0A0FFD9D9D9FFC8C8
      C8FFB9B9B9FF898989FF00000016000000000000000000000016606060FFBBBB
      BBFF9A9A9AFF9B9B9BFF9A9A9AFF949494FFFDFDFDFFDADADAFFDCDCDCFFE1E1
      E1FFE5E5E5FFE5E5E5FFE1E1E1FFDCDCDCFFDADADAFFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD9D9D9FFDADADAFFFDFDFDFF949494FF9A9A9AFF9B9B9BFF9A9A
      9AFFBBBBBBFF606060FF0000001600000000000000111D1D1D8D4F4F4FFF7474
      74FF939393FF707070FF717171FF717171FF717171FF717171FF717171FF7171
      71FF707070FF6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6DFF7070
      70FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF9292
      92FF747474FF4F4F4FFF1D1D1D8D000000110000000000000000000000000000
      00000000000000000000000000067D7D7DFFADADADFFBFBFBFFFEFEFEFFFB3B3
      B3FF8E8E8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFBFBF
      BFFFBABABAFFCCCCCCFFBDBDBDFF8F8F8FFFBEBEBEFFBBBBBBFFB9B9B9FFD7D7
      D7FFBDBDBDFFC2C2C2FF848484FFBDBDBDFFDEDEDEFF929292FFB4B4B4FF7474
      74FF9E9E9EFF7D7D7DFFB6B6B6FF8E8E8EFFCDCDCDFFDADADAFFD8D8D8FF9393
      93FFBABABAFF898989FF00000016000000000000000000000016606060FFBBBB
      BBFF979797FF989898FF989898FF949494FFC2C2C2FFFCFCFCFFFCFCFCFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFC2C2C2FF949494FF989898FF989898FF9797
      97FFBBBBBBFF606060FF000000160000000000000015393939DA555555FF8B8B
      8BFF828282FF717171FF717171FF717171FF717171FF707070FF707070FF7070
      70FF6F6F6FFF6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF6F6F
      6FFF707070FF707070FF707070FF717171FF717171FF717171FF717171FF8282
      82FF8C8C8CFF555555FF393939DA000000150000000000000000000000000000
      0000000000000000000000000000000000067D7D7DFFADADADFFBFBFBFFFEFEF
      EFFFB3B3B3FF8E8E8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFBDBD
      BDFFB7B7B7FFDEDEDEFFB9B9B9FF8B8B8BFFBCBCBCFFB9B9B9FFB6B6B6FFDDDD
      DDFFBFBFBFFFC4C4C4FF838383FF999999FFDDDDDDFFC7C7C7FFB4B4B4FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFFA0A0A0FFD9D9D9FFC8C8
      C8FFB9B9B9FF898989FF000000160000000000000000000000165F5F5FFFBDBD
      BDFF949494FF969696FF969696FF949494FF919191FF8F8F8FFF8D8D8DFF8D8D
      8DFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D8DFF8D8D
      8DFF8D8D8DFF8D8D8DFF8F8F8FFF919191FF949494FF969696FF969696FF9494
      94FFBDBDBDFF5F5F5FFF000000160000000000000016464646FF5A5A5AFFA1A1
      A1FF737373FF707070FF707070FF707070FF6E6E6EFF6D6D6DFF6C6C6CFF6C6C
      6CFF6C6C6CFF696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696969FF6C6C
      6CFF6C6C6CFF6C6C6CFF6D6D6DFF6E6E6EFF707070FF707070FF707070FF7474
      74FF9E9E9EFF5A5A5AFF464646FF000000160000000000000000000000000000
      000000000000000000000000000000000000000000067D7D7DFFADADADFFBFBF
      BFFFEFEFEFFFB3B3B3FF8E8E8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000013898989FFBBBB
      BBFFB4B4B4FFEFEFEFFFB4B4B4FF8C8C8CFFB9B9B9FFB7B7B7FFB3B3B3FFE3E3
      E3FFC2C2C2FFC8C8C8FF818181FFE1E1E1FFDCDCDCFF919191FFB4B4B4FF7474
      74FF9E9E9EFF7D7D7DFFB6B6B6FF8E8E8EFFCDCDCDFFDADADAFFD8D8D8FF9393
      93FFBABABAFF898989FF000000160000000000000000000000165F5F5FFFBFBF
      BFFF919191FF939393FF939393FF929292FF919191FF909090FF909090FF9090
      90FF909090FF909090FF909090FF909090FF909090FF909090FF909090FF9090
      90FF909090FF909090FF909090FF919191FF929292FF939393FF939393FF9191
      91FFBFBFBFFF5F5F5FFF000000160000000000000016454545FF5B5B5BFFAAAA
      AAFF6F6F6FFF707070FF707070FF6E6E6EFFD3D3D3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3FF6E6E6EFF707070FF707070FF7070
      70FFA2A2A2FF5C5C5CFF454545FF000000160000000000000000000000000000
      00000000000000000000000000000000000000000000000000067D7D7DFFADAD
      ADFFBFBFBFFFEFEFEFFFB3B3B3FF8E8E8EFF8F8F8FFF909090FF6B6B6BFF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E797979E6AFAF
      AFFFB3B3B3FFEAEAEAFFECECECFFACACACFFB5B5B5FFB4B4B4FFBBBBBBFFE1E1
      E1FFC5C5C5FFBBBBBBFF949494FFB3B3B3FFDBDBDBFFC7C7C7FFB4B4B4FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFFA0A0A0FFD9D9D9FFC8C8
      C8FFB9B9B9FF898989FF000000160000000000000000000000165F5F5FFFC1C1
      C1FF8E8E8EFF909090FF8F8F8FFF8A8A8AFF878787FF868686FF868686FF8686
      86FF868686FF868686FF868686FF868686FF868686FF868686FF868686FF8686
      86FF868686FF868686FF868686FF878787FF8A8A8AFF8F8F8FFF909090FF8E8E
      8EFFC1C1C1FF5F5F5FFF000000160000000000000016454545FF606060FFADAD
      ADFF6F6F6FFF6F6F6FFF6F6F6FFF6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF6F6F6FFF707070FF6F6F
      6FFFA2A2A2FF5C5C5CFF454545FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000067D7D
      7DFFADADADFFC0C0C0FFEFEFEFFFB3B3B3FF8E8E8EFF8F8F8FFF909090FF6B6B
      6BFF0000003D0000001C00000006000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000085A5A5AB4A5A5
      A5FFB2B2B2FFC1C1C1FFC1C1C1FFB6B6B6FFB1B1B1FFAFAFAFFFC5C5C5FFDEDE
      DEFFC8C8C8FFAFAFAFFFA6A6A6FFF0F0F0FFDADADAFF919191FFB4B4B4FF7474
      74FF9E9E9EFF7D7D7DFFB6B6B6FF8E8E8EFFCDCDCDFFDADADAFFD8D8D8FF9393
      93FFBABABAFF898989FF000000160000000000000000000000165F5F5FFFC2C2
      C2FF8B8B8BFF8D8D8DFF888888FFD4D4D4FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFD4D4D4FF888888FF8D8D8DFF8B8B
      8BFFC2C2C2FF5F5F5FFF000000160000000000000016454545FF696969FFB1B1
      B1FF6E6E6EFF6F6F6FFF6F6F6FFF6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF6F6F6FFF707070FF6F6F
      6FFFA2A2A2FF5C5C5CFF454545FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00067D7D7DFFA1A1A1FFC0C0C0FFF0F0F0FFB3B3B3FF8E8E8EFF8F8F8FFF9090
      90FF6B6B6BFF0000003D0000001C000000060000000000000000000000000000
      00000000000000000000000000000000000000000000000000023030306A9696
      96FFB2B2B2FFAFAFAFFFAEAEAEFFAFAFAFFFAFAFAFFFABABABFFDDDDDDFFD5D5
      D5FFCCCCCCFF989898FFBEBEBEFFB0B0B0FFDADADAFFC7C7C7FFB4B4B4FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFFA0A0A0FFD9D9D9FFC8C8
      C8FFB9B9B9FF898989FF000000160000000000000000000000165F5F5FFFC5C5
      C5FF898989FF8A8A8AFF838383FFFFFFFFFFF7F7F7FFF6F6F6FFF6F6F6FFF5F5
      F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF5F5F5FFF7F7F7FFFFFFFFFF838383FF8A8A8AFF8989
      89FFC5C5C5FF5F5F5FFF000000160000000000000015454545FF737373FFB5B5
      B5FF6E6E6EFF6F6F6FFF6F6F6FFF6D6D6DFFD3D3D3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3FF6D6D6DFF6F6F6FFF6F6F6FFF6F6F
      6FFFA2A2A2FF5C5C5CFF454545FF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000067D7D7DFFA2A2A2FFC0C0C0FFF0F0F0FFB3B3B3FF8E8E8EFF8F8F
      8FFF909090FF6B6B6BFF0000003D0000001C0000000600000000000000000000
      00000000000000000000000000000000000000000000000000000000000B8989
      89FFAFAFAFFFAFAFAFFFAEAEAEFFADADADFFABABABFFACACACFFF7F7F7FFCBCB
      CBFFCCCCCCFF808080FFE0E0E0FFEDEDEDFFDADADAFF919191FFB4B4B4FF7474
      74FF9E9E9EFF7D7D7DFFB6B6B6FF8E8E8EFFCDCDCDFFDADADAFFD8D8D8FF9393
      93FFBABABAFF898989FF000000160000000000000000000000165F5F5FFFC7C7
      C7FF868686FF878787FF7E7E7EFFFCFCFCFFF5F5F5FFF7F7F7FFF7F7F7FFF6F6
      F6FFF5F5F5FFF8F8F8FFF9F9F9FFF7F7F7FFF6F6F6FFF5F5F5FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF5F5F5FFF4F4F4FFFCFCFCFF7E7E7EFF878787FF8686
      86FFC7C7C7FF5F5F5FFF000000160000000000000011454545FF797979FFB5B5
      B5FF727272FF6E6E6EFF6F6F6FFF6E6E6EFF6C6C6CFF6B6B6BFF6B6B6BFF6B6B
      6BFF6A6A6AFF676767FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6A6A
      6AFF6B6B6BFF6B6B6BFF6B6B6BFF6C6C6CFF6E6E6EFF6F6F6FFF6F6F6FFF7272
      72FF9E9E9EFF5A5A5AFF464646FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000067D7D7DFFA1A1A1FFC0C0C0FFEFEFEFFFB3B3B3FF8E8E
      8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000001C00000006000000000000
      0000000000000000000000000000000000000000000000000000000000034646
      468B9B9B9BFFB0B0B0FFAEAEAEFFACACACFFA8A8A8FFDADADAFFE4E4E4FFD1D1
      D1FFA5A5A5FFA9A9A9FFDFDFDFFFADADADFFDADADAFFC7C7C7FFB4B4B4FFA1A1
      A1FF9E9E9EFFABABABFFB6B6B6FFC2C2C2FFCDCDCDFFA0A0A0FFD9D9D9FFC8C8
      C8FFB9B9B9FF898989FF000000160000000000000000000000165F5F5FFFC9C9
      C9FF838383FF848484FF7B7B7BFFFBFBFBFFF7F7F7FF4F4F4FFF929292FF8F8F
      8FFFF8F8F8FF525252FF545454FF939393FF8F8F8FFFF7F7F7FF505050FF9393
      93FF929292FF919191FF8E8E8EFFF5F5F5FFFBFBFBFF7B7B7BFF848484FF8383
      83FFC9C9C9FF5F5F5FFF000000160000000000000009383838D6717171FFACAC
      ACFF868686FF6D6D6DFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6D6D6DFF6A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6A6AFF6D6D
      6DFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF8080
      80FF8C8C8CFF555555FF383838D6000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000067D7D7DFFADADADFFC0C0C0FFEFEFEFFFB3B3
      B3FF8E8E8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      00057C7C7CE8A0A0A0FFB1B1B1FFAEAEAEFFD7D7D7FFF4F4F4FFD6D6D6FFB2B2
      B2FF8D8D8DFF969696FFDEDEDEFFECECECFFDADADAFF919191FFB4B4B4FF7474
      74FF9E9E9EFF7C7C7CFFB6B6B6FF8D8D8DFFCDCDCDFFDADADAFFD8D8D8FF9393
      93FFBABABAFF898989FF000000160000000000000000000000165F5F5FFFCCCC
      CCFF808080FF828282FF787878FFFAFAFAFFF4F4F4FFF7F7F7FFF7F7F7FFF5F5
      F5FFF5F5F5FFF7F7F7FFF8F8F8FFF7F7F7FFF5F5F5FFF4F4F4FFF7F7F7FFF7F7
      F7FFF7F7F7FFF6F6F6FFF4F4F4FFF3F3F3FFFAFAFAFF787878FF828282FF8080
      80FFCCCCCCFF5F5F5FFF0000001600000000000000031E1E1E7C636363FFA4A4
      A4FFA2A2A2FF6C6C6CFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6A6AFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF9292
      92FF757575FF4F4F4FFF1F1F1F7C000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000067D7D7DFFADADADFFBFBFBFFFEFEF
      EFFFB3B3B3FF8E8E8EFF8F8F8FFF909090FF6B6B6BFF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      000000000005747474D78C8C8CFF8B8B8BFF868686FF8A8A8AFF8B8B8BFF8585
      85FFB5B5B5FFCBCBCBFFDDDDDDFFADADADFFD8D8D8FFC5C5C5FFB2B2B2FF9F9F
      9FFF9D9D9DFFA9A9A9FFB5B5B5FFC0C0C0FFCCCCCCFF9F9F9FFFD8D8D8FFC8C8
      C8FFB9B9B9FF898989FF000000160000000000000000000000165F5F5FFFD0D0
      D0FF7C7C7CFF7E7E7EFF767676FFF8F8F8FFF2F2F2FFF5F5F5FFF6F6F6FFF5F5
      F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF5F5F5FFF6F6
      F6FFF5F5F5FFF4F4F4FFF2F2F2FFF0F0F0FFF8F8F8FF767676FF7E7E7EFF7C7C
      7CFFD0D0D0FF5F5F5FFF0000001600000000000000000202021A464646FFA2A2
      A2FFBEBEBEFF707070FF6D6D6DFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6D6D6DFF696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696969FF6D6D
      6DFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF717171FF9E9E
      9EFF5F5F5FFF474747FF0202021A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000067D7D7DFFADADADFFBFBF
      BFFFEFEFEFFFB3B3B3FF8E8E8EFF8F8F8FFF909090FF6C6C6CFF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168888
      88FFB7B7B7FF939393FFDCDCDCFFE9E9E9FFD7D7D7FFC3C3C3FFB0B0B0FF9D9D
      9DFF9A9A9AFFA7A7A7FFB2B2B2FFBEBEBEFFCACACAFFD7D7D7FFD7D7D7FF9292
      92FFB9B9B9FF898989FF000000160000000000000000000000165F5F5FFFD2D2
      D2FF797979FF7C7C7CFF747474FFF7F7F7FFF2F2F2FF525252FF555555FF9494
      94FF939393FF929292FF929292FF929292FF909090FFF4F4F4FF535353FF5555
      55FF949494FF929292FF8F8F8FFFF0F0F0FFF7F7F7FF747474FF7C7C7CFF7979
      79FFD2D2D2FF5F5F5FFF00000016000000000000000000000006383838D68181
      81FFB7B7B7FFAAAAAAFF6B6B6BFF6D6D6DFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6D6D6DFF6A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6A6AFF6D6D
      6DFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6D6D6DFF959595FF7E7E
      7EFF545454FF393939D600000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000067D7D7DFFADAD
      ADFFBFBFBFFFEFEFEFFFB3B3B3FF8E8E8EFF8F8F8FFF8E8E8EFF6C6C6CFF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168888
      88FFB6B6B6FFC8C8C8FFDADADAFFE8E8E8FFD5D5D5FFC1C1C1FFAEAEAEFF9999
      99FF969696FFA3A3A3FFAFAFAFFFBCBCBCFFC9C9C9FFD6D6D6FFD6D6D6FFC6C6
      C6FFB8B8B8FF888888FF000000160000000000000000000000165E5E5EFFD6D6
      D6FF767676FF797979FF717171FFF5F5F5FFEFEFEFFFF2F2F2FFF4F4F4FFF2F2
      F2FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFEFEFEFFFF2F2F2FFF3F3
      F3FFF2F2F2FFF1F1F1FFEFEFEFFFEDEDEDFFF5F5F5FF717171FF797979FF7676
      76FFD6D6D6FF5E5E5EFF00000016000000000000000000000001080808294646
      46FFB0B0B0FFC2C2C2FF8D8D8DFF6B6B6BFF6C6C6CFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6B6B6BFFD2D2D2FFFFFFFFFFFFFFFFFFD2D2D2FF6B6B6BFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6C6C6CFF838383FF959595FF5A5A
      5AFF474747FF0808082900000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000067D7D
      7DFFADADADFFBFBFBFFFEFEFEFFFB3B3B3FF8C8C8CFF8A8A8AFF7C7C7CFF7676
      76FF0000003D0000001C00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168888
      88FFB5B5B5FFC9C9C9FFE5E5E5FFEFEFEFFFEFEFEFFFF5F5F5FFF7F7F7FFF8F8
      F8FFF8F8F8FFF7F7F7FFF6F6F6FFF4F4F4FFEEEEEEFFE9E9E9FFE1E1E1FFC8C8
      C8FFB6B6B6FF888888FF000000160000000000000000000000165E5E5EFFD9D9
      D9FF747474FF787878FF6F6F6FFFF4F4F4FFEDEDEDFFF1F1F1FFF2F2F2FFF1F1
      F1FFEFEFEFFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEEEE
      EEFFF0F0F0FFF0F0F0FFEEEEEEFFECECECFFF4F4F4FF6F6F6FFF787878FF7474
      74FFD9D9D9FF5E5E5EFF00000016000000000000000000000000000000032727
      279C646464FFC5C5C5FFC3C3C3FF888888FF6B6B6BFF6C6C6CFF6D6D6DFF6D6D
      6DFF6D6D6DFF6C6C6CFF6B6B6BFF696969FF696969FF6B6B6BFF6C6C6CFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6C6C6CFF808080FF9E9E9EFF626262FF4C4C
      4CFF2A2A2A9C0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00067D7D7DFFADADADFFBFBFBFFFEEEEEEFFAFAFAFFF868686FF838383FF6464
      64FF747474FF0000003D0000001C000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168787
      87FFCBCBCBFFE7E7E7FFA5A5A5FF989898FF7E7E7EFF5E5E5EFF626262FF6565
      65FF676767FF696969FF6B6B6BFF6C6C6CFF787878FF959595FFB5B5B5FFE3E3
      E3FFD6D6D6FF878787FF000000160000000000000000000000165E5E5EFFDCDC
      DCFF727272FF585858FF6E6E6EFFF3F3F3FFEDEDEDFF545454FF565656FF9595
      95FF939393FF919191FFEEEEEEFF525252FF949494FF939393FF919191FFEEEE
      EEFF525252FF949494FF909090FFEBEBEBFFF2F2F2FF6E6E6EFF585858FF7272
      72FFDCDCDCFF5E5E5EFF00000016000000000000000000000000000000000000
      00053C3C3CE78F8F8FFFD1D1D1FFC3C3C3FF8D8D8DFF6A6A6AFF6B6B6BFF6C6C
      6CFF6D6D6DFF6D6D6DFF6D6D6DFF6C6C6CFF6C6C6CFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6C6C6CFF6C6C6CFF838383FF9E9E9EFF666666FF535353FF3F3F
      3FE7000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000067D7D7DFFACACACFFBCBCBCFFE4E4E4FFCECECEFF9E9E9EFF8282
      82FF7A7A7AFFA6A6A6FF00000037000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168787
      87FFF2F2F2FF5D5D5DFF4C4C4CFF474747FF8E8E8EFF757575FF5D5D5DFF6E6E
      6EFF707070FF757575FF818181FF838383FF8D8D8DFF8D8D8DFF555555FF8E8E
      8EFFEFEFEFFF868686FF000000160000000000000000000000165D5D5DFFE1E1
      E1FF707070FF3F3F3FFF6C6C6CFFF2F2F2FFEAEAEAFFECECECFFEEEEEEFFECEC
      ECFFEBEBEBFFEAEAEAFFEAEAEAFFECECECFFECECECFFEBEBEBFFEAEAEAFFEAEA
      EAFFECECECFFECECECFFEAEAEAFFE9E9E9FFF1F1F1FF6C6C6CFF3F3F3FFF7070
      70FFE1E1E1FF5D5D5DFF00000016000000000000000000000000000000000000
      0000000000053B3B3BE5979797FFDFDFDFFFC8C8C8FFAAAAAAFF6E6E6EFF6A6A
      6AFF6B6B6BFF6B6B6BFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
      6CFF6B6B6BFF6F6F6FFF959595FF969696FF626262FF525252FF3E3E3EE50000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000067C7C7CFF969696FFECECECFFFFFFFFFFCECECEFF8686
      86FFB8B8B8FFADADADFFA2A2A2FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000118787
      87FFEFEFEFFF5E5E5EFF626262FF616161FF6F6F6FFFCBCBCBFF9B9B9BFF8282
      82FF888888FF8B8B8BFF8E8E8EFF929292FF919191FF5F5F5FFF888888FF9898
      98FFECECECFF878787FF000000110000000000000000000000165D5D5DFFE4E4
      E4FF6B6B6BFF3B3B3BFF686868FFEFEFEFFFE6E6E6FFE5E5E5FFE6E6E6FFE5E5
      E5FFE5E5E5FFE5E5E5FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4
      E4FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFEFEFEFFF686868FF3B3B3BFF6B6B
      6BFFE4E4E4FF5D5D5DFF00000015000000000000000000000000000000000000
      000000000000000000053C3C3CE6717171FFE4E4E4FFD3D3D3FFC4C4C4FFA4A4
      A4FF878787FF6F6F6FFF696969FF696969FF696969FF6A6A6AFF6F6F6FFF8383
      83FF989898FFA6A6A6FF818181FF5A5A5AFF4C4C4CFF3E3E3EE6000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000006A5A5A5FFCDCDCDFFECECECFFE3E3E3FFD4D4
      D4FFB9B9B9FFB3B3B3FFA3A3A3FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000068989
      89FDACACACFFDCDCDCFFADADADFF858585FF6D6D6DFF6C6C6CFFBEBEBEFF8484
      84FF767676FF7C7C7CFF828282FF818181FF585858FF8E8E8EFFC3C3C3FFDDDD
      DDFFABABABFF898989FD000000060000000000000000000000105E5E5EFFE8E8
      E8FF636363FF666666FF606060FFECECECFFE4E4E4FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4E4FFECECECFF606060FF666666FF6363
      63FFE8E8E8FF5E5E5EFF0000000D000000000000000000000000000000000000
      000000000000000000000000000328282899464646FFA7A7A7FFDADADAFFCACA
      CAFFC3C3C3FFC1C1C1FFBFBFBFFFBDBDBDFFBABABAFFB9B9B9FFB3B3B3FFA1A1
      A1FF868686FF676767FF535353FF474747FF2929299900000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000006A3A3A3FF939393FFE0E0E0FFF8F8
      F8FFD0D0D0FFA3A3A3E9A7A7A7FF000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      0713717171D48E8E8EFFB2B2B2FFC9C9C9FFDADADAFFE4E4E4FFE1E1E1FFD1D1
      D1FF7C7C7CFF6F6F6FFF767676FF565656FFA7A7A7FFCBCBCBFFB1B1B1FF8D8D
      8DFF707070D40707071300000000000000000000000000000005595959EBB3B3
      B3FFE4E4E4FFE3E3E3FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEFFE3E3E3FFE4E4
      E4FFB3B3B3FF414141B300000004000000000000000000000000000000000000
      00000000000000000000000000000000000107070723363636D3464646FF7B7B
      7BFF999999FFB0B0B0FFADADADFFA2A2A2FF979797FF8D8D8DFF808080FF6666
      66FF565656FF464646FF393939D3090909230000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000006BCBCBCFFD8D8D8FFDADA
      DAFFB1B1B1E8AEAEAEFF00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000110101023464646866F6F6FD1828282F5878787FF858585FF9494
      94FFCFCFCFFF717171FF505050FF626262FF878787F46F6F6FD1464646861010
      1023000000010000000000000000000000000000000000000000000000055858
      58EA5E5E5EFF5D5D5DFF5C5C5CFF5A5A5AFF595959FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF595959FF5A5A5AFF5C5C5CFF5D5D5DFF5E5E
      5EFF424242B00000000400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030E1D1D
      1D72363636D1434343FF434343FF434343FF434343FF444444FF444444FF3939
      39D11D1D1D720303030E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006BBBBBBFFB8B8
      B8FFB6B6B6FF0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030A565656EC3A3A3AB0000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202030808
      08090F0F0F101414141510101011050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505050610101011151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      15161515151615151516151515161515151615151516161616171B1B1B1C2727
      2728353535363F3F3F4031313132101010110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A0B212121222C2C2C2D2C2C
      2C2D2C2C2C2D2C2C2C2D2C2C2C2D313131323C3C3C3D41414143414141434141
      4143414141434141414341414143414141434141414341414143414141434141
      41434141414341414143414141434141414341414143414141434949494C7E83
      87997B90A0D04778A4FF65A6DAFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050506585858FF585858FF5858
      58FF585858FF585858FF585858FF595856FF595755FF585656FF565656FF5656
      57FF565657FF565657FF565657FF565657FF565657FF565657FF565657FF5656
      57FF565657FF565656FF585553FF53616CFF4F6A83FF4A779FFF487BAAFF487B
      A9FF477AA8FF4C81A8FF63A4D8FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      050610101011151515160F0F0F10040404050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404050F0F0F101515
      1516101010110505050600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404050F0F0F101515151610101011050505060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404050F0F0F101515151615151516151515160F0F0F10040404050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163468A1FF6C6762FF696765FF6967
      66FF696766FF696766FF696766FF696766FF696766FF696766FF696766FF6967
      66FF696766FF696664FF6B6460FF4686B5FF4883AEFF4982ACFF4981AAFF4981
      AAFF4880A9FF5386ACFF62A3D6FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505061B1B
      1B1C343434373D3D3D422F2F2F310F0F0F100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F10303030314040
      4042363636371B1B1B1C05050506000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F103030303140404042363636371B1B1B1C0505
      0506000000000000000000000000000000000000000000000000000000000000
      00000F0F0F1030303031404040424141414340404042303030310F0F0F100000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001515151638679CFF69635DFF666361FF6563
      62FF656362FF656362FF656362FF656362FF656362FF656362FF656362FF6563
      62FF656362FF666361FF68605BFF4785B4FF4A83AEFF4A82ACFF4A82ACFF4A82
      ACFF4880ABFF578BB1FF60A1D3FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505061B1B1B1C3939
      393DB78340FFB88341FFB48750F3151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B68C56F3B783
      3FFFB7823FFF3C3C3C3D1B1B1B1C050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B68C56F3B7833FFFB7823FFF3C3C3C3D1B1B
      1B1C050505060000000000000000000000000000000000000000000000000000
      000015151516B68C56F3B7823FFFB6813EFFB7823FFFB68C56F3151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001515151638679CFF67625CFF646260FF6362
      61FF636261FF636261FF636261FF636261FF636261FF636261FF636261FF6362
      61FF636261FF636260FF655F59FF4786B6FF4A83AFFF4A83AEFF4A83AEFF4A83
      AEFF4881ADFF5E8FB3FF5E9FD2FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505061B1B1B1C3939393DB480
      3EFFFED18BFFEBBC72FFB88441FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B7823FFFFDCE
      86FFFDD08AFFB47B3CFF3C3C3C3D1B1B1B1C0505050600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B7823FFFFDCE86FFFDD08AFFB47B3CFF3C3C
      3C3D1B1B1B1C0505050600000000000000000000000000000000000000000000
      000015151516B7823FFFFBCD84FFF8C77AFFFBCD84FFB7823FFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163A699DFF665F5AFF63605EFF6260
      5FFF62605FFF62605FFF62605FFF62605FFF62605FFF62605FFF62605FFF6260
      5FFF62605FFF62605EFF655D57FF4987B7FF4B84B0FF4B84AFFF4B84AFFF4B84
      AFFF4982ADFF6294B8FF5D9DCFFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505061B1B1B1C3939393DB5803DFFF8CB
      85FFF4C476FFE7B771FFB78240FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B6813EFFF6CA
      84FFF2C274FFF8CA85FFB5803CFF3C3C3C3D1B1B1B1C05050506000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B6813EFFF6CA84FFF2C274FFF8CA85FFB580
      3CFF3C3C3C3D1B1B1B1C05050506000000000000000000000000000000000000
      000015151516B6813EFFF5C883FFF0C072FFF5C883FFB6813EFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163B6A9DFF635D57FF605E5CFF605E
      5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E
      5DFF605E5DFF605D5BFF625A55FF4A8AB9FF4C87B2FF4C86B1FF4C86B1FF4C86
      B1FF4984AFFF6899BAFF5C9CCEFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505061B1B1B1C3939393DB5803EFFF4CA87FFEEBD
      71FFEEBD71FFE4B771FFB7823FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B6813DFFF2C8
      85FFEDBC6FFFEEBD70FFF4CA87FFB5803DFF3C3C3C3D1B1B1B1C050505060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B6813DFFF2C885FFEDBC6FFFEEBD70FFF4CA
      87FFB5803DFF3C3C3C3D1B1B1B1C050505060000000000000000000000000000
      000015151516B6813DFFF4C785FFEDBC6FFFF4C785FFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163B6C9EFF615C56FF5E5D5BFF5E5D
      5CFF5E5D5CFF5E5D5CFF5E5D5CFF5E5D5CFF5E5D5CFF5E5D5CFF5E5D5CFF5E5D
      5CFF5E5D5CFF5E5C5BFF605953FF4B8BBCFF4D88B5FF4D87B3FF4D87B3FF4D87
      B3FF4A85B1FF6E9CBFFF5A9ACCFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050505061B1B1B1C3939393DB5803EFFF2C989FFEBBA6DFFE9B8
      6CFFEBBA6CFFE2B573FFB7823FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B6813DFFF0C7
      87FFEAB86AFFE9B86BFFEBBA6CFFF2C989FFB5803DFF3C3C3C3D1B1B1B1C0505
      0506000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B6813DFFF0C787FFEAB86AFFE9B86BFFEBBA
      6CFFF2C989FFB5803DFF3C3C3C3D1B1B1B1C0505050600000000000000000000
      000015151516B6813DFFF1C688FFEBB96AFFF1C688FFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163C6C9FFF605954FF5D5B59FF5D5B
      5AFF5D5B5AFF5D5B5AFF5D5B5AFF5D5B5AFF5D5B5AFF5D5B5AFF5D5B5AFF5D5B
      5AFF5D5B5AFF5D5A58FF5F5751FF4C8CBDFF4E89B6FF4E88B4FF4E88B4FF4E88
      B4FF4B86B3FF74A1C3FF5898CAFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050505061B1B1B1C3939393DB6813EFFF0C88BFFE8B768FFE6B568FFE6B5
      68FFE8B668FFE1B574FFB7823FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B6813DFFEEC6
      88FFE6B566FFE6B567FFE6B567FFE8B767FFF0C88BFFB6813DFF3C3C3C3D1B1B
      1B1C050505060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B6813DFFEEC688FFE6B566FFE6B567FFE6B5
      67FFE8B767FFF0C88BFFB6813DFF3C3C3C3D1B1B1B1C05050506000000000000
      000015151516B6813DFFF0C789FFE8B667FFF0C789FFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163C6DA0FF5E5752FF5B5957FF5B59
      58FF5B5958FF5B5958FF5B5958FF5B5958FF5B5958FF5B5958FF5B5958FF5B59
      58FF5B5958FF5B5856FF5C544FFF4E8EBFFF4F8AB8FF4F89B6FF4F89B6FF4F89
      B6FF4982ADFF78A5C6FF5796C8FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05061B1B1B1C3939393DB6813EFFE6C28AFFE5B265FFE3B165FFE3B165FFE3B1
      65FFE4B265FFDFB476FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B6813DFFECC5
      8AFFE3B162FFE3B164FFE3B164FFE3B164FFE5B264FFE6C28AFFB6813DFF3C3C
      3C3D1B1B1B1C0505050600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B6813DFFECC58AFFE3B162FFE3B164FFE3B1
      64FFE3B164FFE5B264FFE6C28AFFB6813DFF3C3C3C3D1B1B1B1C050505060000
      000015151516B6813DFFEEC78BFFE6B263FFEEC78BFFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163D6EA0FF5C5551FF595756FF5957
      57FF595757FF595757FF595757FF595757FF595757FF595757FF595757FF5957
      57FF595757FF595655FF5A524DFF4F90C1FF508CB9FF508BB7FF508BB7FF508B
      B7FF4577A2FF82AACAFF5695C5FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505061B1B
      1B1C3838383CB6813EFFE5C28DFFE2AF60FFE0AE61FFE0AE61FFE0AE61FFE0AE
      61FFE1AE60FFDEB577FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B6813DFFEBC6
      8CFFE0AD5EFFE0AE60FFE0AE60FFE0AE60FFE0AE60FFE2AF5FFFE5C28DFFB681
      3DFF3B3B3B3C1B1B1B1C05050506000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B6813DFFEBC68CFFE0AD5EFFE0AE60FFE0AE
      60FFE0AE60FFE0AE60FFE2AF5FFFE5C28DFFB6813DFF3B3B3B3C1B1B1B1C0505
      050615151516B6813DFFEDC78EFFE3B05FFFEDC78EFFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163E6FA2FF59544EFF575654FF5756
      55FF575655FF575655FF575655FF575655FF575655FF575655FF575655FF5756
      55FF575655FF575553FF58514BFF5091C3FF518DBBFF518CB9FF528BB8FF538A
      B7FF416C96FF87ADCDFF5492C4FF151515160000000000000000000000000000
      00000000000000000000000000000000000000000000050505061B1B1B1C3838
      383CB7813EFFD9BD8EFCDFAC5BFFDDAB5CFFDDAB5DFFDDAB5DFFDDAB5DFFDDAB
      5DFFDEAB5BFFDDB579FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B7823DFFEAC6
      8FFFDDAA59FFDDAB5BFFDDAB5CFFDDAB5CFFDDAB5CFFDDAB5BFFDFAC5AFFD9BD
      8FFCB7813DFF3B3B3B3C1B1B1B1C050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B7823DFFEAC68FFFDDAA59FFDDAB5BFFDDAB
      5CFFDDAB5CFFDDAB5CFFDDAB5BFFDFAC5AFFD9BD8FFCB7813DFF3B3B3B3C1B1B
      1B1C1B1B1B1CB6813DFFEEC891FFE1AC5CFFEEC891FFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163E71A3FF57514CFF555452FF5554
      53FF555453FF555453FF555453FF555453FF555453FF555453FF555453FF5554
      53FF555453FF555351FF554E48FF5293C4FF528EBCFF528DBAFF548BB7FF36A8
      DFFF1FB8F7FF8EB1CFFF5391C1FF151515160000000000000000000000000000
      000000000000000000000000000000000000000000001010101134343437B882
      3DFFCFB793F6DBA756FFD9A758FFD9A759FFD9A759FFD9A759FFD9A759FFD9A7
      59FFD9A757FFDCB57CFFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B7823DFFE8C6
      92FFD9A555FFD9A757FFD9A758FFD9A758FFD9A758FFD9A758FFD9A757FFDBA7
      55FFD0B996F6B8823CFF36363637101010110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B7823DFFE8C692FFD9A555FFD9A757FFD9A7
      58FFD9A758FFD9A758FFD9A758FFD9A757FFDBA755FFD0B996F6B8823CFF3636
      363726262627B6813DFFEBC993FFDEAA58FFEBC993FFB6813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163F71A5FF564F4BFF545251FF5452
      52FF545252FF545252FF545252FF545252FF545252FF545252FF545252FF5452
      52FF545252FF545150FF544C47FF5395C7FF5390BEFF548FBBFF568CB8FF23B8
      F5FF5082AEFF92B4D2FF5190BEFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000010101011B9843FFFD2BA
      94F8DBAC61FFD6A354FFD6A456FFD6A456FFD6A456FFD6A456FFD6A456FFD6A4
      56FFD6A354FFDBB680FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B7823DFFE7C6
      95FFD5A251FFD6A454FFD6A455FFD6A455FFD6A455FFD6A455FFD6A455FFD6A3
      53FFDBAC60FFD3BB97F8B9843EFF101010110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B7823DFFE7C695FFD5A251FFD6A454FFD6A4
      55FFD6A455FFD6A455FFD6A455FFD6A455FFD6A353FFDBAC60FFD3BB97F8B984
      3EFF26262627B7813DFFEBC997FFDBA654FFEBC997FFB7813DFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515163F72A5FF544E48FF52514FFF5251
      50FF525150FF525150FF525150FF525150FF525150FF525150FF525150FF5251
      50FF525150FF52504EFF524B45FF5496C9FF5491C0FF5590BDFF588DBAFF23BA
      F7FF4B77A4FF97B8D7FF518EBDFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000005050506B9843FFFD5BD
      98F7D9A95DFFD39E4FFFD3A051FFD3A052FFD3A052FFD3A052FFD3A052FFD3A0
      51FFD39F4FFFDCB783FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B7823DFFE6C8
      98FFD29E4CFFD3A050FFD3A051FFD3A051FFD3A051FFD3A051FFD3A050FFD39E
      4EFFD9A95CFFD6BF9BF7B9843EFF050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B7823DFFE6C898FFD29E4CFFD3A050FFD3A0
      51FFD3A051FFD3A051FFD3A051FFD3A050FFD39E4EFFD9A95CFFD6BF9BF7B984
      3EFF1B1B1B1CB7813CFFEACB9AFFD9A350FFEACB9AFFB7813CFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515164073A6FF524C47FF504F4EFF504F
      4FFF504F4FFF504F4FFF504F4FFF504F4FFF504F4FFF504F4FFF504F4FFF504F
      4FFF504F4FFF504E4DFF4F4944FF5597CAFF5592C1FF5691BEFF588EBCFF23B9
      F7FF466E99FF9DBDD9FF4F8CBBFF151515160000000000000000000000000000
      000000000000000000000000000000000000000000000000000005050506B881
      3DFFD1BE9EF5D09B48FFD09C4BFFD09D4DFFD09D4EFFD09D4EFFD09D4EFFD09D
      4DFFD09B4AFFDBB786FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B7823DFFE7C8
      9CFFCF9A48FFD09D4CFFD09D4DFFD09D4DFFD09D4DFFD09D4CFFD09C4AFFD09B
      47FFD2C0A1F5B8813CFF05050506000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B7823DFFE7C89CFFCF9A48FFD09D4CFFD09D
      4DFFD09D4DFFD09D4DFFD09D4CFFD09C4AFFD09B47FFD2C0A1F5B8813CFF0505
      050615151516B7813CFFEBCC9EFFD59F4DFFEBCC9EFFB7813CFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515164075A7FF514945FF4F4C4CFF4F4D
      4DFF4F4D4DFF4F4D4DFF4F4D4DFF4F4D4DFF4F4D4DFF4F4D4DFF4F4D4DFF4F4D
      4DFF4F4D4DFF4F4C4BFF4E4641FF5799CDFF5693C3FF5692C1FF5890BFFF37A9
      E1FF1DB7F6FFA0BFD9FF4E8ABAFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      0506B7823DFFD4C2A3F5CC9745FFCC9948FFCD9A4BFFCD9A4BFFCD9A4BFFCD9A
      4AFFCC9847FFDBB989FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B8823CFFE6CA
      A0FFCB9744FFCD9A49FFCD9A4AFFCD9A4AFFCD9A4AFFCC9947FFCC9744FFD5C4
      A6F5B7823CFF0505050600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B8823CFFE6CAA0FFCB9744FFCD9A49FFCD9A
      4AFFCD9A4AFFCD9A4AFFCC9947FFCC9744FFD5C4A6F5B7823CFF050505060000
      000015151516B7813CFFEACDA2FFD39D49FFEACDA2FFB7813CFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515164176A7FF4E4742FF4D4A49FF4D4B
      4BFF4D4B4BFF4D4B4BFF4D4B4BFF4D4B4BFF4D4B4BFF4D4B4BFF4D4B4BFF4D4B
      4BFF4D4B4BFF4D4A49FF4C443FFF589BCEFF5795C4FF5794C2FF5894C1FF5892
      BFFF548FBEFFA5C3DDFF4C89B7FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005050506B7813DFFE5CDA8FFC89340FFC99444FFCA9646FFCA9647FFCA96
      46FFC99442FFDABA8CFFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B8823CFFE6CC
      A4FFC89240FFCA9545FFCA9646FFCA9645FFC99443FFC8933FFFE5CDA8FFB781
      3CFF050505060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B8823CFFE6CCA4FFC89240FFCA9545FFCA96
      46FFCA9645FFC99443FFC8933FFFE5CDA8FFB7813CFF05050506000000000000
      000015151516B7813CFFEACFA5FFD19945FFEACFA5FFB7813CFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515164276A9FF4C4641FF4B4949FF4B4A
      4AFF4B4A4AFF4B4A4AFF4B4A4AFF4B4A4AFF4B4A4AFF4B4A4AFF4B4A4AFF4B4A
      4AFF4B4A4AFF4B4948FF4A423DFF589DD1FF5796C6FF5795C4FF5795C4FF5694
      C3FF5291C2FFA9C6E1FF4B87B6FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005050506B7813DFFE5CFADFFC58F3BFFC69140FFC79342FFC793
      42FFC6903DFFDBBB90FFB8833FFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B8823CFFE6CD
      A8FFC58F3BFFC79240FFC79341FFC6913FFFC58F3AFFE5CFADFFB7813CFF0505
      0506000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B8823CFFE6CDA8FFC58F3BFFC79240FFC793
      41FFC6913FFFC58F3AFFE5CFADFFB7813CFF0505050600000000000000000000
      000015151516B7813BFFEAD0ABFFCD9540FFEAD0ABFFB7813BFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515164278AAFF49433FFF494746FF4948
      48FF494848FF494848FF494848FF494848FF494848FF494848FF494848FF4948
      48FF494848FF494746FF47403BFF5A9ED3FF5897C8FF5896C6FF5896C6FF5795
      C6FF5293C4FFADCAE3FF4985B3FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005050506B7813DFFE8D2B1FFC28B38FFC38E3DFFC38F
      3EFFC28D3AFFDBBE94FFB8833EFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B8813BFFE7D0
      ADFFC28B37FFC38F3DFFC38E3CFFC28B37FFE8D2B1FFB7813CFF050505060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B8813BFFE7D0ADFFC28B37FFC38F3DFFC38E
      3CFFC28B37FFE8D2B1FFB7813CFF050505060000000000000000000000000000
      000015151516B7813BFFEAD3B0FFCB923CFFEAD3B0FFB7813BFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515164279AAFF49413DFF484544FF4846
      46FF484646FF484646FF484646FF484646FF484646FF484646FF484646FF4846
      46FF484646FF484544FF463E39FF5B9FD4FF5998C9FF5997C7FF5997C7FF5896
      C7FF5393C5FFB2CFE6FF4884B1FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005050506B7813DFFE9D6B7FFBE8733FFBF89
      37FFBF8834FFDCBF98FFB8833EFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B8813BFFE7D3
      B2FFBE8632FFBF8936FFBE8732FFE9D6B7FFB7813CFF05050506000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B8813BFFE7D3B2FFBE8632FFBF8936FFBE87
      32FFE9D6B7FFB7813CFF05050506000000000000000000000000000000000000
      000015151516B7813BFFECD4B3FFC88F38FFECD4B3FFB7813BFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000015151516447AABFF46403CFF464443FF4645
      45FF464545FF464545FF464545FF464545FF464545FF464545FF464545FF4645
      45FF464545FF464443FF443D38FF5CA1D7FF5A9BCBFF5A99C9FF5A99C9FF5998
      C9FF5495C7FFB6D2E8FF4682B0FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050506B8813CFFE9D7BCFFBB83
      2DFFBB832DFFDCC09BFFB8833EFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151516B8813BFFE7D4
      B7FFBA8129FFBA822BFFE9D7BCFFB8813BFF0505050600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151516B8813BFFE7D4B7FFBA8129FFBA822BFFE9D7
      BCFFB8813BFF0505050600000000000000000000000000000000000000000000
      000015151516B7813BFFECD7B7FFC58C34FFECD7B7FFB7813BFF151515160000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000015151516447BADFF443E39FF444241FF4443
      43FF444343FF444343FF444343FF444343FF444343FF444343FF444343FF4443
      43FF444343FF444141FF423A35FF5DA3D8FF5B9CCCFF5B9ACAFF5B9ACAFF5A99
      CAFF5596C8FFBBD5EBFF4581ADFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005050506B8813CFFEADA
      C1FFB57822FFDDC29DFFB8823EFF141414150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141415B8813BFFE8D6
      BAFFB5751FFFEAD9C0FFB8813BFF050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141415B8813BFFE8D6BAFFB5751FFFEAD9C0FFB881
      3BFF050505060000000000000000000000000000000000000000000000000000
      000014141415B7813AFFECD9BCFFC1862DFFECD9BCFFB7813AFF141414150000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000015151516457BAEFF423B37FF42403FFF4241
      41FF424141FF424141FF424141FF424141FF424141FF424141FF424141FF4241
      41FF424141FF423F3FFF3F3833FF5EA4DAFF5C9CCEFF5C9BCCFF5C9BCCFF5B9A
      CCFF5597CAFFC0D9EDFF437AABFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005050506B881
      3CFFE7D7BDFFDEC4A2FFB9833FFF0C0C0C0D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C0DB8823CFFEADB
      C1FFE7D6BBFFB8813AFF05050506000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C0DB8823CFFEADBC1FFE7D6BBFFB8813AFF0505
      0506000000000000000000000000000000000000000000000000000000000000
      00000C0C0C0DB8823CFFF0DFC6FFEEDDC3FFF0DFC6FFB8823CFF0C0C0C0D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000141414154581ADFF413A35FF413E3DFF413F
      3EFF413F3EFF413F3EFF413F3EFF413F3EFF413F3EFF413F3EFF413F3EFF413F
      3EFF413F3EFF403D3CFF3C3530FF5CA2DBFF5A9BD0FF5B9BCEFF5D9CCEFF5B9B
      CEFF5698CCFFC5DCF0FF4279AAFF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      0506B9833EFFB9833EFF998871B4030303040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030304A19584B4B882
      3CFFB8823DFF0505050600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030304A19584B4B8823CFFB8823DFF050505060000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030304A19584B4B8823BFFB7813AFFB8823BFFA19584B4030303040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C0D4580ACFF3D332CFF3E3732FF3E38
      33FF3E3833FF3E3833FF3E3833FF3E3833FF3E3833FF3E3833FF3E3833FF3E38
      33FF3E3833FF3D3631FF372E26FFBCDCF7FF76AED9FF579ACDFF5B9CCEFF5B9C
      CEFF569ACDFFC9DFF2FF4178A7FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303030485929DB44682AEFF4783B0FF4783
      B1FF4783B1FF4783B1FF4783B1FF4783B1FF4783B1FF4783B1FF4783B1FF4783
      B1FF4783B1FF4682AFFF4078A9FF80A9CBFFB9D3EAFFA7C9E5FF68A4D3FF579A
      CFFF5599CFFFCDE2F3FF3F76A6FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202039CA0A4ABC2DBEEFF9AC2
      E2FF569AD0FFCFE3F5FF3D73A3FF151515160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000121212122B3BE
      C7D1BDD6EDFFD3E7F7FF3C72A2FF101010110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00014A4A4A4BCBE0F3FC3A719FFF050505060000000000000000000000000000
      0000000000000000000000000000000000000000000500000010000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000010000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505060F0F0F11141414161414
      14160F0F0F110505050600000000000000000000000000000000000000000000
      00000000000000000000030303040C0C0C0D1313131514141416141414161414
      1416141414161414141614141416141414161414141614141416141414161414
      1416141414161414141614141416131313150C0C0C0D03030304000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000050000001900000035000000420000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004200000035000000190000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505061818181C2B2B2B37313131433131
      31432B2B2B371818181C05050506000000000000000000000000000000000000
      000000000000000000000C0C0C0D2323232B2F2F2F3F31313143313131433131
      3143313131433131314331313143313131433131314331313143313131433131
      31433131314331313143313131432F2F2F3F2323232B0C0C0C0D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005000000190000003A2A38B3EF2D3DC3FF2D3D
      C3FF2D3DC3FF2D3DC3FF2D3DC3FF2D3DC3FF2D3DC3FF2E3EC3FF2E3EC3FF2E3E
      C3FF2E3EC3FF2E3EC3FF2B39B3EF0000003A0000001900000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505061818181C2E2E2E3D4B80A9FF4B81A8FF4A81
      A9FF4881ABFF2B2B2B370F0F0F11000000000000000000000000000000000000
      00000000000000000000131313158F7558C4B5834BFFB38147FFB38147FFB381
      47FFB38147FFB38147FFB38147FFB38147FFB38147FFB38147FFB38147FFB381
      47FFB38147FFB38147FFB38147FFB5834BFF8F7558C413131315000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000500000019000000392837ACEB3646C4FF3948C4FF3847
      C3FF3745C2FF3644C2FF3543C0FF3240C0FF313FBFFF2E3EBFFF2C3CBFFF2B3A
      BEFF2B3BBEFF2C3CBFFF2E3EC2FF2837ACEB0000003900000019000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050505061818181C2E2E2E3D4C82AAFF1C92E2FF24A2FAFF2AAD
      FFFF33B8FFFF4792C5FF14141416000000000000000000000000000000000000
      0000000000000000000014141416B5834AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5834AFF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000019000000392736ACEB3A48C4FF4655D0FF6779FFFF687B
      FFFF687BFFFF687BFFFF687BFFFF687BFFFF687CFFFF687CFFFF697CFFFF697C
      FFFF697CFFFF6779FFFF3647CBFF2D3DC1FF2837ACEB00000039000000190000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050505061818181C2E2E2E3D4C82A9FF2A90D5FF26A1F7FF2AAAFFFF30B1
      FFFF4AC2FFFF4591C4FF14141416000000000000000000000000000000000000
      0000000000000000000014141416B48146FFFFFFFFFFFFF7EBFFFFF6EAFFFFF6
      EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6
      EBFFFFF6EBFFFFF6EAFFFFF7EBFFFFFFFFFFB48146FF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404050F0F0F101414141614141416141414160F0F
      0F10040404050000000000000000000000000000000000000000000000000000
      00000000000000000000050505060F0F0F11141414160F0F0F10040404050000
      0000000000000000000000000000000000000000000000000000000000000000
      000500000019000000392736ABEB3D4CC5FF4B5AD1FF6375FFFF6376FFFF6275
      FEFF6275FEFF6275FEFF6275FEFF6275FEFF6275FEFF6275FEFF6275FEFF6275
      FEFF6275FEFF6377FFFF6375FFFF3647CBFF2D3DC1FF2837ACEB000000390000
      0019000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05061818181C2E2E2E3D4D82A9FF1D92E1FF26A0F6FF29A9FFFF2AADFFFFD3EF
      FFFF3FC3FFFF4391C6FF1010101200000000030303040C0C0C0D131313151414
      1416141414161414141621212127B58144FFFFFFFFFFFFEEDAFFFFEEDBFFFFEE
      DBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEE
      DBFFFFEEDBFFFFEEDBFFFFEEDAFFFFFFFFFFB58144FF21212127141414161414
      141614141416131313150C0C0C0D030303040000000000000000000000000000
      000000000000000000000F0F0F10272727313030304231313143303030422828
      2832101010120000000100000000000000000000000000000000000000000000
      000000000000050505061818181C2B2B2B3730303042272727310F0F0F100000
      0000000000000000000000000000000000000000000000000000000000050000
      0019000000392736ABEB4250C7FF505ED2FF6073FEFF6174FEFF5F72FCFF5F72
      FCFF5F72FCFF5F72FCFF5F72FCFF5F72FCFF5F72FCFF5F72FCFF5F72FCFF5F72
      FCFF5F72FCFF5F72FCFF6174FEFF6173FFFF3645CBFF2D3DC1FF2837ACEB0000
      0039000000190000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505061818
      181C2E2E2E3D4B82AAFF1D92E1FF26A0F6FF29A9FFFF29ADFFFFCDECFFFFD4F4
      FFFF47CEFFFF4394C9FF07070708000000000C0C0C0D2323232B2F2F2F3F3131
      3143313131433131314333333348B78143FFFFFFFFFFFFE6CAFFFFE6CBFFFFE6
      CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6CCFFFFE6
      CCFFFFE6CCFFFFE6CBFFFFE6CAFFFFFFFFFFB78143FF33333348313131433131
      3143313131432F2F2F3F2323232B0C0C0C0D0000000000000000000000000000
      0000000000000000000014141416B08248F3B78241FFB68140FFB78241FFAF81
      49F11919191D0202020300000000000000000000000000000000000000000000
      0000050505061818181C2E2E2E3DB78241FFB78341FFB08248F3141414160000
      0000000000000000000000000000000000000000000000000005000000190000
      00392636ABEB4653C8FF5562D3FF5D71FDFF5D71FDFF5C70FBFF5A6FFBFF5A6F
      FBFF5B6FFBFF5C70FBFF5C70FBFF5C70FBFF5C70FBFF5C70FBFF5C70FBFF5B6F
      FBFF5A6FFBFF5A6FFBFF5C70FBFF5E72FDFF5E72FEFF3546CBFF2E3DC1FF2837
      ACEB000000390000001900000005000000000000000000000000000000000000
      0000000000000000000000000001040404050C0C0C0D12121214141414161414
      14161414141614141416121212140C0C0C0D04040405050505061818181C2E2E
      2E3D4282B1FF2790D8FF25A0F7FF29A9FFFF29ADFFFFCCECFFFFD1F2FFFF42CB
      FFFF408EC3FF2F323539000000010000000013131315727272C4808080FF7C7C
      7CFF7C7C7CFF7D8081FF7B8186FFB98142FFFFFFFFFFFFDFB7FFFFDFB8FFFFDF
      B9FFFFDFB9FFFFDFB9FFFFDFB9FFFFDFB9FFFFDFB9FFFFDFB9FFFFDFB9FFFFDF
      B9FFFFDFB9FFFFDFB8FFFFDFB7FFFFFFFFFFB98142FF7B8186FF7D8081FF7C7C
      7CFF7C7C7CFF808080FF727272C4131313150000000000000000000000000000
      0000000000000000000014141416B78241FFFBCD84FFF8C77CFFFBCD84FFB782
      41FF433F3A4F0404040500000000000000000000000000000000000000000505
      05061818181C2E2E2E3DB47D3EFFFDD08AFFFDCE86FFB78241FF141414160000
      00000000000000000000000000000000000000000005000000190000003A2635
      ABEB4857C9FF5967D5FF5C6FFCFF5A6FFCFF596DFAFF566AFAFF5166FAFF5065
      FAFF5569FAFF586DFAFF5A6EFAFF5A6EFAFF5A6EFAFF5A6EFAFF586DFAFF5569
      FAFF5065FAFF5166FAFF566BFAFF5A6EFAFF5C70FCFF5B70FDFF3546CBFF2E3D
      C1FF2837ACEB0000003A00000019000000050000000000000000000000000000
      000000000000040404050F0F0F101B1B1B1F272727312E2E2E3E303030423131
      314331313143303030422E2E2E3E272727311C1C1C201E1E1E232E2E2E3D8076
      72FF6B96B0FF1BA0FEFF26A9FFFF28ADFFFFCCECFFFFD1F2FFFF41CBFFFF3F8E
      C3FF0505050600000000000000000000000014141416808080FFEAE7E6FFE2DF
      DEFFE2E0DFFFE6E4E4FF737376FFBD8442FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8442FF737376FFE6E4E4FFE2E0
      DFFFE2DFDEFFEAE7E6FF808080FF141414160000000000000000000000000000
      0000000000000000000014141416B68140FFF5C883FFF0C074FFF5C883FFB681
      40FF403D394C0404040500000000000000000000000000000000050505061818
      181C2E2E2E3DB5803EFFF8CA85FFF2C276FFF6CA84FFB68140FF141414160000
      00000000000000000000000000000000000000000010000000352635ABEB4C59
      CAFF5E6BD6FF596EFAFF586CFBFF576BF9FF5367F9FF485EF8FFCCD1FDFFF5F6
      FFFF5368F8FF5266F9FF576BF9FF586CF9FF586CF9FF576BF9FF5166F9FF5368
      F8FFF5F6FFFFCCD1FDFF485EF8FF5367F9FF586CF9FF5A6EFBFF596DFBFF3546
      CAFF2E3EC1FF2837ADEB00000035000000100000000000000000000000000000
      0001080808091818181C2A2A2A353F3F3F5C696766C3726F6EF8716E6DFF706D
      6CFF706D6CFF716E6DFF726F6EF8696766C33E3E3E5B34343449797675FF9C99
      95FFABA099FF7BA7C6FF1FADFFFFCAECFFFFD1F2FFFF41CBFFFF3F8EC3FF0505
      050600000000000000000000000000000000141414167C7C7CFFE3E1E0FFD6D4
      D2FFD6D4D2FFDAD9D7FF959494FF69696BFF696869FF686666FF7A7876FF7A78
      76FF797876FF797876FF797876FF797876FF797876FF797876FF797876FF7978
      76FF7A7876FF7A7876FF686666FF696869FF69696BFF959494FFDAD9D7FFD6D4
      D2FFD6D4D2FFE3E1E0FF7C7C7CFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFF4C785FFEDBC71FFF4C785FFB681
      3FFF403D394C04040405000000000000000000000000050505061818181C2E2E
      2E3DB5803FFFF4CA87FFEEBD72FFEDBC71FFF2C885FFB6813FFF141414160000
      000000000000000000000000000000000000000000162837B1EE4F5CCCFF616E
      D8FF566BF9FF556AFAFF546AF8FF5066F8FF455CF7FFC6CDFCFFFFFFFFFFFFFF
      FFFFEEF0FFFF425AF7FF4F65F8FF5469F8FF5469F8FF4F65F8FF5166F7FFEEEF
      FFFFFFFFFFFFFFFFFFFFC6CDFCFF455CF7FF5166F8FF556AF8FF576CFAFF576B
      FAFF3545CBFF2E3EC2FF2B39B2EE000000160000000000000000000000010B0B
      0B0C1E1E1E24353535486E6C6CDF807C7BFFB3B1B1FFCECECDFFE3E3E2FFE2E2
      E1FFE2E2E1FFE3E3E2FFCECECDFFB3B1B1FF7D7B7BFF777473FD959391FFA4A2
      A0FFACA9A5FFB6ADA7FFE5ECEFFFC9F2FFFF3FCBFFFF3F8EC3FF050505060000
      000000000000000000000000000000000000141414167B7C7CFFE3E0DFFFCFCD
      CBFFCFCDCBFFD1CFCDFFD7D5D3FF8E8C8AFF5F5E5DFF615F5EFF605F5EFF605E
      5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E5DFF605E
      5DFF605E5DFF605F5EFF615F5EFF5F5E5DFF8E8C8AFFD7D5D3FFD1CFCDFFCFCD
      CBFFCFCDCBFFE3E0DFFF7B7C7CFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFF1C688FFEBB96CFFF1C688FFB681
      3FFF403D394C040404050000000000000000050505061818181C2E2E2E3DB580
      3FFFF2C989FFEBBA6EFFE9B86DFFEAB86CFFF0C787FFB6813FFF141414160000
      000000000000000000000000000000000000000000162A3AC2FF6A74D1FF5469
      F9FF5368F9FF5368F7FF5167F7FF4A60F7FFCAD1FCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC4CBFCFF4259F6FF4D63F7FF4D63F7FF4259F6FFC3CBFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD2FDFF4A60F7FF5267F7FF5368F7FF556A
      F9FF566BFBFF2E3EC0FF2E3EC4FF000000160000000000000000080808091E1E
      1E244E4D4D76736F6EFFB4B2B1FFE5E5E6FFE0E1E4FFDCDFE4FFDADEE4FFD9DE
      E4FFD9DEE4FFDADEE4FFDCDFE3FFE0E1E4FFE4E5E5FFB2B1B0FF716E6DFF9A98
      97FFB3B2B0FFF0EEECFFFAF3EFFF9ECEE0FF378DC6FF05050506000000000000
      000000000000000000000000000000000000141414167C7C7CFFE3E2E1FFCBC8
      C7FFCBC8C7FFCCC8C8FFCECBCAFFD2CECDFFD5D1D1FFD6D3D2FFD6D3D2FFD6D3
      D2FFD6D3D2FFD6D3D2FFD6D3D2FFD6D3D2FFD6D3D2FFD6D3D2FFD6D3D2FFD6D3
      D2FFD6D3D2FFD6D3D2FFD6D3D2FFD5D1D1FFD2CECDFFCECBCAFFCCC8C8FFCBC8
      C7FFCBC8C7FFE3E2E1FF7C7C7CFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFF0C789FFE8B669FFF0C789FFB681
      3FFF403D394C0404040500000000050505061818181C2E2E2E3DB6813FFFF0C8
      8BFFE8B769FFE6B569FFE6B569FFE6B568FFEEC688FFB6813FFF141414160000
      00000000000000000000000000000000000000000016293AC2FF6F7AD2FF4F66
      FAFF5166F7FF5166F6FF4F65F6FF475DF6FFE6E9FEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC3CBFCFF3C53F5FF3C53F5FFC3CBFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8DCFDFF485EF6FF5065F6FF5166F6FF5267
      F7FF546AFCFF3040C0FF2E3EC3FF0000001600000000040404051818181C4E4E
      4E747A7776FFD3D2D2FFE3E4E6FFDDE1E7FFEAD5BBFFF6CA91FFFFC373FFFFC3
      73FFFFC373FFFFC271FFF6C98FFFE9D4BAFFDDE1E6FFE3E4E6FFD1D1D1FF7471
      70FFA6A3A3FFF9F8F7FFD3CECBFF9C9089FF0505050600000000000000000000
      000000000000000000000000000000000000141414167C7C7CFFE5E3E3FFC5C2
      C1FFC6C3C2FFC6C3C2FFC8C5C4FFCBC8C7FFCDCAC9FFCECBCAFFCECBCAFFCECB
      CAFFCECBCAFFCECBCAFFCECBCAFFCECBCAFFCECBCAFFCECBCAFFCECBCAFFCECB
      CAFFCECBCAFFCECBCAFFCECBCAFFCDCAC9FFCBC8C7FFC8C5C4FFC6C3C2FFC6C3
      C2FFC5C2C1FFE5E3E3FF7C7C7CFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFEEC78BFFE6B265FFEEC78BFFB681
      3FFF403D394C04040405050505061818181C2E2E2E3DB6813FFFE6C28AFFE5B2
      66FFE3B166FFE3B166FFE3B166FFE3B164FFECC58AFFB6813FFF141414160000
      000000000000000000000000000000000000000000162939C2FF7781D3FF4C63
      F9FF4D64F5FF4E64F5FF4D64F5FF485FF5FF4961F4FFECEEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBAC3FBFFBAC3FBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFECEFFEFF4A61F4FF495FF5FF4D64F5FF4E64F5FF4E64
      F6FF5067FAFF3544C1FF2E3EC3FF00000016000000010F0F0F113030303E7C7A
      78FFD5D4D3FFE4E6E8FFE3DEDAFFF4C586FFF6BF73FFEFC37AFFECCA85FFEECF
      8AFFF0D58FFFF3D893FFF6D389FFF8C478FFF3C384FFE2DDD9FFE4E5E8FFD2D2
      D0FF716F6CFFC9C8C6FF94908EFF050505060000000000000000000000000000
      000000000000000000000000000000000000141414167B7C7CFFE8E6E6FFBFBD
      BBFFC1BFBDFFC3C1BFFFC7C5C3FF979593FF797775FF7B7977FF7B7977FF7B79
      77FF7B7977FF7B7977FF7B7977FF7B7977FF7B7977FF7B7977FF7B7977FF7B79
      77FF7B7977FF7B7977FF7B7977FF797775FF979593FFC7C5C3FFC3C1BFFFC1BF
      BDFFBFBDBBFFE8E6E6FF7B7C7CFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFEDC78EFFE3B061FFEDC78EFFB681
      3FFF3F3C394B0909090A1818181C2D2D2D3CB6813FFFE5C28DFFE2AF61FFE0AE
      62FFE0AE62FFE0AE62FFE0AE62FFE0AD60FFEBC68CFFB6813FFF141414160000
      000000000000000000000000000000000000000000162939C1FF7D86D6FF4960
      F7FF4B62F4FF4C62F4FF4C62F4FF4A61F4FF455CF4FF465DF3FFECEEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFECEEFEFF465DF3FF455CF4FF4A61F4FF4C62F4FF4C62F4FF4C62
      F5FF4E65F9FF3947C2FF2D3DC3FF00000016050505061C1C1C21737070DDB9B8
      B7FFE7E8EAFFE4E1DCFFF2BC72FFEBBB72FFE8C17BFFEBC885FFEFCE8AFFF1D4
      90FFF4D994FFF6DD98FFF7E29BFFF7E29BFFF5CE86FFF1B86FFFE4E0DBFFE7E8
      EAFFB5B4B3FF868482FD1C1C1C20040404050000000000000000000000000000
      000000000000000000000000000000000000141414167B7B7BFFECEAEAFFBAB7
      B5FFBCB9B7FFC1BDBBFF8F8D8DFF747271FF777574FF777575FF777675FF7776
      75FF777675FF777675FF777675FF777675FF777675FF777675FF777675FF7776
      75FF777675FF777675FF777575FF777574FF747271FF8F8D8DFFC1BDBBFFBCB9
      B7FFBAB7B5FFECEAEAFF7B7B7BFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFEEC891FFE1AC5EFFEEC891FFB681
      3FFF3F3C394C1B1B1B1F2D2D2D3CB7813FFFD9BD8DFCDFAC5CFFDDAB5DFFDDAB
      5EFFDDAB5EFFDDAB5EFFDDAB5DFFDDAA5BFFEAC68FFFB7823FFF141414160000
      000000000000000000000000000000000000000000162839C1FF848CD7FF475E
      F6FF4960F3FF4A60F3FF4A60F3FF4A60F3FF485EF3FF4259F3FF445BF2FFEAED
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEAEDFEFF445BF2FF4259F3FF485EF3FF4A60F3FF4A60F3FF4A60F3FF4A60
      F4FF4C62F8FF3D4BC4FF2D3DC3FF000000160D0D0D0E4343435B868482FFEEEE
      EEFFE5E9EEFFEBBC7DFFE7B56BFFE6BB76FFEAC480FFEDCB87FFF0D18DFFF3D8
      93FFF6DE99FFF8E39DFFFAE7A2FFFAE7A1FFF9E49FFFF1CC84FFE9B97AFFE5E8
      EEFFEDEDEDFF83807CFF363636460C0C0C0D0000000000000000000000000000
      000000000000000000000000000000000000141414167B7B7BFFEFEEEDFFB2AE
      ACFFB4B0AEFFBAB7B5FF656362FF6C6A69FF6E6C6BFF6E6C6BFF6E6C6BFF6E6C
      6BFF6E6C6BFF6E6C6BFF6E6C6BFF6E6C6BFF6E6C6BFF6E6C6BFF6E6C6BFF6E6C
      6BFF6E6C6BFF6E6C6BFF6E6C6BFF6E6C6BFF6C6A69FF656362FFBAB7B5FFB4B0
      AEFFB2AEACFFEFEEEDFF7B7B7BFF141414160000000000000000000000000000
      0000000000000000000014141416B6813FFFEBC993FFDEAA5AFFEBC993FFB681
      3FFF403D3A502C2C2C3AB8823EFFCEB590F6DBA757FFD9A759FFD9A75AFFD9A7
      5AFFD9A75AFFD9A75AFFD9A759FFD9A557FFE8C692FFB7823FFF141414160000
      000000000000000000000000000000000000000000162838C1FF8991DAFF435B
      F4FF465DF1FF475EF1FF475EF1FF475EF1FF475EF1FF455CF1FF3E56F0FF3C55
      F0FFE4E7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E7
      FCFF3C55F0FF3E56F0FF455CF1FF475EF1FF475EF1FF475EF1FF475EF1FF475E
      F2FF4860F5FF414EC5FF2D3DC3FF00000016121212146D6C6CBCBCBCBAFFEBED
      EFFFE6D4BBFFE4AE65FFE4B976FFEAC68DFFECC888FFEECB86FFF1D38FFFF4DA
      95FFF7E19BFFFAE8A2FFFEEFA8FFFDEEA7FFFBE8A2FFF9E39CFFE8B86DFFE5D3
      BAFFEBECEFFFBCBBB9FF6D6C6BBD121212140000000000000000000000000000
      000000000000000000000000000000000000141414167B7B7BFFF2F1F0FFECEC
      EBFFEDEDECFFF5F4F3FF777574FF807C7BFF817D7CFF817D7CFF817D7CFF817D
      7CFF817D7CFF817D7CFF817D7CFF817D7CFF817D7CFF817D7CFF817D7CFF817D
      7CFF817D7CFF817D7CFF817D7CFF817D7CFF807C7BFF777574FFF5F4F3FFEDED
      ECFFECECEBFFF2F1F0FF7B7B7BFF141414160000000000000000000000000000
      0000000000000000000014141416B7813FFFEBC997FFDBA656FFEBC997FFB781
      3FFF39373547B98440FFD1B791F8DBAC62FFD6A355FFD6A457FFD6A457FFD6A4
      57FFD6A457FFD6A457FFD6A456FFD5A253FFE7C695FFB7823FFF141414160000
      000000000000000000000000000000000000000000162738C1FF9097DBFF405A
      F3FF445CF0FF455DF0FF455DF0FF455DF0FF455DF0FF445CF0FF3E57EFFF2D48
      EEFFB6BFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6BF
      FAFF2D48EEFF3E57EFFF445CF0FF455DF0FF455DF0FF455DF0FF455DF0FF455D
      F1FF465FF4FF4452C5FF2D3DC3FF00000016141414167A7875F8DCDBDBFFEBEE
      F2FFE1B883FFE0AB64FFECCA99FFEFD2A3FFEED09BFFEFD194FFF1D28DFFF4DA
      95FFF7E19BFFFAE8A2FFFEEFA9FFFEEFA8FFFAE7A2FFF8E29BFFEECB85FFDFB6
      81FFEBEEF2FFDCDBDBFF7A7875F8141414160000000000000000000000000000
      000000000000000000000000000000000000141414167B7B7BFFD7D5D4FFC8C5
      C4FFC8C6C5FFCECDCCFF969391FF9C9997FF9D9A98FF9D9A98FF9D9A98FF9D9A
      98FF9D9A98FF9D9A98FF9D9A98FF9D9A98FF9D9A98FF9D9A98FF9D9A98FF9D9A
      98FF9D9A98FF9D9A98FF9D9A98FF9D9A98FF9C9997FF969391FFCECDCCFFC8C6
      C5FFC8C5C4FFD7D5D4FF7B7B7BFF141414160000000000000000000000000000
      0000000000000000000014141416B7813EFFEACB9AFFD9A352FFEACB9AFFB781
      3EFF3432303EB98440FFD3BB94F7D9A95EFFD39E50FFD3A052FFD3A053FFD3A0
      53FFD3A053FFD3A053FFD3A052FFD29E4EFFE6C898FFB7823FFF141414160000
      000000000000000000000000000000000000000000162737C1FF969DDEFF3E57
      F1FF425AEFFF435BEFFF435BEFFF435BEFFF425AEFFF3D56EFFF304BEDFFBEC7
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBEC7F9FF304BEDFF3D56EFFF425AEFFF435BEFFF435BEFFF435BEFFF435B
      F0FF435CF3FF4654C7FF2D3DC3FF0000001614141416797775FFF5F5F5FFECF0
      F5FFD8A258FFE0AA63FFF2DBBAFFF0D6ACFFF0D4A4FFF1D59EFFF2D697FFF3D8
      92FFF6DE99FFF9E49EFFFAE8A2FFFAE8A2FFF8E49DFFF7DE99FFF5DA95FFD69F
      55FFECF0F5FFF5F5F5FF797775FF141414160000000000000000000000000000
      000000000000000000000000000000000000141414167B7B7BFFEAE9E8FFCECC
      CBFFCFCDCCFFD5D3D2FF868382FF8C8988FF8E8B8AFF8E8B8AFF8E8B8AFF8E8B
      8AFF8E8B8AFF8E8B8AFF8E8B8AFF8E8B8AFF8E8B8AFF8E8B8AFF8E8B8AFF8E8B
      8AFF8E8B8AFF8E8B8AFF8E8B8AFF8E8B8AFF8C8988FF868382FFD5D3D2FFCFCD
      CCFFCECCCBFFEAE9E8FF7B7B7BFF141414160000000000000000000000000000
      0000000000000000000014141416B7813EFFEBCC9EFFD59F4FFFEBCC9EFFB781
      3EFF393634430909090AB8813EFFD0BC9BF5D09B49FFD09C4CFFD09D4EFFD09D
      4FFFD09D4FFFD09D4FFFD09D4EFFCF9A4AFFE7C89CFFB7823FFF141414160000
      000000000000000000000000000000000000000000162737C1FF9BA3DFFF3A54
      F0FF3F58EEFF4059EEFF4059EEFF3F58EEFF3A54EEFF2D49ECFFBEC6F9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBEC6F9FF2D49ECFF3A54EEFF3F58EEFF4059EEFF4059EEFF4059
      EFFF405AF2FF4A57C7FF2D3DC3FF0000001614141416797775FFF6F6F6FFEFF3
      F8FFD09C55FFDFA962FFF4E1C5FFF1DAB5FFF1D8ADFFF1D7A7FFF2D8A1FFF3D9
      9BFFF4DA94FFF6DE99FFF7E19BFFF7E19BFFF6DE99FFF4DA95FFF3D791FFCE99
      53FFEEF2F8FFF6F6F6FF797775FF141414160000000000000000000000000000
      000000000000000000000000000000000000131313157A7B7BFFF9F9F8FFD3D1
      D0FFD4D2D1FFDCDAD9FF777473FF807B7AFF817C7BFF817C7BFF817C7BFF817C
      7BFF817C7BFF817C7BFF817C7BFF817C7BFF817C7BFF817C7BFF817C7BFF817C
      7BFF817C7BFF817C7BFF817C7BFF817C7BFF807B7AFF777473FFDCDAD9FFD4D2
      D1FFD3D1D0FFF9F9F8FF7A7B7BFF131313150000000000000000000000000000
      0000000000000000000014141416B7813EFFEACDA2FFD39D4BFFEACDA2FFB781
      3EFF3D3B37490404040505050506B7823EFFD3C0A0F5CC9746FFCC9949FFCD9A
      4CFFCD9A4CFFCD9A4CFFCD9A4BFFCB9746FFE6CAA0FFB8823EFF141414160000
      000000000000000000000000000000000000000000162637C1FFA2A8E1FF3752
      EFFF3D56EDFF3E57EDFF3E57EDFF3953EDFF2C47EBFFBDC5F8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E5FDFFE0E5FDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBDC5F8FF2C47EBFF3953EDFF3E57EDFF3E57EDFF3E57
      EDFF3D57F1FF4D5AC8FF2C3CC3FF00000016141414167A7876FFF8F8F8FFF2F5
      FBFFCA9750FFDEA65EFFF7E7D2FFF3DEC0FFF2DBB6FFF2DAAFFFF2D9A8FFF2D9
      A2FFF3D99BFFF3D792FFF4DA95FFF4DA95FFF3D893FFF1D591FFF2D28DFFC994
      4EFFF1F5FAFFF8F8F8FF7A7876FF141414160000000000000000000000000000
      0000000000000000000000000000000000000C0C0C0D7C7C7CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF686666FF6C6A6CFF525455FF515252FF515152FF5151
      52FF515152FF515152FF515152FF515152FF515152FF515152FF515152FF5151
      52FF515152FF515152FF515252FF525455FF6C6A6CFF686666FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7C7C7CFF0C0C0C0D0000000000000000000000000000
      0000000000000000000014141416B7813EFFEACFA5FFD19947FFEACFA5FFB781
      3EFF403D394C040404050000000005050506B7813EFFE5CDA8FFC89341FFC994
      45FFCA9647FFCA9648FFCA9547FFC89242FFE6CCA4FFB8823EFF141414160000
      000000000000000000000000000000000000000000162636C1FFA6ADE2FF344F
      EEFF3A53ECFF3C55ECFF3A53ECFF314CEBFFC3CBF9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE8ECFDFF3049EBFF3049EBFFE8ECFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CBF9FF314CEBFF3A53ECFF3C55ECFF3C55
      EDFF3B55F0FF505CCAFF2C3CC2FF00000016121212147C7A77FFFCFBFBFFF5F8
      FDFFC29049FFDDA35BFFFAEEE0FFF4E4CBFFF3DFBFFFF2DCB7FFF2DAAFFFF2D9
      A8FFF2D8A1FFF2D697FFF1D28DFFF1D38FFFF0D18DFFF0CF8BFFF0CD88FFC18E
      48FFF4F7FDFFFCFBFBFF7C7A77FF121212140000000000000000000000000000
      00000000000000000000000000000000000003030304747474B47C7C7CFF7A7A
      7AFF7A7A7AFF7C7D80FF808387FFC08644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08644FF808387FF7C7D80FF7A7A
      7AFF7A7A7AFF7C7C7CFF747474B4030303040000000000000000000000000000
      0000000000000000000014141416B7813DFFEAD0ABFFCD9542FFEAD0ABFFB781
      3DFF403D394C04040405000000000000000005050506B7813EFFE5CFADFFC58F
      3CFFC69141FFC79343FFC79242FFC58F3DFFE6CDA8FFB8823EFF141414160000
      000000000000000000000000000000000000000000102637C1FFACB3E5FF3651
      ECFF3450EBFF3852EBFF3751EBFF2D49EAFFF2F4FDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9ECFDFF334CEAFF2F4BEAFF2F4BEAFF334CEAFFE9ECFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F4FDFF2D49EAFF3751EBFF3953EBFF3853
      EDFF3952EDFF525ECCFF2C3CC3FF000000100C0C0C0D7E7C79F7E5E4E5FFF8FB
      FFFFCAA674FFD29A53FFF3DCBFFFF8EBDAFFF4E3C9FFF3DFC0FFF2DCB7FFF2DA
      AFFFF1D7A7FFF1D59EFFEFD194FFEECC86FFEDCB87FFEECA86FFDEB56FFFCAA4
      73FFF8FAFFFFE5E4E5FF7E7C79F70C0C0C0D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F1168696CFFBA8342FFFFFFFFFFFFFCF6FFFFFBF4FFFFFB
      F4FFFFFBF4FFFFFBF4FFFFFBF4FFFFFBF4FFFFFBF4FFFFFBF4FFFFFBF4FFFFFB
      F4FFFFFBF4FFFFFBF4FFFFFCF6FFFFFFFFFFBA8342FF68696CFF0F0F0F110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B7813DFFEAD3B0FFCB923EFFEAD3B0FFB781
      3DFF403D394C0404040500000000000000000000000005050506B7813EFFE8D2
      B1FFC28B39FFC38E3EFFC38F3FFFC28B39FFE7D0ADFFB8813DFF141414160000
      000000000000000000000000000000000000000000052735B0EA7B86D8FF9CA5
      E7FF364FEAFF324EEAFF354FEAFF314BE9FF314BE9FFEAECFDFFFFFFFFFFFFFF
      FFFFEAEBFDFF304AE9FF2F4AE9FF354FEAFF354FEAFF2F4AE9FF304AE9FFEAEB
      FDFFFFFFFFFFFFFFFFFFEAECFDFF314BE9FF314CE9FF3650EAFF3550EBFF3751
      EBFF5360D2FF4553C9FF2A38B1EA000000050404040571716FB3C8C7C6FFFCFD
      FFFFDFD0BBFFBD8B46FFE5B67DFFFCF4EBFFF7E9D7FFF4E3C8FFF3DFBFFFF2DB
      B6FFF1D8ADFFF0D4A4FFEED09BFFECC888FFEBC581FFECC580FFC1934FFFDFCF
      BAFFFCFDFFFFC8C7C6FF71716FB3040404050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050505067A7C81FFB88142FFFFFFFFFFFFF7ECFFFFF6EBFFFFF6
      EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6EBFFFFF6
      EBFFFFF6EBFFFFF6EBFFFFF7ECFFFFFFFFFFB88142FF7A7C81FF050505060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B7813DFFECD4B3FFC88F3AFFECD4B3FFB781
      3DFF403D394C040404050000000000000000000000000000000005050506B781
      3EFFE9D6B7FFBE8734FFBF8938FFBE8634FFE7D3B2FFB8813DFF141414160000
      0000000000000000000000000000000000000000000000000005222FACE5828A
      D9FFA3ACE9FF334EEAFF304BE9FF324DE9FF2D48E8FF2E49E8FFF0F2FEFFF0F2
      FEFF2E48E8FF2D48E8FF334DE9FF354FE9FF354FE9FF334DE9FF2D48E8FF2E48
      E8FFF0F2FEFFF0F2FEFF2E49E8FF2D48E8FF334DE9FF334EEAFF344EE9FF5967
      D4FF4A57CAFF2835ADE50000000500000000000000012727262C918F8DFFFFFF
      FFFFFDFFFFFFBC9660FFC7914BFFF2D8BAFFFCF4EBFFF8EBDAFFF5E4CBFFF3DE
      C0FFF1DAB6FFF0D6ACFFEFD2A3FFEDC990FFEABF79FFD0A35FFFBC9461FFFDFF
      FFFFFFFFFFFF918F8DFF2727262C000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B78143FFFFFFFFFFFFF2E3FFFFF2E3FFFFF2
      E3FFFFF2E3FFFFF2E3FFFFF2E3FFFFF2E3FFFFF2E3FFFFF2E3FFFFF2E3FFFFF2
      E3FFFFF2E3FFFFF2E3FFFFF2E3FFFFFFFFFFB78143FF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B7813DFFECD7B7FFC58C36FFECD7B7FFB781
      3DFF403D394C0404040500000000000000000000000000000000000000000505
      0506B8813DFFE9D7BCFFBA822DFFBA812BFFE7D4B7FFB8813DFF141414160000
      000000000000000000000000000000000000000000000000000000000005212F
      ACE58890DBFFAAB1EBFF304BE9FF2C48E8FF2F4AE8FF2A47E7FF3550E8FF3550
      E8FF2A47E7FF304BE8FF324DE8FF324DE8FF324DE8FF324DE8FF304BE8FF2A47
      E7FF3550E8FF3550E8FF2A47E7FF2F4BE8FF304BE9FF314DE9FF5E6CD5FF4F5C
      CBFF2835ACE500000005000000000000000000000000040404057D7B7AD5CACA
      C9FFFFFFFFFFF4F2EFFFAB8042FFC8904AFFE6B77DFFF3DCC0FFFAEFE1FFF7E8
      D2FFF5E2C6FFF3DCBAFFEECB9AFFE8BD79FFCB9D5AFFAB7D43FFF4F2EFFFFFFF
      FFFFCACAC9FF7D7B7AD504040405000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B48145FFFFFFFFFFFFEEDAFFFFEEDAFFFFEE
      DBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEEDBFFFFEE
      DBFFFFEEDBFFFFEEDAFFFFEEDAFFFFFFFFFFB48145FF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000013131315B7813CFFECD9BCFFC1862FFFECD9BCFFB781
      3CFF3E3B37490202020300000000000000000000000000000000000000000000
      000005050506B8813DFFEAD9C0FFB57721FFE8D6BAFFB8813DFF131313150000
      0000000000000000000000000000000000000000000000000000000000000000
      0005212FACE58C95DCFFB1B9EDFF2E49E7FF2A46E7FF2E49E7FF2D49E7FF2D49
      E7FF2F4AE7FF304BE7FF304BE7FF304BE7FF304BE7FF304BE7FF304BE7FF2F4A
      E7FF2D49E7FF2D49E7FF2E49E7FF2D49E8FF304AE7FF6472D7FF545FCCFF2634
      ACE5000000050000000000000000000000000000000000000000121212148C8A
      88FFEDEEEEFFFFFFFFFFF6F3F1FFB48F5BFFB1813DFFCC954EFFE0A45CFFE1A9
      60FFE2AC63FFE4AD65FFD09E5AFFB38543FFB48F5CFFF6F3F1FFFFFFFFFFEDEE
      EEFF8C8A88FF1212121400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B38046FFFFFFFFFFFFEBD2FFFFEBD3FFFFEB
      D4FFFFEBD4FFFFEBD4FFFFEBD4FFFFEBD4FFFFEBD4FFFFEBD4FFFFEBD4FFFFEB
      D4FFFFEBD4FFFFEBD3FFFFEBD2FFFFFFFFFFB38046FF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C0DB8823EFFF0DFC6FFEEDDC3FFF0DFC6FFB882
      3EFF3D3936450000000100000000000000000000000000000000000000000000
      00000000000005050506B8813CFFE7D6BBFFEADBC1FFB8823EFF0C0C0C0D0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005212EAAE5939ADFFFB9BFEEFF2C47E6FF2844E6FF2C48E6FF2E49
      E6FF2E49E6FF2E49E6FF2E49E6FF2E49E6FF2E49E6FF2E49E6FF2E49E6FF2E49
      E6FF2E49E6FF2D48E6FF2B47E7FF2D48E7FF6977D9FF5764CDFF2533ACE50000
      0005000000000000000000000000000000000000000000000000000000014241
      414F8C8988FFF0F0F0FFFFFFFFFFFFFFFFFFDFD1BDFFBB9A6BFFA27334FFA374
      36FFA37436FFA27334FFBB9A6BFFDFD0BDFFFFFFFFFFFFFFFFFFF0F0F0FF8C89
      88FF4241414F0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B38046FFFFFFFFFFFFE6C9FFFFE7CBFFFFE7
      CCFFFFE7CCFFFFE7CCFFFFE7CCFFFFE7CCFFFFE7CCFFFFE7CCFFFFE7CCFFFFE7
      CCFFFFE7CCFFFFE7CBFFFFE6C9FFFFFFFFFFB38046FF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030303048E7655B4B8823DFFB7813CFFB8823DFF9A7B
      53C6050505060000000000000000000000000000000000000000000000000000
      0000000000000000000005050506B8823FFFB8823EFF8E7655B4030303040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000005202EAAE599A0E0FFBDC3F0FF2A44E5FF2542E5FF2945
      E5FF2945E5FF2946E5FF2946E5FF2946E5FF2946E5FF2946E5FF2946E5FF2A46
      E5FF2946E5FF2844E6FF2A45E6FF6E7BDAFF5C68CFFF2533ACE5000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      00014040404C858281FFD0CFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCFFF858281FF4040
      404C000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014141416B38046FFFFFFFFFFFFE1BFFFFFE2C2FFFFE2
      C3FFFFE2C3FFFFE2C3FFFFE2C3FFFFE2C3FFFFE2C3FFFFE2C3FFFFE2C3FFFFE2
      C3FFFFE2C3FFFFE2C2FFFFE1BFFFFFFFFFFFB38046FF14141416000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005202EAAE599A0E0FFB8BEEFFF2541E4FF1E3C
      E4FF203DE4FF203EE4FF213EE4FF213FE4FF213FE5FF223FE5FF2240E5FF2340
      E5FF2240E5FF2643E5FF7380DCFF5F6BD0FF2533ACE500000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F10827F7ED3959492FFD1D0CFFFF2F2F3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2F2F3FFD1D0CFFF959492FF827F7ED30F0F0F100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000013131315B38147FFFFFFFFFFFFDEB6FFFFDEB7FFFFDE
      B8FFFFDEB8FFFFDEB8FFFFDEB8FFFFDEB8FFFFDEB8FFFFDEB8FFFFDEB8FFFFDE
      B8FFFFDEB8FFFFDEB7FFFFDEB6FFFFFFFFFFB38147FF13131315000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000005212EAAE5949DE0FFBDC3EEFFA2AC
      EBFF9FA8EAFF9AA5E8FF95A0E7FF919BE6FF8D98E5FF8893E2FF838EE3FF7D8B
      E1FF7885DFFF808BDDFF636FD1FF2532ACE50000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000131313138767474AD878583F6878583FF8785
      82FF878582FF878583FF878583F6767474AC1F1F1F2200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C0DB5834BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5834BFF0C0C0C0D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000052433B0E92636C1FF2636
      C0FF2737C1FF2737C1FF2838C1FF2838C1FF2839C1FF2939C1FF2939C1FF2939
      C1FF2A3AC1FF2A3AC2FF2836B0E9000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030303048E785DB4B5834AFFB38147FFB38047FFB380
      47FFB38047FFB38047FFB38047FFB38047FFB38047FFB38047FFB38047FFB380
      47FFB38047FFB38047FFB38147FFB5834AFF8E785DB403030304000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      0009000000110000001500000016000000160000001600000016000000150000
      0011000000090000000300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060000000F0000000D0000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000050000000F00000015000000160000001600000016000000150000
      000F000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000006000000100000001B0000
      0029000000380000004100000043000000430000004300000043000000410000
      0038000000290000001B00000010000000060000000100000000000000000000
      0000000000000000000000000000000000000000000E000000280000002D0000
      001D0000000F0000000600000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005000000190000003300000041000000430000004300000043000000410000
      003300000019000000090000000B000000110000001500000016000000160000
      00160000001600000016000000160000001600000015000000110000000B0000
      0004000000010000000000000000000000000000000000000000000000050000
      0010000000160000001600000016000000160000001600000016000000110000
      000800000004000000050000000B000000130000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      00150000000D0000000400000000000000000000000000000000000000000000
      00000000000000000000000000030000000D00000020000000350005024C003C
      1F9900713CDE008C49FF008B49FF008B49FF008B49FF008B49FF008C49FF0071
      3CDE003C1F990005024C00000035000000200000000D00000003000000000000
      0000000000000000000000000000000000000000000C6D7E87FF345368B60205
      084C000000340000002300000014000000090000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      001500000037727272E1878787FF898989FF8A8A8AFF888989FF8A8A8AFF7373
      73E10000003B000000290000002C000000390000004000000042000000430000
      00430000004300000043000000430000004200000040000000390000002C0000
      001E0000001000000005000000000000000000000000000000050000001A0000
      00350000004200000043000000430000004300000043000000430000003A0000
      00270000001E000000210000002D0000003C0000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      003F0000002E0000001500000004000000000000000000000000000000000000
      00000000000000000005000000160000002E0010095A00733DDF008D4CFF009A
      5DFF00A268FF00AA73FF00AC76FF00AC76FF00AC76FF00AC76FF00AA73FF00A2
      68FF009A5DFF008D4CFF00733DDF0010095A0000002E00000016000000050000
      00000000000000000000000000000000000000000003344F5D945B4A41FF5170
      85FF30668CD007151D6C0000003C000000290000001500000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B0000
      002C797A7AEDB6B4B3FFDAD8D6FFD9D7D5FFC7C5C3FFB1AEABFFB4B0AEFFA3A1
      9FFF7A7A7AE9101212672E2E2EA64E4E4EDE565757F8525151FF8E8E8FFF8B8B
      8BFF8A8B8BFF8A8A8AFF898989FF888888FF818282F86D6D6DDE444445A71010
      105C000000350000001B0000000600000000000000000000001000000035A876
      15F0B68115FFB68115FFB58012FFB37905FFD9D2D2FFD7CDC5FFD8CDC3FF2929
      276930302E6A2E2E2C6A5D4F3596D9CFC8FFD7CCC4FFD7CCC3FFD7CCC3FFD7CC
      C3FFD7CCC3FFD7CCC3FFD7CCC5FFD9D2D2FFB37905FFB58012FFB68115FFB681
      15FF7C5710C50000002E0000000D000000000000000000000000000000000000
      000000000005000000190000003800512BB4008D4CFF00A066FF00B07BFF1FBD
      90FF3DCCA5FF56D8B6FF5CDBBAFF5CDBB9FF5CDBB9FF5CDBB9FF56D8B6FF3DCC
      A5FF1FBD90FF00B07BFF00A066FF008D4CFF00512BB400000038000000190000
      00050000000000000000000000000000000000000000030607185D7E91FF5D70
      79FF89D7FFFF5FA7D7FF236092F9091D2F8A0000003A0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000174646
      46A0AAA9A8FFD5D3D1FFD2D0CEFFD1CFCDFFD3D1CFFFBDBBB9FFAFACAAFFB3B0
      ADFF9D9D9BFF757676FF6F6E6EFF888886FF8A8887FF959390FFBDBAB9FFA4A2
      A0FFA19D9BFFAEABA9FFBBB7B5FFC6C5C3FFC8C7C5FFC3C2C1FFADADACFF8B8C
      8CFF717171E00707074200000011000000000000000000000016A87615EFF6CD
      89FFF3C883FFF2C782FFF2C680FFF0C172FFFFFFFFFFFFF3E9FFFFFFFFFF5252
      51FF877D77FF877E78FF827975FFFFFFFFFFFFF2E8FFFFF1E7FFFFF1E7FFFFF1
      E7FFFFF1E7FFFFF1E7FFFFF1E9FFFFFFFFFFF0C172FFF2C680FFF2C782FFF3C8
      83FFF6CD89FF7B570FC100000015000000000000000000000000000000000000
      0005000000190000003A007C42ED009557FF00AA73FF2AC499FF56D8B6FF3DDA
      B0FF1DD8A4FF04D79CFF00D797FF00D797FF00D797FF00D797FF04D79CFF1DD8
      A4FF3DDAAFFF56D8B6FF2AC498FF00AA73FF009557FF007C42ED0000003A0000
      0019000000050000000000000000000000000000000000000006346786B18FE1
      FFFF84D3FCFF81CCF9FF7CC2F3FF4D97CFFF3A6D9EFF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008000000258787
      87FFCFCECBFFCFCECCFFCECDCBFFCECDCBFFCECDCBFFCECCCAFFB1ADABFFB3B0
      ADFFB3B0AFFF8A8B8BFF959392FF9F9D9CFF908E8DFFA7A5A4FFBAB7B6FFA2A0
      9EFFA09D9BFFADAAA8FFB8B5B3FFC3C2C0FFCECDCBFFDBDAD8FFDCDBD9FFC9C8
      C4FF9C9B9CFF898989FE00000016000000000000000000000016B68115FFF3C9
      85FFEEC175FFEDC075FFECBF72FFEBBA67FFFFFFFFFFFBEEE3FFFFFFFEFF5655
      54FF8D847BFF8C837BFF847A73FFFFFFFDFFFBEEE2FFFAEDE1FFFAEDE1FFFAED
      E1FFFAEDE1FFFAECE1FFF9ECE2FFFFFFFFFFEBBA67FFECBF72FFEDC075FFEEC1
      75FFF3C985FFB68115FF00000016000000000000000000000000000000030000
      001600000038007C41EB009E63FF06B27EFF4AD3AEFF43DAB1FF04D79CFF00D6
      98FF00D598FF00D598FF00D599FF00D599FF00D599FF00D599FF00D598FF00D5
      98FF00D698FF04D79CFF43DAB0FF4AD3AEFF06B27EFF009E63FF007C41EB0000
      00380000001600000003000000000000000000000000000000010A1922426ABA
      E2FF8CD8FEFFA1DAF9FF7EC8F4FF59B5FBFF159CFFFF3D6D9BFF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E3030317C9E9E
      9DFFD0CFCCFFCDCCCAFFBFBEBBFFA7A5A3FFCCCCCAFFCCCBC9FFBDBBB9FFB5B2
      AFFFB7B4B2FF979696FF939190FFA09F9DFF918F8EFF8B8988FFB9B6B5FF7674
      72FFA19E9CFF7E7D7BFFB9B6B4FF8F8E8CFFCECDCBFFDAD9D7FFD9D8D6FFC8C8
      C4FFBDBAB7FF89898AFF00000016000000000000000000000016B68115FFF1C9
      85FFECBD6FFFEBBD6FFFEBBC6DFFE9B762FFFEFFFFFFF9EADEFFFFFFFEFF5352
      52FF8C837AFF8B8179FF827871FFFFFFFCFFF9EADEFFF7E9DEFFF7E9DEFFF7E9
      DEFFF7E9DEFFF7E9DEFFF7E8DEFFFEFFFFFFE9B762FFEBBC6DFFEBBD6FFFECBD
      6FFFF1C985FFB68115FF000000160000000000000000000000010000000D0000
      002E007D42EC009E63FF0BB583FF56D8B7FF23D7A7FF00D597FF00D498FF00D4
      99FF00D499FF00D499FF00D498FF00D397FF00D397FF00D498FF00D499FF00D4
      99FF00D499FF00D498FF00D598FF23D7A6FF56D8B6FF0BB583FF009E63FF007D
      42EC0000002E0000000D00000001000000000000000000000000000000092C6B
      98E79FE0FCFFF3FDFFFF8ACFFAFF1095FFFF1797FFFF199DFFFF3D6D9AFF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000013595959BCB4B3
      B1FFCDCBC9FFCDCBC9FFACAAA8FFA6A4A2FFCBC9C7FFC9C7C5FFC4C2C0FFBAB7
      B5FFB8B5B2FFA7A6A4FF90908FFF777674FF92908FFFD0CECDFFB8B5B4FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECBFFA09F9FFFDAD9D7FFC9C8
      C4FFBCBAB6FF888989FF00000016000000000000000000000016B68115FFF1C9
      86FFEABB6BFFEABB6BFFEABA69FFE8B55DFFFDFEFFFFF7E8DBFFFFFFFCFF504F
      4FFF898077FF897D76FF80746DFFFFFFFAFFF7E8DBFFF5E7DBFFF5E7DBFFF5E7
      DBFFF5E7DBFFF5E7DBFFF5E7DBFFFDFEFFFFE8B55DFFEABA69FFEABB6BFFEABB
      6BFFF1C986FFB68115FF000000160000000000000000000000060000001F0050
      2AB0009557FF06B17EFF56D8B7FF1DD6A4FF00D397FF00D399FF00D399FF00D3
      99FF00D399FF00D297FF00D093FF00CF90FF00CF90FF00D093FF00D297FF00D3
      99FF00D399FF00D399FF00D399FF00D398FF1DD6A4FF56D8B6FF06B17EFF0095
      57FF00502AB00000001F00000006000000000000000000000000000000021029
      3A675EB4DEFF99DFFFFFDAF0FFFF60BCFFFF1698FFFF1998FFFF199DFFFF3D6D
      9AFF0000003D0000001C00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016777777E8C0BF
      BCFFCBC9C7FF8C8A88FF8E8C8AFFA4A29EFFC9C7C5FFC7C5C3FFC6C4C2FFBFBD
      BBFFB8B5B3FFB3B0AEFF8C8C8DFFA5A4A2FFA8A6A5FF979796FFB8B5B4FF7674
      72FFA19E9CFF807D7BFFB9B6B4FF8F8F8DFFCFCECBFFDCDBD9FFDAD9D7FF9493
      91FFBDBAB7FF888989FF00000016000000000000000000000016B68115FFF3C9
      88FFEBB966FFEAB967FFEAB865FFE8B359FFFCFDFFFFF3E4D8FFFFFFFBFF4C4B
      4CFF877C74FF857B73FF7C716AFFFFFEF9FFF3E4D8FFF2E4D8FFF2E4D8FFF2E4
      D8FFF2E4D8FFF2E4D8FFF1E3D8FFFDFDFFFFE8B359FFEAB865FFEAB967FFEBB9
      66FFF3C988FFB68115FF000000160000000000000000000000100010084C008D
      4CFF00AA72FF4AD3AFFF23D6A7FF00D397FF00D399FF00D399FF00D399FF00D3
      99FF00D398FF00D093FFB0F1E0FFFFFFFFFFFFFFFFFFB0F1E0FF00D093FF00D3
      98FF00D399FF00D399FF00D399FF00D399FF00D397FF23D6A6FF4AD3AEFF00AA
      73FF008D4CFF0010084C00000010000000000000000000000000000000000000
      0006347DCAFF47CEFFFF75D2FFFFDEF2FFFF62BDFFFF1698FFFF1998FFFF199D
      FFFF3D6D9AFF0000003D0000001C000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFCBC8
      C6FFC8C6C4FF9C9A99FFCCCAC8FF9F9C9AFFC7C5C3FFC4C2C0FFC4C2C0FFC8C5
      C4FFBAB7B5FFBFBCB9FF878788FF7A7776FFBCBBB8FFCDCBCAFFB7B4B3FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECCFFA1A09FFFDBDAD8FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68115FFF1CB
      8AFFE9B762FFE9B763FFE9B661FFE7B155FFFCFCFFFFF1E2D6FFFFFFF8FF4746
      47FF827770FF817770FF776D66FFFFFDF7FFF1E2D6FFF0E2D6FFF0E2D6FFF0E2
      D6FFF0E2D6FFF0E2D6FFEFE1D6FFFCFCFFFFE7B155FFE9B661FFE9B763FFE9B7
      62FFF1CB8AFFB68115FF0000001600000000000000030000001B00723EDD00A0
      66FF2AC599FF43D9B2FF00D297FF00D299FF00D299FF00D299FF00D299FF00D2
      99FF00D197FF00CE90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CE90FF00D1
      97FF00D299FF00D299FF00D299FF00D299FF00D299FF00D297FF43D9B0FF2AC5
      98FF00A066FF00723EDD0000001B000000030000000000000000000000000000
      000000000006357BC6FF49CEFFFF75D2FFFFDEF2FFFF62BDFFFF1698FFFF1998
      FFFF199DFFFF3D6D9AFF0000003D0000001C0000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016878888FFC8C6
      C3FFC5C2C0FFACABAAFFC7C5C3FF999694FFC5C3C1FFC2C0BEFFC1BFBDFFCCCA
      CAFFBBBAB7FFC1BFBCFF868787FFA9A6A5FFCFCECCFF949493FFB7B4B3FF7674
      72FFA19E9CFF807D7BFFB9B6B4FF8F8F8DFFCFCECBFFDCDBD9FFDAD9D7FF9494
      92FFBDBBB7FF888989FF00000016000000000000000000000016B68115FFF2CB
      8BFFE8B55DFFE8B55EFFE8B45DFFE6AF51FFFCFCFFFFEEDED3FFFCF1E9FF8780
      7AFF414345FF404245FF837D79FFFCF1E9FFEFDFD3FFEEDED2FFEEDFD3FFEEDF
      D3FFEEDFD3FFEEDED2FFEDDED2FFFCFCFFFFE6AF51FFE8B45DFFE8B55EFFE8B5
      5DFFF2CB8BFFB68115FF00000016000000000000000900060232008D4CFF00B0
      7BFF56D8B8FF04D39CFF00D198FF00D199FF00D199FF00D199FF00D199FF00D1
      99FF00D097FF00CC8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CC8EFF00D0
      97FF00D199FF00D199FF00D199FF00D199FF00D199FF00D198FF04D39CFF56D8
      B6FF00B07BFF008D4CFF00060232000000090000000000000000000000000000
      00000000000000000006357BC6FF49CEFFFF75D2FFFFDEF2FFFF62BDFFFF1698
      FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000001C00000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFC5C3
      C1FFC1BFBDFFBDBCBBFFC3C1BFFF969292FFC3C1BFFFC0BEBCFFBFBDBAFFD2D0
      CFFFBDBBB9FFC3C1BEFF858686FF7B7978FFE1E0DFFFCAC8C7FFB7B4B3FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECCFFA1A09FFFDBDAD8FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68115FFF3CB
      8EFFE7B25AFFE7B35CFFE7B25AFFE6AE4FFFFBFCFFFFE9DCD1FFEDDED1FFF3E3
      D6FFF7E8DAFFF7E8DAFFF2E3D6FFEDDED1FFEADCCFFFE9DCCFFFE9DCCFFFE9DC
      CFFFE9DCCFFFE9DBCFFFE9DCD1FFFBFDFFFFE6AE4FFFE7B25AFFE7B35CFFE7B2
      5AFFF3CB8EFFB68115FF000000160000000000000011003C218D009A5DFF1FBD
      91FF3DD8B1FF00D097FF00D099FF00D099FF00D099FF00D099FF00D099FF00D0
      99FF00CF97FF00CB8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CB8EFF00CF
      97FF00D099FF00D099FF00D099FF00D099FF00D099FF00D099FF00D098FF3DD8
      AFFF1FBD90FF009A5DFF003C218D000000110000000000000000000000000000
      0000000000000000000000000006357BC6FF49CEFFFF75D2FFFFDEF2FFFF62BD
      FFFF1698FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFC3C0
      BDFFBEBBB8FFCDCCCCFFC0BDBBFF928F8DFFC1BEBCFFBEBBB9FFBCB9B7FFD9D7
      D6FFBFBDBBFFC5C3C0FF848485FFBFBEBBFFDFDEDDFF939291FFB7B4B3FF7674
      72FFA19E9CFF807D7BFFB9B6B4FF8F8F8DFFCFCECBFFDCDBD9FFDAD9D7FF9494
      92FFBDBBB7FF888989FF00000016000000000000000000000016B68115FFF3CC
      8FFFE7B055FFE7B157FFE7B157FFE7AE50FFE7CCA6FFFAFCFFFFFAFAFFFFFBFB
      FFFFFCFCFFFFFCFCFFFFFBFBFFFFFAFAFFFFFAFAFFFFFAFAFFFFFAFAFFFFFAFA
      FFFFFAFAFFFFFAFAFFFFFAFCFFFFE7CCA6FFE7AE50FFE7B157FFE7B157FFE7B0
      55FFF3CC8FFFB68115FF00000016000000000000001500713CDA00A267FF3CCC
      A7FF1DD4A5FF00D098FF00D099FF00D099FF00D098FF00CF97FF00CF97FF00CF
      97FF00CE96FF00CB8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CB8DFF00CE
      96FF00CF97FF00CF97FF00CF97FF00D098FF00D099FF00D099FF00D098FF1DD4
      A4FF3DCDA5FF00A268FF00713CDA000000150000000000000000000000000000
      000000000000000000000000000000000006357BC6FF49CEFFFF75D2FFFFDEF2
      FFFF62BDFFFF1698FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016888888FFC1BD
      BBFFBAB7B5FFDEDEDDFFBCB9B7FF8E8B89FFBFBCBAFFBCB9B7FFB9B6B4FFDDDD
      DCFFC1BFBDFFC7C4C2FF838384FF9A9998FFDEDDDCFFC9C7C6FFB7B4B3FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECCFFA1A09FFFDBDAD8FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68114FFF3CE
      92FFE6AE51FFE6AF53FFE6AF54FFE6AE51FFE5AC4CFFE5AA47FFE4A945FFE4A9
      45FFE4A945FFE4A945FFE4A945FFE4A945FFE4A945FFE4A945FFE4A945FFE4A9
      45FFE4A945FFE4A945FFE5AA47FFE5AC4CFFE6AE51FFE6AF54FFE6AF53FFE6AE
      51FFF3CE92FFB68114FF000000160000000000000016008C49FF00AA73FF58DB
      BBFF04D09BFF00CF98FF00CF99FF00CE97FF00CC93FF00CA90FF00CA8EFF00CA
      8EFF00C98DFF00C686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C686FF00C9
      8DFF00CA8EFF00CA8EFF00CA90FF00CC93FF00CE97FF00CF99FF00CF98FF04D1
      9CFF55D9B6FF00AA73FF008C49FF000000160000000000000000000000000000
      00000000000000000000000000000000000000000006357BC6FF49CEFFFF75D2
      FFFFDEF2FFFF62BDFFFF1698FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000013888989FFBDBB
      B9FFB6B4B2FFEFEEEFFFB6B4B2FF8E8C8AFFBBB9B7FFB9B7B5FFB5B3B1FFE3E3
      E2FFC4C2C0FFCAC8C6FF808181FFE3E2E0FFDDDCDBFF929190FFB7B4B3FF7674
      72FFA19E9CFF807D7BFFB9B6B4FF8F8F8DFFCFCECBFFDCDBD9FFDAD9D7FF9494
      92FFBDBBB7FF888989FF00000016000000000000000000000016B68114FFF3CF
      95FFE5AB4CFFE5AD4FFFE5AD50FFE5AC4EFFE5AB4DFFE4AB4BFFE4AB4BFFE4AB
      4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB4BFFE4AB
      4BFFE4AB4BFFE4AB4BFFE4AB4BFFE5AB4DFFE5AC4EFFE5AD50FFE5AD4FFFE5AB
      4CFFF3CF95FFB68114FF000000160000000000000016008B49FF00AB75FF63E2
      C4FF00CD97FF00CE98FF00CE98FF00CB93FFB0F0E0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0F0E0FF00CB93FF00CE98FF00CE99FF00CE
      97FF5CDCBAFF00AC76FF008B49FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000006357BC6FF49CE
      FFFF75D2FFFFDEF2FFFF62BDFFFF1698FFFF1998FFFF199DFFFF3D6D9AFF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E787979E6B1AF
      AEFFB5B3B1FFECEBE9FFEEEDEBFFAFACAAFFB7B6B4FFB6B4B2FFBDBBB9FFE2E1
      E0FFC7C5C3FFBDBBB9FF959494FFB4B3B3FFDCDBDAFFC9C7C6FFB7B4B3FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECCFFA1A09FFFDBDAD8FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68114FFF3D1
      98FFE4A947FFE4AA4AFFE3A949FFE2A642FFE1A43DFFE1A33BFFE1A33BFFE1A3
      3BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A33BFFE1A3
      3BFFE1A33BFFE1A33BFFE1A33BFFE1A43DFFE2A642FFE3A949FFE4AA4AFFE4A9
      47FFF3D198FFB68114FF000000160000000000000016008B48FF02B07CFF66E5
      C7FF00CC96FF00CD98FF00CC97FF00C890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C890FF00CC97FF00CD99FF00CD
      97FF5CDCBAFF00AC76FF008B49FF000000160000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000006357B
      C6FF49CEFFFF76D3FFFFDEF2FFFF62BDFFFF1698FFFF1998FFFF199DFFFF3D6D
      9AFF0000003D0000001C00000006000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000085A5A5AB4A7A5
      A4FFB5B2B0FFC3C1BFFFC3C1BFFFB8B6B4FFB5B1AFFFB3AFADFFC8C5C4FFE0DF
      DDFFCAC8C6FFB0AFAEFFA7A6A6FFF1F0EFFFDBDAD9FF929190FFB7B4B3FF7674
      72FFA19E9CFF807D7BFFB9B6B4FF8F8F8DFFCFCECBFFDCDBD9FFDAD9D7FF9494
      92FFBDBBB7FF888989FF00000016000000000000000000000016B68114FFF3D1
      9BFFE3A743FFE3A846FFE1A43EFFF6DEBAFFFFFFFFFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
      FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFFFFFFF6DEBAFFE1A43EFFE3A846FFE3A7
      43FFF3D19BFFB68114FF000000160000000000000016008A47FF0FB686FF6AEA
      CBFF00CB96FF00CD98FF00CD97FF00C890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C890FF00CD97FF00CD99FF00CD
      97FF5CDCBAFF00AC76FF008B49FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006357CC6FF41B8F5FF76D3FFFFDFF2FFFF62BDFFFF1698FFFF1998FFFF199D
      FFFF3D6D9AFF0000003D0000001C000000060000000000000000000000000000
      00000000000000000000000000000000000000000000000000023030306A9796
      95FFB6B2B0FFB2AFADFFB1AEACFFB2AFADFFB2AFADFFAFABA9FFDEDDDCFFD6D5
      D4FFCECCCAFF989897FFC0BEBDFFB0AFB0FFDBDAD9FFC9C7C6FFB7B4B3FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECCFFA1A09FFFDBDAD8FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68114FFF3D4
      9FFFE3A63EFFE3A641FFE1A134FFFFFFFFFFFFF9F2FFFFF8EFFFFFF8EFFFFFF7
      EFFFFFF7EEFFFFF8EFFFFFF8EFFFFFF8EFFFFFF7EFFFFFF7EEFFFFF8EFFFFFF8
      EFFFFFF8EFFFFFF8EFFFFFF7EFFFFFF8F2FFFFFFFFFFE1A134FFE3A641FFE3A6
      3EFFF3D49FFFB68114FF000000160000000000000015008A47FF1EBC8FFF6EED
      CFFF00CA95FF00CC98FF00CC98FF00C993FFB0F0E0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0F0E0FF00C993FF00CC98FF00CC99FF00CC
      97FF5CDCBAFF00AC76FF008B49FF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006357CC6FF42B8F5FF76D3FFFFDFF2FFFF62BDFFFF1698FFFF1998
      FFFF199DFFFF3D6D9AFF0000003D0000001C0000000600000000000000000000
      00000000000000000000000000000000000000000000000000000000000B8989
      8AFFB3AFADFFB2AFADFFB1AEACFFB1ADABFFAEABA9FFAFACAAFFF7F7F7FFCDCC
      CAFFCECDCAFF818080FFE1E0DFFFEEEDECFFDBDAD9FF929190FFB7B4B3FF7674
      72FFA19E9CFF807D7BFFB9B6B4FF8F8F8DFFCFCECBFFDCDBD9FFDAD9D7FF9494
      92FFBDBBB7FF888989FF00000016000000000000000000000016B68114FFF5D5
      A2FFE2A33AFFE1A43CFFDF9E2FFFFEFCFCFFFEF7EFFFFFFAEFFFFFFAEFFFFFF9
      EEFFFFF8EEFFFFFBF1FFFFFCF2FFFFFBF0FFFFF9EEFFFFF8EDFFFFFAEFFFFFFB
      F0FFFFFAEFFFFFFAEFFFFFF8EEFFFEF6EEFFFEFBFBFFDF9E2FFFE1A43CFFE2A3
      3AFFF5D5A2FFB68114FF000000160000000000000011008A47FF27BF93FF6EEE
      D0FF04CD9CFF00CA97FF00CB99FF00CA97FF00C893FF00C690FF00C68EFF00C6
      8EFF00C58DFF00C286FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C286FF00C5
      8DFF00C68EFF00C68EFF00C690FF00C893FF00CA97FF00CB99FF00CB98FF04CC
      9CFF55D9B6FF00AA73FF008C49FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006357CC6FF41B8F5FF76D3FFFFDEF2FFFF62BDFFFF1698
      FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000001C00000006000000000000
      0000000000000000000000000000000000000000000000000000000000034646
      468B9C9B9AFFB3B0AEFFB1AEACFFAFACAAFFABA8A6FFDBDAD9FFE5E4E3FFD3D2
      D0FFA6A5A4FFA9A9A8FFE0DFDEFFAEADADFFDBDAD9FFC9C7C6FFB7B4B3FFA3A1
      9FFFA19E9CFFAEABA9FFB9B6B4FFC3C3C1FFCFCECCFFA1A09FFFDBDAD8FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68113FFF5D6
      A6FFE1A135FFE0A238FFDE9C2AFFFCFBFBFFFFF9F0FF4D4F52FF909294FF8D8F
      91FFFFFBF1FF505154FF525456FF919395FF8D8F91FFFFFBF0FF4E5052FF9192
      95FF909294FF8F9193FF8C8D90FFFDF7EEFFFCFBFBFFDE9C2AFFE0A238FFE1A1
      35FFF5D6A6FFB68113FF00000016000000000000000900703AD625B484FF63E6
      C6FF22D6ABFF00C896FF00CA99FF00CA99FF00CA98FF00C997FF00C997FF00C9
      97FF00C896FF00C48DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C48DFF00C8
      96FF00C997FF00C997FF00C997FF00CA98FF00CA99FF00CA99FF00CA98FF1DD1
      A4FF3DCDA5FF00A268FF00713BD6000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000006357CC6FF49CEFFFF76D2FFFFDEF2FFFF62BD
      FFFF1698FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000001C000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      00057C7C7DE8A2A09FFFB4B1AFFFB2AEACFFD9D7D6FFF5F4F4FFD8D7D5FFB3B2
      B1FF8D8C8DFF979794FFDFDEDDFFEDECEBFFDBDAD9FF929190FFB7B4B3FF7674
      72FFA19E9CFF7E7D7BFFB9B6B4FF8F8E8CFFCFCECBFFDCDBD9FFDAD9D7FF9494
      92FFBDBBB7FF888989FF00000016000000000000000000000016B68013FFF6D9
      ABFFDF9F30FFDFA034FFDD9A26FFFBFAFAFFFCF6EDFFFFFAEFFFFFFAEFFFFFF8
      EDFFFFF7EDFFFFFAF0FFFFFCF1FFFFFAEFFFFFF8EDFFFEF7ECFFFFFAEFFFFFFA
      F0FFFFFAEFFFFFF9EEFFFFF7ECFFFBF5ECFFFBFAFAFFDD9A26FFDFA034FFDF9F
      30FFF6D9ABFFB68013FF000000160000000000000003003B1F7C1AA771FF5CDE
      BEFF4CE6C3FF00C795FF00CA98FF00CA99FF00CA99FF00CA99FF00CA99FF00CA
      99FF00C997FF00C48EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C48EFF00C9
      97FF00CA99FF00CA99FF00CA99FF00CA99FF00CA99FF00CA99FF00CA97FF3DD6
      B0FF1FBE91FF009A5DFF003B207C000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000006357BC6FF49CEFFFF75D2FFFFDEF2
      FFFF62BDFFFF1698FFFF1998FFFF199DFFFF3D6D9AFF0000003D0000001C0000
      0006000000000000000000000000000000000000000000000000000000000000
      000000000005747474D78C8C8DFF8B8B8BFF868687FF8A8A8AFF8B8B8BFF8585
      85FFB7B5B3FFCDCBC9FFDEDDDCFFADACADFFD9D8D7FFC7C5C4FFB6B2B1FFA1A0
      9EFFA09D9BFFACA9A7FFB8B5B3FFC2C1BFFFCECDCBFFA09F9FFFDAD9D7FFCAC9
      C6FFBDBAB7FF888989FF00000016000000000000000000000016B68013FFF6DC
      B1FFDF9C2CFFDF9E2FFFDE9821FFF9F8F8FFFAF4EBFFFFF8EDFFFFFAEEFFFFF8
      EDFFFEF7ECFFFFF7ECFFFFF7ECFFFEF7ECFFFDF5EBFFFCF5EAFFFFF8EDFFFFFA
      EEFFFFF8EDFFFEF7ECFFFCF5EAFFF9F2EAFFF9F8F8FFDE9821FFDF9E2FFFDF9C
      2CFFF6DCB1FFB68013FF0000001600000000000000000005021A008C4AFF5CDA
      BAFF76F6DAFF02CB9BFF00C797FF00C999FF00C999FF00C999FF00C999FF00C9
      99FF00C897FF00C38EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C38EFF00C8
      97FF00C999FF00C999FF00C999FF00C999FF00C999FF00C998FF04CB9CFF56D9
      B7FF00B07BFF008D4CFF0005021A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000006357BC6FF49CEFFFF75D2
      FFFFDEF2FFFF62BDFFFF1698FFFF1998FFFF199EFFFF3C6D9CFF0000003D0000
      001C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168888
      88FFBBB8B5FF959492FFDDDCDBFFEAEAE8FFD8D7D6FFC5C3C2FFB4B0AFFF9F9D
      9BFF9D9A98FFAAA7A5FFB6B2B0FFC0BFBDFFCCCBC9FFD9D8D6FFD9D8D6FF9493
      91FFBDBAB7FF888989FF00000016000000000000000000000016B68013FFF8DD
      B4FFDE9A28FFDE9C2CFFDD961EFFF7F7F8FFFAF5ECFF505255FF545557FF9394
      96FF919295FF919294FF919294FF909294FF8E8F92FFFEF7ECFF515255FF5455
      57FF939496FF909294FF8D8F91FFF8F3EAFFF7F7F7FFDD961EFFDE9C2CFFDE9A
      28FFF8DDB4FFB68013FF00000016000000000000000000000006007039D63DBD
      91FF74EDD1FF58ECCAFF00C494FF00C797FF00C899FF00C899FF00C899FF00C8
      99FF00C797FF00C390FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C390FF00C7
      97FF00C899FF00C899FF00C899FF00C899FF00C899FF00C797FF43D7B2FF2AC5
      99FF00A166FF00723DD600000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006357BC6FF49CE
      FFFF75D2FFFFDEF2FFFF62BDFFFF1698FFFF1899FFFF159EFFFF326EA6FF0000
      003D0000001C0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168888
      89FFBAB7B4FFCAC8C6FFDBDADAFFE9E8E8FFD6D5D5FFC2C1C1FFB0ADADFF9A99
      98FF989595FFA5A3A1FFB2AFAEFFBDBCBBFFC9C9C8FFD7D7D5FFD7D7D5FFC8C7
      C4FFBBB9B6FF888889FF00000016000000000000000000000016B68012FFF8E0
      BBFFDD9723FFDE9A28FFDC941AFFF6F5F5FFF7F1E8FFFCF5EAFFFFF7ECFFFDF5
      EAFFFCF4E9FFFBF4E8FFFBF4E8FFFBF4E8FFFAF2E8FFF9F2E7FFFCF5EAFFFEF6
      EBFFFDF5EAFFFCF4E9FFF9F2E7FFF6EFE7FFF6F5F5FFDC941AFFDE9A28FFDD97
      23FFF8E0BBFFB68012FF0000001600000000000000000000000100100829008C
      4AFF74E0C5FF7DF9DCFF2CDBB3FF00C494FF00C697FF00C799FF00C799FF00C7
      99FF00C698FF00C493FFB0EEE0FFFFFFFFFFFFFFFFFFB0EEE0FF00C493FF00C6
      98FF00C799FF00C799FF00C799FF00C799FF00C697FF23D0A7FF4AD3AFFF00AA
      72FF008D4CFF0010082900000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000006357B
      C6FF49CEFFFF75D2FFFFDEF2FFFF61BDFFFF1298FFFF0C9BFFFF8E7E72FF7C78
      71FF0000003D0000001C00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168888
      88FFB9B5B3FFCBCAC8FFE5E5E4FFEEEFEFFFEDEFF2FFF1F4F9FFF3F6FBFFF4F7
      FDFFF4F7FDFFF3F6FCFFF2F5FAFFF1F4F8FFECEDF1FFE7E8EBFFE1E1E1FFC9C9
      C6FFBAB7B4FF878888FF00000016000000000000000000000016B68012FFF9E2
      C0FFDD961EFFDF9924FFDC9216FFF4F4F5FFF5F0E7FFFAF4E9FFFCF6EAFFFAF4
      E9FFF9F3E7FFF8F1E7FFF7F1E6FFF9F3E8FFFAF3E8FFF9F2E7FFF8F1E7FFF7F1
      E7FFFAF3E9FFF9F3E8FFF7F1E6FFF4EEE6FFF4F4F5FFDC9216FFDF9924FFDD96
      1EFFF9E2C0FFB68012FF00000016000000000000000000000000000000030050
      2A9C20A56EFF90F0DBFF7BFCE0FF24D7AEFF00C394FF00C697FF00C799FF00C7
      99FF00C799FF00C697FF00C493FF00C290FF00C290FF00C493FF00C697FF00C7
      99FF00C799FF00C799FF00C799FF00C697FF1DCFA5FF56D9B7FF06B27EFF0095
      57FF00512B9C0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006357BC6FF49CEFFFF75D2FFFFDCF2FFFF57BEFFFF98887AFF8A837EFF6664
      62FF76796DFF0000003D0000001C000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168787
      87FFCDCBC9FFE8E8E5FFA5A5A6FFB19F84FFB38F54FFA17228FFA27530FFA278
      35FFA37938FFA37B3BFFA47C3EFFA57D40FFA48656FFB29D7DFFC5B9AAFFE3E2
      E3FFD8D7D5FF868787FF00000016000000000000000000000016B68011FFF9E5
      C5FFDF951AFFA97117FFDF9212FFF2F3F3FFF5F0E7FF525356FF555658FF9495
      97FF929395FF8F9193FFF8F1E7FF505254FF939496FF929395FF8F9193FFF8F1
      E7FF505254FF929496FF8F9092FFF3EEE5FFF2F2F3FFDF9212FFA97117FFDF95
      1AFFF9E5C5FFB68011FF00000016000000000000000000000000000000000000
      000500793DE752C59DFF9EF9E7FF7CFCDFFF2BDBB3FF00C193FF00C496FF00C5
      98FF00C699FF00C699FF00C698FF00C597FF00C597FF00C698FF00C699FF00C6
      99FF00C699FF00C598FF00C597FF23CFA7FF56D9B8FF0BB583FF009F63FF007D
      42E7000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006357BC6FF46CFFFFF6CD3FFFFF1E4DDFFD3CFCAFFA09F9DFF8383
      81FF7B8273FF9B69CEFF00000037000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000168787
      87FFF3F2F1FF5F5D5CFF4C4B4CFF494747FFB09774FFAE8747FF9D712AFFB183
      38FFB1853DFFB68A42FFC5964AFFC4984DFFD2A254FFD5A252FF8D622CFF908F
      8DFFF0EFEFFF868686FF00000016000000000000000000000016B67E11FFFBE9
      CCFFE09416FF7D530DFFE0910EFFF1F2F3FFF1ECE4FFF6EFE5FFF7F1E6FFF6F0
      E4FFF5EEE3FFF4EDE2FFF3EDE2FFF5EFE4FFF6EFE4FFF5EEE3FFF4EDE2FFF3ED
      E2FFF5EFE4FFF5EFE4FFF3EDE2FFF0EBE3FFF1F1F2FFE0910EFF7D530DFFE094
      16FFFBE9CCFFB67E11FF00000016000000000000000000000000000000000000
      00000000000500773AE55DC9A4FFB5FFF4FF85FDE3FF57ECCBFF01C69BFF00C1
      94FF00C396FF00C397FF00C498FF00C498FF00C498FF00C498FF00C498FF00C4
      97FF00C397FF03C79CFF44D6B3FF4AD4B0FF06B27DFF009E63FF007C41E50000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000062E7BCBFFA8978BFFF2EDE9FFFFFFFEFFCECFCCFF868A
      81FFC586C4FFBD80B6FF9769C8FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000118787
      87FFF1F0EDFF605E5DFF646261FF626161FF6F6E6FFFF8D7A9FFEFB557FFDC9F
      36FFDEA440FFDFA646FFE1A84AFFE4AB4EFFE4AA4DFFA26F2DFF8B8887FF9998
      98FFEDEDEAFF878787FF00000011000000000000000000000016B57E11FFFCEC
      D1FFDE900FFF7A4F07FFDE8E08FFEEF0F0FFEDE9E0FFEDE8DEFFEEE9DEFFEDE8
      DEFFEDE8DEFFEDE8DDFFECE8DDFFEDE8DEFFEDE8DEFFEDE8DEFFEDE8DDFFECE8
      DDFFEDE8DEFFEDE8DEFFEDE8DDFFECE9E0FFEEF0F0FFDE8E08FF7A4F07FFDE90
      0FFFFCECD1FFB57E11FF00000015000000000000000000000000000000000000
      0000000000000000000500793CE631AD79FFC0FFF7FF9CFFEAFF7DFDE0FF4FE8
      C5FF24D6AEFF02C79BFF00BF93FF00C094FF00C094FF00C194FF04C69BFF21D0
      AAFF44DCB8FF5EE0C0FF2CC69DFF00AA72FF009557FF007D42E6000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000006B3A79DFFD1CECBFFEDEDEBFFE2E6E1FFDDB1
      DDFFC68AC5FFC288BDFF996BC9FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000068989
      89FDADACACFFDDDCDBFFAFAEACFF878584FF6D6C6EFF6C6B6CFFECCA9AFFDEA1
      38FFD59628FFD79B32FFDA9F38FFDB9D37FFA36B20FF9A9086FFC2C2C5FFDDDD
      DCFFABAAABFF888989FD00000006000000000000000000000010B68012FFFDEE
      D8FFD98903FFDB8C08FFD88600FFEDECECFFEBE6DEFFEBE5DCFFEBE5DCFFEBE5
      DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE5
      DCFFEBE5DCFFEBE5DCFFEBE5DCFFEBE6DEFFEDECECFFD88600FFDB8C08FFD989
      03FFFDEED8FFB68012FF0000000D000000000000000000000000000000000000
      000000000000000000000000000300502899008C4AFF71D5B4FFADFDEFFF91F8
      E1FF81F8DCFF7AF9DCFF78F8DBFF75F6D8FF72F3D5FF72F1D4FF6BECCEFF55DE
      BBFF33CAA2FF0BB684FF00A065FF008D4BFF00522B9900000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000006A8A59FFF95978FFFE9C0E8FFFAF2
      FAFFD9B0D8FFB27FACE99F70C9FF000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      0713717171D48E8E8DFFB2B2B1FFCACAC8FFDBDBD9FFE3E4E4FFDFE1E3FFFFE1
      AAFFDB9C2EFFD3911DFFD99825FFAE6F12FFBBAC97FFC8CBCEFFB0B1B1FF8D8D
      8CFF707070D40707071300000000000000000000000000000005A77715EBF1C6
      80FFFDECCFFFFDEBCEFFFCE8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE8C6FFFDEBCEFFFDEC
      CFFFF1C680FF7C570EB300000004000000000000000000000000000000000000
      000000000000000000000000000000000001000F0923006F36D3008C4AFF3CB6
      88FF5BCDA9FF74E1C6FF6EDFC5FF5FD9B9FF4FD2B0FF40CBA7FF2FC398FF16AE
      7AFF079F64FF008C4BFF00723CD3001009230000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000006BF84D6FFE4B0E2FFE4BB
      E1FFBD8EB9E8AB79CCFF00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000110101023464646866F6F6FD1828282F5868788FF828589FF9695
      93FFFFDCAAFFD7931EFFAB6A08FF81694CFF81868EF46F6F71D1464646861010
      102300000001000000000000000000000000000000000000000000000005A776
      15EAB68012FFB57E11FFB57D0FFFB57C0BFFB57B09FFB57B08FFB57B08FFB57B
      08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B08FFB57B
      08FFB57B08FFB57B08FFB57B08FFB57B09FFB57C0BFFB57D0FFFB57E11FFB680
      12FF7C580FB00000000400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000005030E003B
      1E72006E39D1008743FF008743FF008743FF008844FF008945FF008A46FF0070
      3AD1003C20720005030E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006BD89D1FFBA87
      CFFFB684CFFF0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000505030ABD7801EC845100B0000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000E00000000100010000000000000E00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFE0FFFF83FFFFFC1FF01FFE000000
      FFFFC0FFFF81FFFFFC0FF01FFE000000FFFF80FFFF80FFFFFC07F01FFE000000
      FFFF00FFFF807FFFFC03F01FFE000000FFFE00FFFF803FFFFC01F01FFE000000
      FFFC00FFFF801FFFFC00F01FFE000000FFF800FFFF800FFFFC00701FFE000000
      FFF000FFFF8007FFFC00301FFE000000FFE000FFFF8003FFFC00101FFE000000
      FFC000FFFF8001FFFC00001FFE000000FF8000FFFF8000FFFC00001FFE000000
      FF8000FFFF8000FFFC00001FFE000000FF8000FFFF8000FFFC00001FFE000000
      FF8000FFFF8000FFFC00001FFE000000FFC000FFFF8001FFFC00001FFE000000
      FFE000FFFF8003FFFC00101FFE000000FFF000FFFF8007FFFC00301FFE000000
      FFF800FFFF800FFFFC00701FFE000000FFFC00FFFF801FFFFC00F01FFE000000
      FFFE00FFFF803FFFFC01F01FFE000000FFFF00FFFF807FFFFC03F01FFE000000
      FFFF80FFFF80FFFFFC07F01FFE000000FFFFC0FFFF81FFFFFC0FF01FFE000000
      FFFFE0FFFF83FFFFFC1FF01FFE000000FFFFFFFFFFFFFFFFFFFFFFFFFE000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FF0000FFFFFFFF03FC00003FFFFFFFFF
      FE00007FFFFFFE01FC00003FFFFFFFFFFC00003FFFFFFC01FC00003FFFFFFFFF
      F800001FFFFFF801FC00003FFFFFFFFFF000000FFFFFF001FC00003FFC07FC1F
      E0000007FFFFE00100000000FC03F81FC0000003FFFFC00100000000FC03F01F
      80000001FC00000100000000FC03E01F00000000F800000700000000FC03C01F
      00000000E000000F00000000FC03801F00000000C000001F00000000FC03001F
      00000000C000003F00000000FC02001F000000008000007F00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC02001F
      00000000000000FF00000000FC03001F00000000000000FFF800001FFC03801F
      00000000000000FFF800001FFC03C01F80000001000000FFFC00003FFC03E01F
      C0000003800001FFFC00003FFC03F01FE0000007C00003FFFC00003FFC03F81F
      F000000FC00003FFFC00003FFC07FC1FF800001FE00007FFFC00003FFFFFFFFF
      FC00003FF8001FFFFC00003FFFFFFFFFFE00007FFC003FFFFC00003FFFFFFFFF
      FF0000FFFFFFFFFFFC00003FFFFFFFFFFFC003FF0FFFFFFFF007FFFFFFFFFFFF
      FE00007F01FFFFFFE0000007C0000003FC00003F007FFFFFC000000380000001
      F800001F003FFFFFC000000180000001F000000F801FFFFF8000000180000001
      E0000007800FFFFF8000000180000001C00000038007FFFF8000000180000001
      80000001C003FFFF800000018000000180000001C001FFFF8000000180000001
      80000001E000FFFF800000018000000100000000F0007FFF8000000180000001
      00000000F8003FFF800000018000000100000000FC001FFF8000000180000001
      00000000FE000FFF800000018000000100000000FF0007FF8000000180000001
      00000000FF8003FF800000018000000100000000FFC001FF8000000180000001
      00000000FFE000FF800000018000000100000000FFF0007FC000000180000001
      00000000FFF8003FC00000018000000100000000FFFC001FE000000180000001
      00000000FFFE000FF00000018000000180000001FFFF0007FFC0000180000001
      80000001FFFF8003FFC000018000000180000001FFFFC001FFC0000180000001
      C0000003FFFFE000FFC0000180000001E0000007FFFFF000FFC0000180000001
      F000000FFFFFF800FFC0000180000001F800001FFFFFFC00FFC0000180000001
      FC00003FFFFFFE00FFE0000380000001FE00007FFFFFFF01FFF00007C0000003
      FFC003FFFFFFFF83FFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFE0FFFF83FFFFFC1FF01FFE000000
      FFFFC0FFFF81FFFFFC0FF01FFE000000FFFF80FFFF80FFFFFC07F01FFE000000
      FFFF00FFFF807FFFFC03F01FFE000000FFFE00FFFF803FFFFC01F01FFE000000
      FFFC00FFFF801FFFFC00F01FFE000000FFF800FFFF800FFFFC00701FFE000000
      FFF000FFFF8007FFFC00301FFE000000FFE000FFFF8003FFFC00101FFE000000
      FFC000FFFF8001FFFC00001FFE000000FF8000FFFF8000FFFC00001FFE000000
      FF8000FFFF8000FFFC00001FFE000000FF8000FFFF8000FFFC00001FFE000000
      FF8000FFFF8000FFFC00001FFE000000FFC000FFFF8001FFFC00001FFE000000
      FFE000FFFF8003FFFC00101FFE000000FFF000FFFF8007FFFC00301FFE000000
      FFF800FFFF800FFFFC00701FFE000000FFFC00FFFF801FFFFC00F01FFE000000
      FFFE00FFFF803FFFFC01F01FFE000000FFFF00FFFF807FFFFC03F01FFE000000
      FFFF80FFFF80FFFFFC07F01FFE000000FFFFC0FFFF81FFFFFC0FF01FFE000000
      FFFFE0FFFF83FFFFFC1FF01FFE000000FFFFFFFFFFFFFFFFFFFFFFFFFE000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FF0000FFFFFFFF03FC00003FFFFFFFFF
      FE00007FFFFFFE01FC00003FFFFFFFFFFC00003FFFFFFC01FC00003FFFFFFFFF
      F800001FFFFFF801FC00003FFFFFFFFFF000000FFFFFF001FC00003FFC07FC1F
      E0000007FFFFE00100000000FC03F81FC0000003FFFFC00100000000FC03F01F
      80000001FC00000100000000FC03E01F00000000F800000700000000FC03C01F
      00000000E000000F00000000FC03801F00000000C000001F00000000FC03001F
      00000000C000003F00000000FC02001F000000008000007F00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC00001F
      00000000000000FF00000000FC00001F00000000000000FF00000000FC02001F
      00000000000000FF00000000FC03001F00000000000000FFF800001FFC03801F
      00000000000000FFF800001FFC03C01F80000001000000FFFC00003FFC03E01F
      C0000003800001FFFC00003FFC03F01FE0000007C00003FFFC00003FFC03F81F
      F000000FC00003FFFC00003FFC07FC1FF800001FE00007FFFC00003FFFFFFFFF
      FC00003FF8001FFFFC00003FFFFFFFFFFE00007FFC003FFFFC00003FFFFFFFFF
      FF0000FFFFFFFFFFFC00003FFFFFFFFFFFC003FF0FFFFFFFF007FFFFFFFFFFFF
      FE00007F01FFFFFFE0000007C0000003FC00003F007FFFFFC000000380000001
      F800001F003FFFFFC000000180000001F000000F801FFFFF8000000180000001
      E0000007800FFFFF8000000180000001C00000038007FFFF8000000180000001
      80000001C003FFFF800000018000000180000001C001FFFF8000000180000001
      80000001E000FFFF800000018000000100000000F0007FFF8000000180000001
      00000000F8003FFF800000018000000100000000FC001FFF8000000180000001
      00000000FE000FFF800000018000000100000000FF0007FF8000000180000001
      00000000FF8003FF800000018000000100000000FFC001FF8000000180000001
      00000000FFE000FF800000018000000100000000FFF0007FC000000180000001
      00000000FFF8003FC00000018000000100000000FFFC001FE000000180000001
      00000000FFFE000FF00000018000000180000001FFFF0007FFC0000180000001
      80000001FFFF8003FFC000018000000180000001FFFFC001FFC0000180000001
      C0000003FFFFE000FFC0000180000001E0000007FFFFF000FFC0000180000001
      F000000FFFFFF800FFC0000180000001F800001FFFFFFC00FFC0000180000001
      FC00003FFFFFFE00FFE0000380000001FE00007FFFFFFF01FFF00007C0000003
      FFC003FFFFFFFF83FFFFF0FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
