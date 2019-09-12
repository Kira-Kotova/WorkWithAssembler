object Form1: TForm1
  Left = 2428
  Top = 208
  Width = 720
  Height = 702
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 110
  TextHeight = 14
  object Memo: TMemo
    Left = 144
    Top = 8
    Width = 401
    Height = 545
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -18
    Font.Name = 'Fira Code'
    Font.Style = []
    Lines.Strings = (
      'Memo')
    ParentFont = False
    TabOrder = 0
  end
  object PerfomBtn: TButton
    Left = 144
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Perfom'
    TabOrder = 1
    OnClick = PerfomBtnClick
  end
  object PrintBtn: TButton
    Left = 248
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 2
    OnClick = PrintBtnClick
  end
  object ExitBtn: TButton
    Left = 352
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = ExitBtnClick
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 472
    Top = 576
  end
end
