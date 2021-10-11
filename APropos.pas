unit APropos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ShellAPI;

type
  TA_Propos = class(TForm)
    ImgIcone: TImage;
    LabTitre: TLabel;
    Memo1: TMemo;
    Pub: TPanel;
    LabPub1: TLabel;
    LabPub2: TLabel;
    LabPub3: TLabel;
    Url: TLabel;
    procedure UrlMouseLeave(Sender: TObject);
    procedure UrlMouseEnter(Sender: TObject);
    procedure UrlClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  A_Propos: TA_Propos;

implementation

{$R *.dfm}

procedure TA_Propos.UrlClick(Sender: TObject);
begin
// Lance le navigateur par défaut sur mon site
 ShellExecute(Handle,'Open','http://www.delphinautes.fr',nil,nil,SW_SHOWDEFAULT);
end;

procedure TA_Propos.UrlMouseEnter(Sender: TObject);
begin
// Souligne le texte au passage de la souris
 Url.Font.Style := [fsUnderline];
// Et change le pointeur
 Cursor := crHandPoint;
end;

procedure TA_Propos.UrlMouseLeave(Sender: TObject);
begin
// Efface le soulignement au départ de la souris
 Url.Font.Style := [];
// Et change le pointeur
 Cursor := crDefault;
end;

end.
