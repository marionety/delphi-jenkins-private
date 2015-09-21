object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 148
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblSaludo: TLabel
    Left = 24
    Top = 96
    Width = 4
    Height = 22
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Open Sans'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSaludar: TButton
    Left = 192
    Top = 32
    Width = 105
    Height = 33
    Caption = 'Saludar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Open Sans'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSaludarClick
  end
  object edtSaludo: TEdit
    Left = 24
    Top = 32
    Width = 153
    Height = 30
    Align = alCustom
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Open Sans'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
