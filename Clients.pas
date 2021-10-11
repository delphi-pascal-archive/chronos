unit Clients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids, DB, ADODB;

type
  TInfos = class(TForm)
    DBGrid1: TDBGrid;
    Nom: TDBEdit;
    Prenom: TDBEdit;
    LabNom: TLabel;
    LabPrenom: TLabel;
    LabFixe: TLabel;
    LabPortable: TLabel;
    NumFixe: TDBEdit;
    NumPortable: TDBEdit;
    LabAdresse: TLabel;
    LabEmail: TLabel;
    DBNavigator1: TDBNavigator;
    LabNaissance: TLabel;
    LabNumero: TLabel;
    Naissance: TDBEdit;
    Email: TDBEdit;
    Client: TDBEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Adresse: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Infos: TInfos;

implementation

uses main;
{$R *.dfm}

procedure TInfos.FormCreate(Sender: TObject);
var BDPath, BDNew : String;
begin
// On définit le répertoire courant
 BDPath := GetCurrentDir+'\Chronos.mdb';
// Paramètres de la base de données
 BDNew := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
          'Data Source=' + BDPath + ';' +
          'User ID=Admin;' +
          'Mode=Share Deny None;Extended Properties="";' +
          'Jet OLEDB:Engine Type=5;';  // 5 = Access 2000
// On déclare les paramètres de notre BDD
 ADOConnection1.ConnectionString := BDNew;
// On active son affichage
 ADOTable1.Active := True;
end;

procedure TInfos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// On ferme et on ouvre la table pour la rafraîchir dans la fiche principale
 f_Main.ADOTable1.Close;
 f_Main.ADOTable1.Open;
end;

end.
