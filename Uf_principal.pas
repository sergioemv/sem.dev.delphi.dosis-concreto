unit Uf_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, ExtCtrls, Buttons;

type
  Tf_principal = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    Label22: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label23: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Bevel4: TBevel;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    PrintDialog1: TPrintDialog;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_principal: Tf_principal;

implementation

uses m_datos, Uf_resultado;

{$R *.dfm}

procedure Tf_principal.BitBtn1Click(Sender: TObject);
begin
     f_resultado.showmodal;
end;

end.
