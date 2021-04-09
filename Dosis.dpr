program Dosis;

uses
  Forms,
  Uf_principal in 'Uf_principal.pas' {f_principal},
  m_datos in 'm_datos.pas' {DataModule2: TDataModule},
  Uf_resultado in 'Uf_resultado.pas' {f_resultado},
  Ur_resultados in 'Ur_resultados.pas' {R_resultados: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Dosificacion de Concreto';
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(Tf_resultado, f_resultado);
  Application.CreateForm(TR_resultados, R_resultados);
  datamodule2.entrada.open;
  Application.Run;
  datamodule2.entrada.close;
end.
