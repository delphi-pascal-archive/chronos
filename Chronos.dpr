program Chronos;

uses
  Forms,
  main in 'main.pas' {f_Main},
  APropos in 'APropos.pas' {A_Propos},
  Clients in 'Clients.pas' {Infos},
  Tri in 'Tri.pas' {Triage};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_Main, f_Main);
  Application.CreateForm(TA_Propos, A_Propos);
  Application.CreateForm(TInfos, Infos);
  Application.CreateForm(TTriage, Triage);
  Application.Run;
end.
