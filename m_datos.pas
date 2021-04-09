unit m_datos;

interface

uses
  SysUtils, Classes, DB, DBTables,math,dialogs;

type
  TDataModule2 = class(TDataModule)
    revenimiento: TTable;
    acemento: TTable;
    acexpsev: TTable;
    Volgrueso: TTable;
    PesoEstimado: TTable;
    condiciones: TTable;
    entrada: TTable;
    Ds_entrada: TDataSource;
    Ds_condiciones: TDataSource;
    Ds_cexpocicion: TDataSource;
    Exposicion: TQuery;
    Exposiciondescripcion: TStringField;
    condicionesCondiciones: TStringField;
    condicionesFactor1: TFloatField;
    condicionesFactor2: TFloatField;
    entradaCodigo: TAutoIncField;
    entradaFck: TFloatField;
    entradaCondiciones: TStringField;
    entradaExposicion: TStringField;
    entradaAire: TBooleanField;
    entradaTammax: TFloatField;
    entradaModfinuraAG: TFloatField;
    entradaModfinuraAF: TFloatField;
    entradaPorcabsAG: TFloatField;
    entradaPorcabsAF: TFloatField;
    entradaPesoEspCem: TFloatField;
    entradaPesoEspAF: TFloatField;
    entradaPesoEspAG: TFloatField;
    entradaPorcReducAG: TFloatField;
    entradaPorAire: TFloatField;
    entradaClase: TBooleanField;
    entradaPesoUnComAG: TFloatField;
    entradaPesoUnSueAG: TFloatField;
    entradaPesoUnSueAF: TFloatField;
    entradaProcedencia: TStringField;
    entradaAsentDesc: TStringField;
    entradaCondDesc: TStringField;
    entradaAgua1: TIntegerField;
    Cagua: TTable;
    CaguaTammax: TFloatField;
    CaguaDescripcion: TStringField;
    CaguaValor: TFloatField;
    entradafcm: TIntegerField;
    entradaRelAC: TFloatField;
    acementoResistenciaMedia: TFloatField;
    acementoSinAire: TFloatField;
    acementoConAire: TFloatField;
    entradaCemento: TStringField;
    entradaVolGrueso: TFloatField;
    VolgruesoTammax: TFloatField;
    VolgruesoMAF: TFloatField;
    VolgruesoValor: TFloatField;
    entradaPesoCemento1: TIntegerField;
    PesoEstimadoTammax: TFloatField;
    PesoEstimadoSinaire: TFloatField;
    PesoEstimadoConaire: TFloatField;
    entradaPorcHumedAG: TFloatField;
    entradaPorcHumedAF: TFloatField;
    entradaVolGruesoN: TFloatField;
    entradaPesoAG: TIntegerField;
    entradaPesoAGN: TIntegerField;
    entradaPesoArena: TIntegerField;
    entradaPesoArenaN: TIntegerField;
    entradaVolarena: TFloatField;
    entradaVolarenaN: TFloatField;
    entradaArena1: TIntegerField;
    entradaarena1N: TIntegerField;
    entradaGrava1: TIntegerField;
    entradaGrava1N: TIntegerField;
    entradaAgua2: TIntegerField;
    entradaagua2N: TIntegerField;
    Fuller: TTable;
    abrams: TTable;
    CMachaca: TTable;
    CRodado: TTable;
    ValK: TTable;
    ValKTipoCemento: TStringField;
    ValKRodado: TFloatField;
    ValKMachacado: TFloatField;
    abramsCemento: TFloatField;
    abramsTammax: TFloatField;
    abramsValor: TFloatField;
    CMachacaConsistencias: TStringField;
    CMachacaTammax: TFloatField;
    CMachacaValor: TFloatField;
    CRodadoConsistencias: TStringField;
    CRodadoTammax: TFloatField;
    CRodadoValor: TFloatField;
    entradaVALORDEK: TFloatField;
    entradaLITROS: TFloatField;
    entradaMCEMENTO: TFloatField;
    entradaMGRANULOMETRICO: TFloatField;
    entradaPORCA: TFloatField;
    entradaPORG: TFloatField;
    entradaG1: TFloatField;
    entradaG2: TFloatField;
    entradaMARENA: TFloatField;
    entradaMGRAVA: TFloatField;
    entradaMAGUA: TFloatField;
    entradaTIPOCEMENTO: TStringField;
    entradaCONSISTENCIAS: TStringField;
    entradaTIPOCEMDESC: TStringField;
    entradaCONSDESC: TStringField;
    consistencia: TQuery;
    consistenciaconsistencias: TStringField;
    entradaRELACM: TFloatField;
    Qabrams: TQuery;
    Qabramsvalor: TFloatField;
    FullerTammax: TFloatField;
    FullerValor: TFloatField;
    entradaMCAGUA: TFloatField;
    entradaVOLUARENA: TFloatField;
    entradaVOLUGRAVA: TFloatField;
    entradaVOLUCEMENTO: TFloatField;
    entradaVOLUAGUA: TFloatField;
    entradaTTAMMAX: TFloatField;
    procedure entradaCalcFields(DataSet: TDataSet);
    procedure entradaTammaxValidate(Sender: TField);
    procedure entradaRelACValidate(Sender: TField);
    procedure entradaModfinuraAFValidate(Sender: TField);
    procedure entradaExposicionChange(Sender: TField);
    procedure entradaModfinuraAGValidate(Sender: TField);
    procedure entradaPesoUnSueAGValidate(Sender: TField);
  private
    { Private declarations }
  public
    function calculoagua(tammax:real;rango:string):string;
    function calculofcm(condicion:string;fck:double):string;
    function calculoRelAC(fcm:integer;aire:boolean):string;
    function calculoCemento(agua:integer;relAC:real):string;
    function calculoVolgrueso(tammax:real;modfaf:real):string;
    function calculoPesoCemento1(tammax:real;aire:boolean):string;
    function calculoPesoAG(volgrueso:real;PucomAG:real):string;
    function redondeo(valor:real):integer;
    function interpolacion(DD,AA,d,a,Nuevo:real):real;
    function dobleinter(filaDD,filaAA,col1,col2,ref1,ref2,ref3,ref4,columna,fila:real):real;
    function Mvalordek:real;
    function calculoaguaM:real;
    function calculoCEMENTOM(litros:real;relacm:real):integer;
    function moduloG(cemento:integer;tammax:real):real;
    function calculoyy(MAF,MAG,mgranulometrico:real):real;
    function Mfuller(tammax:real):real;
    function MMG2(agua:real;cemento:integer;xx,yy,pec,pea,peg:real):real;
    function dosdecimal(num:real):real;
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}
function Tdatamodule2.dosdecimal(num:real):real;
var num1:real;
begin
     num1 := 100 * num ;
     num1:= trunc(num1);
     dosdecimal:=num1/100;
end;
function Tdatamodule2.MMG2(agua:real;cemento:integer;xx,yy,pec,pea,peg:real):real;
var
valorg2:real;
begin
             valorg2:=(1025-agua-(cemento/pec))/((xx/(yy*pea))+(1/peg));
             mmg2:=valorg2;
end;
function Tdatamodule2.Mfuller(tammax:real):real;
var
td,vd,valor:real;
begin
     fuller.open;
     if (tammax<=70) and (entradamcemento.value>400) then
        begin
         while (not fuller.eof) and (tammax>=fullertammax.value) do
            fuller.Next;
         td:=fullertammax.value;
         vd:=fullervalor.value;
            fuller.Prior;
         valor:=interpolacion (td,fullertammax.value,vd,fullervalor.value,tammax);
         Mfuller:=-valor+ vd;
        end
        else
          Mfuller := ((tammax-70)*(0.09/5))+6.60;



end;
function Tdatamodule2.calculoyy(MAF,MAG,mgranulometrico:real):real;
var
valoryy:real;
begin

             valoryy:= 100*((entradamgranulometrico.value-
             entradamodfinuraAF.value)/(entradamodfinuraAG.Value -entradamodfinuraAF.Value ));
             if (valoryy>100) then
              raise erangeerror.Create('Revise los valores correspondientes a los modulos de finura de los agregados grueso y fino');
             calculoyy:=redondeo(valoryy);

end;
function Tdatamodule2.calculoCEMENTOM(litros:real;relacm:real):integer;
var
valor:real;
begin
    valor:= litros /relacm;
    calculocementom:=redondeo(valor);
end;

function Tdatamodule2.moduloG(cemento:integer;tammax:real):real;
var
col1,col2:integer;
fila1,fila2:integer;
ref1,ref2,ref3,ref4:real;
reffiladd,reffilaaa,valor:real;
begin
     if (cemento>=275) and (cemento<=300) then
      begin
       fila1:= 275;
       fila2:=300;
      end;
     if (cemento>=300) and (cemento<=350) then
      begin
       fila1:= 300;
       fila2:=350;
      end;
     if (cemento>=350) and (cemento<=400) then
      begin
       fila1:= 350;
       fila2:=400;
      end;


     if (tammax>=9.5) and (tammax<=15) then
      begin
       col1:=10;
       col2:=15;
      end;
     if (tammax>=15) and (tammax<=20) then
      begin
       col1:=15;
       col2:=20;
      end;
     if (tammax>=20) and (tammax<=25) then
      begin
       col1:=20;
       col2:=25;
      end;
     if (tammax>=25) and (tammax<=30) then
      begin
       col1:=25;
       col2:=30;
      end;
     if (tammax>=30) and (tammax<=40) then
      begin
       col1:=30;
       col2:=40;
      end;
     if (tammax>=40) and (tammax<=60) then
      begin
       col1:=40;
       col2:=60;
      end;
     Qabrams.Close;
     Qabrams.ParamByName('Ptam').Value := col1;
     Qabrams.ParamByName('Pcem').Value := fila1;
     Qabrams.Open;
     ref1 := QabramsValor.Value;
     Qabrams.Close;
     Qabrams.ParamByName('Ptam').Value := col1;
     Qabrams.ParamByName('Pcem').Value := fila2;
     Qabrams.Open;
     ref3 := QabramsValor.Value;
     Qabrams.Close;
     Qabrams.ParamByName('Ptam').Value := col2;
     Qabrams.ParamByName('Pcem').Value := fila1;
     Qabrams.Open;
     ref2 := QabramsValor.Value;
     Qabrams.Close;
     Qabrams.ParamByName('Ptam').Value := col2;
     Qabrams.ParamByName('Pcem').Value := fila2;
     Qabrams.Open;
     ref4 := QabramsValor.Value;



     reffilaAA:=interpolacion(col2,col1,ref2,ref1,tammax);
     reffilaAA:= reffilaAA + ref2;
     reffilaDD:=interpolacion(col2,col1,ref3,ref4,tammax);
     reffilaDD:= reffilaDD + ref4;
     valor:=interpolacion(fila2,fila1,reffiladd,reffilaaa,cemento);
     modulog:= valor+reffiladd;
end;


function Tdatamodule2.calculoaguaM:real;
var
   valor,td,vd:real;
begin
        if (entradattammax.value <80) and (entradattammax.value>19) then
        if entradaclase.Value then
                begin

                        crodado.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                        crodado.Filtered := true;
                        crodado.Open;
                        while entradattammax.Value >= crodadotammax.Value do
                                crodado.Next ;
                       td:=CrodadoTammax.Value;
                       Vd:=CrodadoValor.Value;
                       Crodado.Prior;

                        valor:= interpolacion(td,crodadotammax.value,vd,crodadovalor.Value,entradattammax.Value);
                        valor := -valor + vd;
                end
                else
                begin
                        cmachaca.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                        cmachaca.Filtered := true;
                        cmachaca.Open;
                        while entradattammax.Value >= cmachacatammax.Value do
                                cmachaca.Next ;
                       td:=CmachacaTammax.Value;
                       Vd:=CmachacaValor.Value;
                       Cmachaca.Prior;

                        valor:= interpolacion(td,cmachacatammax.value,vd,cmachacavalor.Value,entradattammax.Value);
                        valor := -valor + vd;
                end
         else
                    {   if not entradaclase.Value then
                                 begin
                                        cmachaca.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                                        Cmachaca.Filtered := true;
                                        cmachaca.Open;
                                        cmachaca.last;
                                        valor:= -entradatammax.value+80+cmachacavalor.value;
                                        valor  :=- valor + cmachacavalor.value;
                                 end
                        else
                                begin
                                 crodado.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                                crodado.Filtered := true;
                                crodado.Open;

                                crodado.Last;
                                 valor:= -entradatammax.value+80+crodadovalor.value;
                                 valor := -valor + crodadovalor.value;
                                end; }

                   begin
                        if entradattammax.value>80 then
                                if entradaclase.value then
                                begin
                                        crodado.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                                        crodado.Filtered := true;
                                        crodado.Open;
                                        crodado.last;
                                        valor:= -entradattammax.value+80+crodadovalor.value;
                                end
                        else
                                begin
                                        cmachaca.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                                        Cmachaca.Filtered := true;
                                       cmachaca.Open;
                                       cmachaca.Last;
                                       valor:= -entradattammax.value+80+cmachacavalor.value;
                                end;
                       if entradattammax.value<20 then
                                if entradaclase.value then
                                begin
                                        crodado.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                                        crodado.Filtered := true;
                                        crodado.Open;
                                        crodado.first;
                                        valor:= -entradattammax.value+20+crodadovalor.value;
                                end
                        else
                                begin
                                        cmachaca.filter:= 'Consistencias='''+entradaConsistencias.Value+'''';
                                        Cmachaca.Filtered := true;
                                       cmachaca.Open;
                                       cmachaca.first;
                                       valor:= -entradattammax.value+20+cmachacavalor.value;
                                end;

                 end;


       calculoaguaM:=trunc(valor);
end;
function Tdatamodule2.Mvalordek:real;

begin
        valk.Open;
        valk.Locate('tipocemento',entradatipocemento.Value,[]);
        if entradaclase.Value then
                                   mvalordek:= valkrodado.Value/10000
                              else
                              mvalordek:= valkmachacado.Value/10000;


end;
function Tdatamodule2.dobleinter(filaDD,filaAA,col1,col2,ref1,ref2,ref3,ref4,columna,fila:real):real;
var
reffilaAA,reffilaDD:real;
begin
        reffilaAA:=interpolacion(col2,col1,ref2,ref1,columna);
        reffilaDD:=interpolacion(col2,col1,ref3,ref4,columna);
        dobleinter:=interpolacion(filadd,filaAA,reffiladd,reffilaaa,fila);
end;

function Tdatamodule2.interpolacion(DD,AA,d,a,Nuevo:real):real;
begin
        interpolacion:= ((DD-Nuevo)/(DD-AA))*(d-a);
end;

function Tdatamodule2.redondeo(valor:real):integer;
begin
        if frac(valor) <> 0 then
             redondeo:= trunc(valor) +1
        else
             redondeo := trunc(valor);
end;
function Tdatamodule2.calculoPesoAG(volgrueso:real;PucomAG:real):string;
var
        valor:double;
begin
     valor := volgrueso * PucomAG;
     if frac(valor) <> 0 then
       valor := trunc(valor) + 1;
     calculoPesoAG := floattostr(valor);
end;
function Tdatamodule2.calculoPesoCemento1(tammax:real;aire:boolean):string;
begin
     pesoestimado.Open;
     pesoestimado.Locate('tammax',tammax,[]);
     if not aire then
        calculoPesoCemento1:=inttostr(PesoEstimadoConaire.asinteger)
     else
        calculoPesoCemento1:=inttostr(PesoEstimadoSinaire.asinteger);

end;
function Tdatamodule2.calculoVolgrueso(tammax:real;modfaf:real):string;
var
   valor:real;
   tamant:real;
   tamdes:real;
   litant:real;
   litdes:real;
begin
      Volgrueso.Close;
      Volgrueso.Filter := 'Tammax='+floattostr(tammax);
      Volgrueso.Filtered := true;
      Volgrueso.Open;
      Volgrueso.First;
      if modfaf<=3 then
      begin
        while (modfaf >= VolGruesoMAF.Value) and (not VolGrueso.eof) do
            VolGrueso.Next;
        tamdes:=VolgruesoMAF.Value;
        litdes:=VolgruesoValor.Value;
        Volgrueso.Prior;
        tamant:=VolgruesoMAF.Value;
        litant:=VolgruesoValor.Value;
        valor:=((((litdes-litant)/(tamdes-tamant))*(modfaf-tamant))+litant);
      end
      else
      begin
          VolGrueso.last;
          valor:=(VolGruesoValor.value+((modfaf-3)/(0.2/0.02)*-1));
      end;
      calculoVolGrueso:=floattostr(valor);
end;
function Tdatamodule2.calculoCemento(agua:integer;relAC:real):string;
var
valor:real;
agua1,relac1:real;
begin
    agua1:= agua;
    relac1:=relac;
    valor:= agua1/relAC1;
    if frac(valor) > 0 then
      valor := trunc(valor)+1;
    calculoCemento:= inttostr(trunc(valor));
end;
function Tdatamodule2.calculoRelAC(fcm:integer;aire:boolean):string;
var
   fcma,fcmd,aca,acd,valor:real;
begin
    acemento.Open;
    acemento.first;
    if fcm<=420 then
    begin
        while fcm >= acementoResistenciamedia.Value do
                acemento.Next;
        if not aire then
        begin
            fcmd:=acementoResistenciaMedia.Value;
            acd:=acementoConAire.Value;
            acemento.Prior;
            fcma:=acementoResistenciaMedia.Value;
            aca:=acementoConAire.Value;
        end
        else
        begin
             fcmd:=acementoResistenciaMedia.Value;
            acd:=acementoSinAire.Value;
            acemento.Prior;
            fcma:=acementoResistenciaMedia.Value;
            aca:=acementoSinAire.Value;
        end;
        valor:=(((fcm-fcma)/(fcmd-fcma))*(acd-aca))+aca;

    end
    else
    begin

        valor:=0.41+((fcm-420)/(70/-0.07));
    end;

        CalculoReLAC:=floattostr(valor);
end;
function Tdatamodule2.calculofcm(condicion:string;fck:double):string;
var
valor : real;
begin
      condiciones.Open;
      condiciones.Locate('Condiciones',condicion,[]);
      valor:= fck * condicionesFactor1.value + condicionesFactor2.Value;
      if frac(valor)>0 then
        valor := trunc(valor)+1;
     calculofcm:=inttostr(trunc(valor));
end;
function Tdatamodule2.calculoagua(tammax:real;rango:string):string;
var
   valor:integer;
   tamant:real;
   tamdes:real;
   litant:real;
   litdes:real;
begin
      cagua.cLOSE;
      cagua.Filter := 'Descripcion='''+rango+'''';
      cagua.Filtered := true;
      cagua.Open;
      cagua.First;
      while (tammax >= caguatammax.Value) and (not cagua.eof) do
         cagua.Next;
     tamdes:=caguatammax.Value;
     litdes:=caguavalor.Value;
     cagua.Prior;
     tamant:=caguatammax.Value;
     litant:=caguavalor.Value;
     valor:=trunc((((litdes-litant)/(tamdes-tamant))*(tammax-tamant))+litant);
     calculoagua:=inttostr(valor);
end;
procedure TDataModule2.entradaCalcFields(DataSet: TDataSet);
begin
      entradaagua1.Text:= calculoagua(entradatammax.value,entradaExposicion.value);
      entradafcm.Text := calculofcm(entradacondiciones.Value,entradafck.Value);
      entradaRelAC.Text := calculoRelAC(entradafcm.Value,entradaaire.Value);
      entradaRelAc.Value := dosdecimal(entradaRelAc.Value);
      entradaCemento.Text := calculoCemento(entradaagua1.value,entradaRelAC.value);
      entradaVolGrueso.Text := calculoVolgrueso(entradatammax.value,entradaModfinuraAF.value);
      entradaVolGruesoN.Text := floattostr(entradaVolGrueso.value * ((100- entradaPorcReducAG.value) / 100));
      entradaPesoCemento1.Text := calculoPesoCemento1(entradatammax.value,entradaaire.value);
      entradaPesoAG.Text :=  calculoPesoAG(entradaVolGrueso.value,entradaPesoUncomAG.value);
      entradaPesoAGN.Text :=  calculoPesoAG(entradaVolGruesoN.value,entradaPesoUncomAG.value);
      entradaPesoArena.Text := inttostr(entradaPesoCemento1.value - entradaPesoAG.value - entradaCemento.asinteger - entradaAgua1.value);
      entradaPesoArenaN.Text := inttostr(entradaPesoCemento1.value - entradaPesoAGN.value - entradaCemento.asinteger - entradaAgua1.value);
      if  entradaAire.Value then
        begin
             entradaVolarena.value := 1 - entradaAgua1.value/1000 -
             (entradaVolgrueso.value*entradapesouncomag.value)/(entradapesoespag.value*1000)
             - entradacemento.asinteger / (entradaPesoEspcem.Value  * 1000)- 0.01;
             entradaVolarenaN.value := 1 - entradaAgua1.value/1000 -
             ((entradaVolgrueson.value)*entradapesouncomag.value)/(entradapesoespag.value*1000)
             - entradacemento.asinteger / (entradaPesoEspcem.Value  * 1000)- 0.01;
        end
      else
        begin
        entradaVolarena.value := 1 - entradaAgua1.value/1000 -
             (entradaVolgrueso.value*entradapesouncomag.value)/(entradapesoespag.value*1000)
             - entradacemento.asinteger / (entradaPesoEspcem.Value  * 1000)- entradaPoraire.value / 100;
             entradaVolarenaN.value := 1 - entradaAgua1.value/1000 -
             ((entradaVolgrueson.value)*entradapesouncomag.value)/(entradapesoespag.value*1000)
             - entradacemento.asinteger / (entradaPesoEspcem.Value  * 1000)- entradaPoraire.value / 100;



        end;
       entradaArena1.Value := trunc( entradapesoarena.Value * (100 + entradaPorcHumedAF.value) / 100);
       entradaArena1N.Value := trunc( entradapesoarenaN.Value * (100 + entradaPorcHumedAF.value) / 100);
       entradaGrava1.Value := redondeo( entradapesoag.Value * (100 + entradaPorcHumedAg.value) / 100);
       entradaGrava1N.Value := redondeo( entradapesoagN.Value * (100 + entradaPorcHumedAg.value) / 100);
       entradaagua2.value:= trunc (entradaagua1.Value -
                                 abs(entradapesoarena.Value*((entradaporchumedAF.value - entradaporcabsAF.value)/100))
                                -abs(entradapesoAG.value*((entradaporchumedAG.value - entradaporcabsAG.value)/100)));
       entradaagua2N.value:= trunc (entradaagua1.Value -
                                 abs(entradapesoarenaN.Value*((entradaporchumedAF.value - entradaporcabsAF.value)/100))
                                -abs(entradapesoAGN.value*((entradaporchumedAG.value - entradaporcabsAG.value)/100)));

      entradavalordek.Text:=floattostr(mvalordek);
      entradaRELACM.Value := dosdecimal(1/(entradavalordek.value * entradafcm.Value + 0.5));
      entradaLITROS.Value := calculoAGUAM;
      entradamcemento.Value := calculoCEMENTOM(entradaLITROS.Value,entradaRELACM.Value);
      if (entradamcemento.value <=400) and (entradattammax.value<=60) then
           entradamgranulometrico.value:= modulog(entradamcemento.asinteger,entradattammax.value)
      else
      if  (entradattammax.value >=25) and (entradattammax.value<=70) then
           entradamgranulometrico.value:= Mfuller(entradattammax.value)
      else
           raise econverterror.Create('El tamaño maximo nominal del agregado grueso para J. Montoya excede los rangos de las tablas, ya sea por Abrams(Cant Cemento> 400Kg o TMN >60mm) o por Fuller(TMN esta fuera de 25mm-70mm)');
    entradaporca.Value:= calculoyy(entradamodfinuraAF.value,entradamodfinuraAG.value,entradamgranulometrico.value);
    entradaporg.value:=100-entradaporca.value;
    entradag1.Value:= MMG2(entradaLITROS.value,entradamcemento.asinteger,entradaporca.value,entradaporg.value,entradapesoespcem.value,entradapesoespaf.value,entradapesoespag.value);
    entradag2.value:= redondeo(entradag1.value*entradaporca.value/entradaporg.value);
    entradag1.value:=trunc(entradag1.value);
    entradaMgrava.value:= redondeo((entradag2.value)*((entradaporchumedAG.value+100)/100));
    entradaMarena.value:= trunc((entradag1.value)*((entradaporchumedAF.value+100)/100));
    entradamCagua.value:=trunc(entradaLITROS.value- (entradag1.value*entradaporchumedAF.value)/100 -
                        (entradag2.value*entradaporchumedAG.value)/100);
    entradavoluarena.value:= entradag1.value/entradapesounsueAF.value;
    entradavolugrava.value:= entradag2.value/entradapesounsueAG.value;
    entradavoluagua.value:=  entradaLITROS.value/1000;
    entradavolucemento.value:= entradamcemento.value/ (entradapesoespcem.value*1000);


end;
procedure TDataModule2.entradaTammaxValidate(Sender: TField);
begin
       if (Sender.asfloat < 9.5) or (sender.AsFloat>150) then
           raise erangeerror.Create('Los valores Permitidos de tamaño Máximo Nominal de agregado grueso son:'
                                +chr(13)+' Entre 9.5 y 150')
end;

procedure TDataModule2.entradaRelACValidate(Sender: TField);
begin
     if (Sender.asfloat < 140) then
           raise erangeerror.Create('Los valores Permitidos de Resistemcia Media son:'
                                +chr(13)+' Minimo 140')
end;

procedure TDataModule2.entradaModfinuraAFValidate(Sender: TField);
begin
       if ((Sender.asfloat*100) < 239) then
           raise erangeerror.Create('Los valores Permitidos de Modulo de finura del agregado fino son:'
                                +chr(13)+' Minimo 2.4');
 if entradamodfinuraAg.value <= entradamodfinuraAF.value then
         raise econverterror.Create('El modulo de finura del Agregado Grueso'+chr(13)+
                                       'no puede ser menor o igual al modulo de finura del Agregado Fino');
end;

procedure TDataModule2.entradaExposicionChange(Sender: TField);
begin
     entradaAire.ReadOnly := false;
     if copy(sender.AsString,1,2) = 'SA' then
           entradaAire.Value:= true
     else
           entradaAire.Value:= false;
     entradaAire.ReadOnly := true;
end;

procedure TDataModule2.entradaModfinuraAGValidate(Sender: TField);
begin
        if entradamodfinuraAg.value <= entradamodfinuraAF.value then
         raise econverterror.Create('El modulo de finura del Agregado Grueso'+chr(13)+
                                       'no puede ser menor o igual al modulo de finura del Agregado Fino');

end;

procedure TDataModule2.entradaPesoUnSueAGValidate(Sender: TField);
begin
    if frac(sender.value)<>0 then
        raise econverterror.create('Debe introducir un valor entero');

end;

end.
