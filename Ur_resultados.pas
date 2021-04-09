unit Ur_resultados;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TR_resultados = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
  private

  public

  end;

var
  R_resultados: TR_resultados;

implementation

uses m_datos;

{$R *.DFM}

end.
