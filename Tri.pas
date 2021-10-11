unit Tri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TTriage = class(TForm)
    TriBox: TRadioGroup;
    procedure TriBoxClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Triage: TTriage;

implementation

uses main, Clients;

{$R *.dfm}

procedure TTriage.TriBoxClick(Sender: TObject);
begin
// Si la valeur du RadioBouton est
  case TriBox.ItemIndex of
// =0, alors le tri se fait par la valeur "id" de la table
    0: begin
// Tri par id dans la fiche principale
         f_Main.ADOTable1.IndexFieldNames := 'id';
// Tri par id dans la fiche Clients
         Infos.ADOTable1.IndexFieldNames := 'id';
       end;
// =1, alors le tri se fait par le numero du client
    1: begin
// Tri par Numero dans la fiche principale
         f_Main.ADOTable1.IndexFieldNames := 'Numero';
// Tri par Numero dans la fiche Clients
         Infos.ADOTable1.IndexFieldNames := 'Numero';
       end;
// =2, alors le tri se fait par le nom du client
    2: begin
// Tri par Nom dans la fiche principale
         f_Main.ADOTable1.IndexFieldNames := 'Nom';
// Tri par Nom dans la fiche Clients
         Infos.ADOTable1.IndexFieldNames := 'Nom';
       end;
// =3, alors le tri se fait par le prénom du client
    3: begin
// Tri par Prenom dans la fiche principale
         f_Main.ADOTable1.IndexFieldNames := 'Prenom';
// Tri par Prenom dans la fiche Clients
         Infos.ADOTable1.IndexFieldNames := 'Prenom';
       end;
  end;
end;

end.
