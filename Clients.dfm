object Infos: TInfos
  Left = 849
  Top = 344
  BorderStyle = bsSingle
  Caption = 'Infos'
  ClientHeight = 611
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object LabNom: TLabel
    Left = 10
    Top = 301
    Width = 38
    Height = 17
    Caption = 'Nom :'
  end
  object LabPrenom: TLabel
    Left = 335
    Top = 301
    Width = 57
    Height = 17
    Caption = 'Prenom :'
  end
  object LabFixe: TLabel
    Left = 10
    Top = 353
    Width = 58
    Height = 17
    Caption = 'Tel. Fixe :'
  end
  object LabPortable: TLabel
    Left = 10
    Top = 405
    Width = 84
    Height = 17
    Caption = 'Tel. Portable :'
  end
  object LabAdresse: TLabel
    Left = 230
    Top = 353
    Width = 56
    Height = 17
    Caption = 'Adresse :'
  end
  object LabEmail: TLabel
    Left = 10
    Top = 510
    Width = 40
    Height = 17
    Caption = 'Email :'
  end
  object LabNaissance: TLabel
    Left = 10
    Top = 458
    Width = 120
    Height = 17
    Caption = 'Date de Naissance :'
  end
  object LabNumero: TLabel
    Left = 10
    Top = 251
    Width = 86
    Height = 17
    Caption = 'Numero Client'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 619
    Height = 242
    Color = clInfoBk
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom'
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prenom'
        Width = 203
        Visible = True
      end>
  end
  object Nom: TDBEdit
    Left = 10
    Top = 320
    Width = 317
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Nom'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Prenom: TDBEdit
    Left = 335
    Top = 320
    Width = 273
    Height = 21
    DataField = 'Prenom'
    DataSource = DataSource1
    TabOrder = 3
  end
  object NumFixe: TDBEdit
    Left = 10
    Top = 373
    Width = 201
    Height = 21
    DataField = 'Telephone'
    DataSource = DataSource1
    TabOrder = 4
  end
  object NumPortable: TDBEdit
    Left = 10
    Top = 425
    Width = 201
    Height = 21
    DataField = 'Portable'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 143
    Top = 562
    Width = 340
    Height = 43
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object Naissance: TDBEdit
    Left = 10
    Top = 477
    Width = 201
    Height = 21
    DataField = 'Naissance'
    DataSource = DataSource1
    TabOrder = 6
  end
  object Email: TDBEdit
    Left = 10
    Top = 530
    Width = 598
    Height = 21
    DataField = 'Email'
    DataSource = DataSource1
    TabOrder = 8
  end
  object Client: TDBEdit
    Left = 10
    Top = 272
    Width = 148
    Height = 21
    DataField = 'Numero'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Adresse: TDBMemo
    Left = 230
    Top = 373
    Width = 378
    Height = 132
    DataField = 'Adresse'
    DataSource = DataSource1
    TabOrder = 7
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 400
    Top = 40
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    TableName = 'Clients'
    Left = 400
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 320
    Top = 40
  end
end
