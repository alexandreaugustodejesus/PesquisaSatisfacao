object Form1: TForm1
  Left = 294
  Top = 204
  Width = 512
  Height = 434
  Caption = 'Delphi e BrOffice - Fun'#231#245'es e F'#243'rmulas - Parte 5'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 129
    Caption = 'Executando um c'#225'lculo qualquer: '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Valor A1:'
    end
    object Label2: TLabel
      Left = 128
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Valor A2:'
    end
    object Label3: TLabel
      Left = 16
      Top = 44
      Width = 44
      Height = 13
      Caption = 'Valor A3:'
    end
    object Label4: TLabel
      Left = 16
      Top = 68
      Width = 42
      Height = 13
      Caption = 'F'#243'rmula:'
    end
    object btExecutar: TButton
      Left = 83
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Executar'
      TabOrder = 0
      OnClick = btExecutarClick
    end
    object A1: TEdit
      Left = 72
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object A2: TEdit
      Left = 176
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object A3: TEdit
      Left = 72
      Top = 40
      Width = 49
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object F1: TEdit
      Left = 72
      Top = 64
      Width = 153
      Height = 21
      Hint = 'N'#227'o esque'#231'a do sinal de igual'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = '=(A1/A2)+(A3-A1) / 2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 256
    Top = 8
    Width = 241
    Height = 129
    Caption = 'Execuntando Fun'#231#245'es: '
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Valor A1:'
    end
    object Label6: TLabel
      Left = 128
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Valor A2:'
    end
    object Label7: TLabel
      Left = 16
      Top = 44
      Width = 44
      Height = 13
      Caption = 'Valor A3:'
    end
    object Label8: TLabel
      Left = 16
      Top = 68
      Width = 39
      Height = 13
      Caption = 'Fun'#231#227'o:'
    end
    object A4: TEdit
      Left = 72
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object A5: TEdit
      Left = 176
      Top = 16
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object A6: TEdit
      Left = 72
      Top = 40
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object cbFuncao: TComboBox
      Left = 72
      Top = 64
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'Soma'
      Items.Strings = (
        'Soma'
        'M'#233'dia'
        'M'#225'ximo'
        'M'#237'nimo'
        'Multiplica')
    end
    object buExecFuncao: TButton
      Left = 83
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Executar'
      TabOrder = 4
      OnClick = buExecFuncaoClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 144
    Width = 489
    Height = 249
    Caption = 'Propriedades do documento: '
    TabOrder = 2
    object Label9: TLabel
      Left = 8
      Top = 52
      Width = 31
      Height = 13
      Caption = 'Autor:'
    end
    object Label10: TLabel
      Left = 8
      Top = 76
      Width = 30
      Height = 13
      Caption = 'T'#237'tulo:'
    end
    object Label11: TLabel
      Left = 8
      Top = 100
      Width = 43
      Height = 13
      Caption = 'Assunto:'
    end
    object Label12: TLabel
      Left = 8
      Top = 124
      Width = 80
      Height = 13
      Caption = 'Palavras-Chave:'
    end
    object Label13: TLabel
      Left = 8
      Top = 144
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object edAut: TEdit
      Left = 56
      Top = 48
      Width = 417
      Height = 21
      TabOrder = 0
    end
    object edTit: TEdit
      Left = 56
      Top = 72
      Width = 417
      Height = 21
      TabOrder = 1
    end
    object edAss: TEdit
      Left = 56
      Top = 96
      Width = 417
      Height = 21
      TabOrder = 2
    end
    object edKeyW: TEdit
      Left = 96
      Top = 120
      Width = 377
      Height = 21
      TabOrder = 3
    end
    object mmDesc: TMemo
      Left = 96
      Top = 144
      Width = 377
      Height = 89
      TabOrder = 4
    end
    object chProp: TCheckBox
      Left = 8
      Top = 24
      Width = 473
      Height = 17
      Caption = 
        'Adicionar as propriedades abaixo ao documento quando um dos bot'#245 +
        'es acima for pressionado '
      TabOrder = 5
    end
  end
end
