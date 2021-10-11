object Triage: TTriage
  Left = 577
  Top = 516
  BorderStyle = bsSingle
  Caption = 'Tri'
  ClientHeight = 72
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 17
  object TriBox: TRadioGroup
    Left = 7
    Top = 7
    Width = 806
    Height = 57
    Caption = ' Tri par '
    Columns = 4
    Items.Strings = (
      'Id'
      'N'#176' Client'
      'Nom'
      'Prenom')
    TabOrder = 0
    OnClick = TriBoxClick
  end
end
