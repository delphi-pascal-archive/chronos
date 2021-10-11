unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, ComCtrls, DBCtrls, Menus, Grids,
  DBGrids, DB, ADODB, ComObj, XPMan;

type
  Tf_Main = class(TForm)
    Ecran: TImage;
    ScreenPanel: TPanel;
    Chrono: TLabel;
    StatusBar: TStatusBar;
    Led1: TShape;
    Led2: TShape;
    Led3: TShape;
    Led4: TShape;
    Led5: TShape;
    Led6: TShape;
    Led7: TShape;
    Led8: TShape;
    Led9: TShape;
    Led10: TShape;
    Led11: TShape;
    Led12: TShape;
    Led13: TShape;
    Led14: TShape;
    Led15: TShape;
    Led16: TShape;
    Led17: TShape;
    Led18: TShape;
    Led19: TShape;
    Led20: TShape;
    Start: TSpeedButton;
    Pause: TSpeedButton;
    Stop: TSpeedButton;
    ListePostes: TPageControl;
    TabSheet1: TTabSheet;
    Pause1: TGroupBox;
    LabPDebut1: TLabel;
    LabTotal1: TLabel;
    EditPDebut1: TEdit;
    EditPTotal1: TEdit;
    Recapitulatif1: TGroupBox;
    LabOccupation1: TLabel;
    LabStart1: TLabel;
    LabEnd1: TLabel;
    LabDuree1: TLabel;
    Utilisation1: TGroupBox;
    LabUDebut1: TLabel;
    LabUFin1: TLabel;
    EditUDebut1: TEdit;
    EditUFin1: TEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    Pause2: TGroupBox;
    LabPDebut2: TLabel;
    LabPTotal2: TLabel;
    EditPDebut2: TEdit;
    EditPTotal2: TEdit;
    Recapitulatif2: TGroupBox;
    LabOccupation2: TLabel;
    LabStart2: TLabel;
    LabEnd2: TLabel;
    LabDuree2: TLabel;
    Utilisation2: TGroupBox;
    LabUDebut2: TLabel;
    LabUFin2: TLabel;
    EditUDebut2: TEdit;
    EditUFin2: TEdit;
    Pause3: TGroupBox;
    LabPDebut3: TLabel;
    LabPTotal3: TLabel;
    EditPDebut3: TEdit;
    EditPTotal3: TEdit;
    Recapitulatif3: TGroupBox;
    LabOccupation3: TLabel;
    LabStart3: TLabel;
    LabEnd3: TLabel;
    LabDuree3: TLabel;
    Utilisation3: TGroupBox;
    LabUDebut3: TLabel;
    LabUFin3: TLabel;
    EditUDebut3: TEdit;
    EditUFin3: TEdit;
    Pause4: TGroupBox;
    LabPDebut4: TLabel;
    LabPTotal4: TLabel;
    EditPDebut4: TEdit;
    EditPTotal4: TEdit;
    Recapitulatif4: TGroupBox;
    LabOccupation4: TLabel;
    LabStart4: TLabel;
    LabEnd4: TLabel;
    LabDuree4: TLabel;
    Utilisation4: TGroupBox;
    LabUDebut4: TLabel;
    LabUFin4: TLabel;
    EditUDebut4: TEdit;
    EditUFin4: TEdit;
    Pause5: TGroupBox;
    LabPDebut5: TLabel;
    LabPTotal5: TLabel;
    EditPDebut5: TEdit;
    EditPTotal5: TEdit;
    Recapitulatif5: TGroupBox;
    LabOccupation5: TLabel;
    LabStart5: TLabel;
    LabEnd5: TLabel;
    LabDuree5: TLabel;
    Utilisation5: TGroupBox;
    LabUDebut5: TLabel;
    LabUFin5: TLabel;
    EditUDebut5: TEdit;
    EditUFin5: TEdit;
    Pause6: TGroupBox;
    LabPDebut6: TLabel;
    LabPTotal6: TLabel;
    EditPDebut6: TEdit;
    EditPTotal6: TEdit;
    Recapitulatif6: TGroupBox;
    LabOccupation6: TLabel;
    LabStart6: TLabel;
    LabEnd6: TLabel;
    LabDuree6: TLabel;
    Utilisation6: TGroupBox;
    LabUDebut6: TLabel;
    LabUFin6: TLabel;
    EditUDebut6: TEdit;
    EditUFin6: TEdit;
    Pause7: TGroupBox;
    LabPDebut7: TLabel;
    LabPTotal7: TLabel;
    EditPDebut7: TEdit;
    EditPTotal7: TEdit;
    Recapitulatif7: TGroupBox;
    LabOccupation7: TLabel;
    LabStart7: TLabel;
    LabEnd7: TLabel;
    LabDuree7: TLabel;
    Utilisation7: TGroupBox;
    LabUDebut7: TLabel;
    LabUFin7: TLabel;
    EditUDebut7: TEdit;
    EditUFin7: TEdit;
    Pause8: TGroupBox;
    LabPDebut8: TLabel;
    LabPTotal8: TLabel;
    EditPDebut8: TEdit;
    EditPTotal8: TEdit;
    Recapitulatif8: TGroupBox;
    LabOccupation8: TLabel;
    LabStart8: TLabel;
    LabEnd8: TLabel;
    LabDuree8: TLabel;
    Utilisation8: TGroupBox;
    LabUDebut8: TLabel;
    LabUFin8: TLabel;
    EditUDebut8: TEdit;
    EditUFin8: TEdit;
    Pause9: TGroupBox;
    LabPDebut9: TLabel;
    LabPTotal9: TLabel;
    EditPDebut9: TEdit;
    EditPTotal9: TEdit;
    Recapitulatif9: TGroupBox;
    LabOccupation9: TLabel;
    LabStart9: TLabel;
    LabEnd9: TLabel;
    LabDuree9: TLabel;
    Utilisation9: TGroupBox;
    LabUDebut9: TLabel;
    LabUFin9: TLabel;
    EditUDebut9: TEdit;
    EditUFin9: TEdit;
    Pause10: TGroupBox;
    LabPDebut10: TLabel;
    LabPTotal10: TLabel;
    EditPDebut10: TEdit;
    EditPTotal10: TEdit;
    Recapitulatif10: TGroupBox;
    LabOccupation10: TLabel;
    LabStart10: TLabel;
    LabEnd10: TLabel;
    LabDuree10: TLabel;
    Utilisation10: TGroupBox;
    LabUDebut10: TLabel;
    LabUFin10: TLabel;
    EditUDebut10: TEdit;
    EditUFin10: TEdit;
    Pause11: TGroupBox;
    LabPDebut11: TLabel;
    LabPTotal11: TLabel;
    EditPDebut11: TEdit;
    EditPTotal11: TEdit;
    Recapitulatif11: TGroupBox;
    LabOccupation11: TLabel;
    LabStart11: TLabel;
    LabEnd11: TLabel;
    LabDuree11: TLabel;
    Utilisation11: TGroupBox;
    LabUDebut11: TLabel;
    LabUFin11: TLabel;
    EditUDebut11: TEdit;
    EditUFin11: TEdit;
    Pause12: TGroupBox;
    LabPDebut12: TLabel;
    LabPTotal12: TLabel;
    EditPDebut12: TEdit;
    EditPTotal12: TEdit;
    Recapitulatif12: TGroupBox;
    LabOccupation12: TLabel;
    LabStart12: TLabel;
    LabEnd12: TLabel;
    LabDuree12: TLabel;
    Utilisation12: TGroupBox;
    LabUDebut12: TLabel;
    LabUFin12: TLabel;
    EditUDebut12: TEdit;
    EditUFin12: TEdit;
    Pause13: TGroupBox;
    LabPDebut13: TLabel;
    LabPTotal13: TLabel;
    EditPDebut13: TEdit;
    EditPTotal13: TEdit;
    Recapitulatif13: TGroupBox;
    LabOccupation13: TLabel;
    LabStart13: TLabel;
    LabEnd13: TLabel;
    LabDuree13: TLabel;
    Utilisation13: TGroupBox;
    LabUDebut13: TLabel;
    LabUFin13: TLabel;
    EditUDebut13: TEdit;
    EditUFin13: TEdit;
    Pause14: TGroupBox;
    LabPDebut14: TLabel;
    LabPTotal14: TLabel;
    EditPDebut14: TEdit;
    EditPTotal14: TEdit;
    Recapitulatif14: TGroupBox;
    LabOccupation14: TLabel;
    LabStart14: TLabel;
    LabEnd14: TLabel;
    LabDuree14: TLabel;
    Utilisation14: TGroupBox;
    LabUDebut14: TLabel;
    LabUFin14: TLabel;
    EditUDebut14: TEdit;
    EditUFin14: TEdit;
    Pause15: TGroupBox;
    LabPDebut15: TLabel;
    LabPTotal15: TLabel;
    EditPDebut15: TEdit;
    EditPTotal15: TEdit;
    Recapitulatif15: TGroupBox;
    LabOccupation15: TLabel;
    LabStart15: TLabel;
    LabEnd15: TLabel;
    LabDuree15: TLabel;
    Utilisation15: TGroupBox;
    LabUDebut15: TLabel;
    LabUFin15: TLabel;
    EditUDebut15: TEdit;
    EditUFin15: TEdit;
    Pause16: TGroupBox;
    LabPDebut16: TLabel;
    LabPTotal16: TLabel;
    EditPDebut16: TEdit;
    EditPTotal16: TEdit;
    Recapitulatif16: TGroupBox;
    LabOccupation16: TLabel;
    LabStart16: TLabel;
    LabEnd16: TLabel;
    LabDuree16: TLabel;
    Utilisation16: TGroupBox;
    LabUDebut16: TLabel;
    LabUFin16: TLabel;
    EditUDebut16: TEdit;
    EditUFin16: TEdit;
    Pause17: TGroupBox;
    LabPDebut17: TLabel;
    LabPTotal17: TLabel;
    EditPDebut17: TEdit;
    EditPTotal17: TEdit;
    Recapitulatif17: TGroupBox;
    LabOccupation17: TLabel;
    LabStart17: TLabel;
    LabEnd17: TLabel;
    LabDuree17: TLabel;
    Utilisation17: TGroupBox;
    LabUDebut17: TLabel;
    LabUFin17: TLabel;
    EditUDebut17: TEdit;
    EditUFin17: TEdit;
    Pause18: TGroupBox;
    LabPDebut18: TLabel;
    LabPTotal18: TLabel;
    EditPDebut18: TEdit;
    EditPTotal18: TEdit;
    Recapitulatif18: TGroupBox;
    LabOccupation18: TLabel;
    LabStart18: TLabel;
    LabEnd18: TLabel;
    LabDuree18: TLabel;
    Utilisation18: TGroupBox;
    LabUDebut18: TLabel;
    LabUFin18: TLabel;
    EditUDebut18: TEdit;
    EditUFin18: TEdit;
    Pause19: TGroupBox;
    LabPDebut19: TLabel;
    LabPTotal19: TLabel;
    EditPDebut19: TEdit;
    EditPTotal19: TEdit;
    Recapitulatif19: TGroupBox;
    LabOccupation19: TLabel;
    LabStart19: TLabel;
    LabEnd19: TLabel;
    LabDuree19: TLabel;
    Utilisation19: TGroupBox;
    LabUDebut19: TLabel;
    LabUFin19: TLabel;
    EditUDebut19: TEdit;
    EditUFin19: TEdit;
    Pause20: TGroupBox;
    LabPDebut20: TLabel;
    LabPTotal20: TLabel;
    EditPDebut20: TEdit;
    EditPTotal20: TEdit;
    Recapitulatif20: TGroupBox;
    LabOccupation20: TLabel;
    LabStart20: TLabel;
    LabEnd20: TLabel;
    LabDuree20: TLabel;
    Utilisation20: TGroupBox;
    LabUDebut20: TLabel;
    LabUFin20: TLabel;
    EditUDebut20: TEdit;
    EditUFin20: TEdit;
    StatsBar: TTimer;
    BtnFiches: TSpeedButton;
    BtnSystray: TSpeedButton;
    BtnAPropos: TSpeedButton;
    BtnTri: TSpeedButton;
    BtnFacture: TSpeedButton;
    SystrayMenu: TPopupMenu;
    Restaurer1: TMenuItem;
    APropos1: TMenuItem;
    Quitter1: TMenuItem;
    Clients: TDBGrid;
    Compteur: TTimer;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOCommand1: TADOCommand;
    DataSource1: TDataSource;
    XPLook: TXPManifest;
    procedure StatsBarTimer(Sender: TObject);
    procedure BtnFactureClick(Sender: TObject);
    procedure BtnAProposClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSystrayClick(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure QuitterClick(Sender: TObject);
    procedure StartClick(Sender: TObject);
    procedure PauseClick(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure ListePostesChange(Sender: TObject);
    procedure CompteurTimer(Sender: TObject);
    procedure BtnFichesClick(Sender: TObject);
    procedure ClientsDblClick(Sender: TObject);
    procedure BtnTriClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  f_Main: Tf_Main;
  i : integer;
  Time1, Time2, Time3 : TDateTime;
  Led0 : TShape;
  EditUDebut0, EditUFin0, EditPDebut0, EditPTotal0 : TEdit;
  LabOccupation0, LabStart0, LabEnd0, LabDuree0 : TLabel;

implementation

uses APropos, Clients, Tri;

{$R *.dfm}

procedure Tf_Main.ListePostesChange(Sender: TObject);
begin
// i = numéro du TabSheet actif
 i:= ListePostes.TabIndex + 1;
// Led correspondante
 Led0 := TShape(FindComponent('Led'+IntToStr(i)));
// Composant contenant l'heure de départ
 EditUDebut0 := TEdit(FindComponent('EditUDebut'+IntToStr(i)));
// Composant contenant l'heure de fin
 EditUFin0 := TEdit(FindComponent('EditUFin'+IntToStr(i)));
// Composant contenant l'heure de pause
 EditPDebut0 := TEdit(FindComponent('EditPDebut'+IntToStr(i)));
// Composant contenant la durée totale de pause
 EditPTotal0 := TEdit(FindComponent('EditPTotal'+IntToStr(i)));
// Composant contenant le nom et prénom du client
 LabOccupation0 := TLabel(FindComponent('LabOccupation'+IntToStr(i)));
// Composant contenant l'affichage complet de la date et heure de départ
 LabStart0 := TLabel(FindComponent('LabStart'+IntToStr(i)));
// Composant contenant l'affichage complet de la date et heure de fin
 LabEnd0 := TLabel(FindComponent('LabEnd'+IntToStr(i)));
// Composant contenant la durée réelle d'utilisation
 LabDuree0 := TLabel(FindComponent('LabDuree'+IntToStr(i)));
end;

procedure Tf_Main.StartClick(Sender: TObject);
begin
// Si le poste est à l'arrêt
  if Led0.Brush.Color = clRed then
    begin
// Inscrit la date et heure de départ
      EditUDebut0.Text := DateTimeToStr(Now);
// Inscrit la date et heure complète dans le récapitulatif
      LabStart0.Caption := 'Début d''utilisation : '+FormatDateTime('dddddd à hh:nn:ss',Now);
// Si le N° de poste est inférieur à 10, on ajoute le "0"
        if i < 10 then LabOccupation0.Caption := 'Le poste 0'+IntToStr(i)
// Sinon on inscrit le numéro entier à 2 chiffres
        else LabOccupation0.Caption := 'Le poste '+IntToStr(i);
// Et on complète notre titre
      LabOccupation0.Caption := LabOccupation0.Caption+' est occupé par : ';
// On efface l'heure et date de fin d'utilisation
      LabEnd0.Caption := 'Fin d''utilisation :';
// On efface la durée réelle d'utilisation
      LabDuree0.Caption := 'Durée d''utilisation réelle :';
// On efface l'heure de fin d'utilisation
      EditUFin0.Text := '';
// On réinitialise le compteur de pause
      EditPTotal0.Text := '00:00:00';
// On déclare le poste comme étant actif
      Led0.Brush.Color := clBlue;
    end
// Si le poste est en pause, on l'indique
  else if Led0.Brush.Color = clYellow then ShowMessage('Ce poste est en pause !')
// Si le poste est déjà actif, on l'indique
  else if Led0.Brush.Color = clBlue then ShowMessage('Ce poste est déjà utilisé !');
end;

procedure Tf_Main.PauseClick(Sender: TObject);
begin
// Si le poste est actif
  if Led0.Brush.Color = clBlue then
    begin
// On inscrit la date et heure de début de pause
       EditPDebut0.Text := DateTimeToStr(Now);
// On déclare le poste en pause
       Led0.Brush.Color := clYellow
    end
// Si le poste est déjà en pause
  else if Led0.Brush.Color = clYellow then
    begin
// On récupère le temps de pause totale
       Time3 := StrToDateTime(EditPTotal0.Text);
// On récupère la date et heure de début de pause
       Time1 := StrToDateTime(EditPDebut0.Text);
// On récupère la date et heure actuelle
       Time2 := Now;
// On calcule le temps de pause totale
       Time1 := Time2 - Time1 + Time3;
// Et on l'inscrit dans le composant
       EditPTotal0.Text := TimeToStr(Time1);
// On efface la date et heure de début de pause
       EditPDebut0.Text := '';
// On déclare le poste à nouveau actif
       Led0.Brush.Color := clBlue
    end
// On signale que le poste est à l'arrêt
  else if Led0.Brush.Color = clRed then ShowMessage('Ce poste est à l''arrêt !');
end;

procedure Tf_Main.StopClick(Sender: TObject);
begin
// Si le poste est actif
  if Led0.Brush.Color = clBlue then
    begin
// On inscrit la date et heure de fin
       EditUFin0.Text := DateTimeToStr(Now);
// On récupère l'heure actuelle
       Time2 := Now;
// On récupère la date et heure de début
       Time1 := StrToDateTime(EditUDebut0.Text);
// On récupère le temps de pause totale
       Time3 := StrToDateTime(EditPTotal0.Text);
// On inscrit la date et heure complète de fin dans le récapitulatif
       LabEnd0.Caption := 'Fin d''utilisation : '+FormatDateTime('dddddd à hh:nn:ss',Time2);
// On calcul la durée réelle d'utilisation et on l'inscrit dans le récapitulatif
       LabDuree0.Caption := 'Durée d''utilisation réelle : '+TimeToStr(Time2 - Time1 - Time3);
// On déclare que le poste est à l'arrêt
       Led0.Brush.Color := clRed
    end
// On signale que le poste est en pause
  else if Led0.Brush.Color = clYellow then ShowMessage('Ce poste est en pause !')
// On signale que le poste est déjà à l'arrêt
  else if Led0.Brush.Color = clRed then ShowMessage('Ce poste est déjà à l''arrêt !');
end;

procedure Tf_Main.CompteurTimer(Sender: TObject);
begin
// Si le poste est actif
  if Led0.Brush.Color = clBlue then
    begin
// On récupère la date et l'heure de départ
      Time1 := StrToDateTime(EditUDebut0.Text);
// On récupère l'heure actuelle
      Time2 := Now;
// La couleur du chrono sera blanc
      Chrono.Font.Color := clWhite;
// On calcule le temps total d'utilisation
      Chrono.Caption := TimeToStr(Time2-Time1);
    end
// Si le poste est en pause
  else if Led0.Brush.Color = clYellow then
    begin
// On récupère le temps de pause total
      Time3 := StrToDateTime(EditPTotal0.Text);
// On récupère la date et l'heure du début de pause
      Time1 := StrToDateTime(EditPDebut0.Text);
// On récupère l'heure actuelle
      Time2 := Now;
// La couleur du chrono sera jaune
      Chrono.Font.Color := clYellow;
// On calcule le temps de pause total cumulé
      Chrono.Caption := TimeToStr(Time2 - Time1 + Time3);
    end
// Si le poste est à l'arrêt
  else if Led0.Brush.Color = clRed then
    begin
// La couleur du chrono sera rouge
      Chrono.Font.Color := clRed;
// le poste est à l'arrêt donc temps d'utilisation = 0
      Chrono.Caption := '00:00:00';
    end;
end;

procedure Tf_Main.StatsBarTimer(Sender: TObject);
begin
// Inscrit la date dans la barre de statuts
 StatusBar.Panels[0].Text := FormatDateTime('dddd dd mmmm yyyy',Date);
// Inscrit l'heure dans la barre de statuts
 StatusBar.Panels[1].Text := FormatDateTime('hh:nn:ss',Time);
// Inscrit le nombre de clients dans la barre de statuts
 StatusBar.Panels[3].Text := IntToStr(ADOTable1.RecordCount);
end;

procedure Tf_Main.FormCreate(Sender: TObject);
var Catalog : OLEVariant;
    BDPath, BDNew, BDStruct : String;
begin
// On initialise les composants à utiliser
 ListePostesChange(sender);

// On définit le chemin de la BDD dans le répertoire courant
 BDPath := GetCurrentDir+'\Chronos.mdb';
// Paramètres de la BDD à créer
 BDNew := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
          'Data Source=' + BDPath + ';' +
          'User ID=Admin;' +
          'Mode=Share Deny None;Extended Properties="";' +
          'Jet OLEDB:Engine Type=5;';
// Structure de la table
 BDSTruct := 'CREATE TABLE Clients (' +
                      'id COUNTER PRIMARY KEY,' +
                      'Numero INTEGER,' +
                      'Nom VARCHAR(50),' +
                      'Prenom VARCHAR(30),' +
                      'Telephone VARCHAR(10),' +
                      'Portable VARCHAR(10),' +
                      'Naissance VARCHAR(10),' +
                      'Adresse MEMO,' +
                      'Email VARCHAR(100))';

// On vérifie que Chronos.mdb existe dans notre répertoire
 if FileExists(BDPath) then
   begin
// Si oui, on déclare ses paramètres
     ADOConnection1.ConnectionString := BDNew ;
// Et on active son affichage
     ADOTable1.Active := True;
   end
// Si le fichier n'existe pas alors
 else
   begin
// On créé un objet unique non initialisé de la classe ADOX.Catalog
     Catalog := CreateOLEObject('ADOX.Catalog');
// On créé notre base vide
     Catalog.Create(BDNew);
// On déclare les paramètres de notre BDD
     ADOConnection1.ConnectionString := BDNew;
// On n'affiche pas l'écran du mot de passe
     ADOConnection1.LoginPrompt := False;
// la base est prête à fonctionner
     ADOConnection1.Connected := True;
// On ouvre la commande
     ADOCommand1.Connection := ADOConnection1;
// Et on applique la requête de création de nos champs
     ADOCommand1.CommandText := BDSTruct;
// On créé les champs de la BDD
     ADOCommand1.Execute;
// On active son affichage
     ADOTable1.Active;
   end;
end;

procedure Tf_Main.ClientsDblClick(Sender: TObject);
begin
// On affiche le nom et prénom du client après un double clique
  LabOccupation0.Caption := LabOccupation0.Caption + ' '
                             + ADOTable1.FieldByName('Nom').AsString
                             + ' '
                             + ADOTable1.FieldByName('Prenom').AsString;
end;

procedure Tf_Main.BtnTriClick(Sender: TObject);
begin
// On affiche la fiche de tri
  Triage.Show;
end;

procedure Tf_Main.BtnFactureClick(Sender: TObject);
begin
// Peut être plus tard, sinon à vous de jouer ...
 ShowMessage('Cette fonction n''a pas encore été implantée !');
end;

procedure Tf_Main.BtnFichesClick(Sender: TObject);
begin
// On affiche les entrées de la BDD
 Infos.Show;
end;

procedure Tf_Main.BtnSystrayClick(Sender: TObject);
begin
// On cache le programme principale
 Hide();
// On définit la taille de la fenêtre comme étant réduite au minimum
 WindowState := wsMinimized;
end;

procedure Tf_Main.TrayIconDblClick(Sender: TObject);
begin
// On affiche le programme principale
 Show();
// On définit la taille de la fenêtre comme normale
 WindowState := wsNormal;
// On place l'application au premier plan
 Application.BringToFront;
end;

procedure Tf_Main.QuitterClick(Sender: TObject);
begin
// Quitte le programme à partir du PopUpMenu
 Close;
end;

procedure Tf_Main.BtnAProposClick(Sender: TObject);
begin
// Affiche la boîte d'infos à partir du bouton et du PopUpMenu
 A_Propos.Show;
end;

end.
