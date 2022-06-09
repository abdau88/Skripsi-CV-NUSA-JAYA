unit ULapJualPerPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, ExtCtrls,
  QRCtrls, QuickRpt;

type
  TFLapJualPerPeriode = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsLapJual: TDataSource;
    AdsLapJual: TADODataSet;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    TitleBand1: TQRBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLapJualPerPeriode: TFLapJualPerPeriode;

implementation

uses UMenu;

{$R *.dfm}

procedure TFLapJualPerPeriode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.PenjualanPeriode1.Enabled:=True;
end;

procedure TFLapJualPerPeriode.BitBtn1Click(Sender: TObject);
var
  a:string;
  b,c:TDateTime;
begin
  b:=(DateTimePicker1.Date)-1;
  c:=(DateTimePicker2.Date);
  a:= 'select * from QLapJual where tgl_faktur >= :d and tgl_faktur <= :e';
  AdsLapJual.Active:=False;
  AdsLapJual.CommandText:=a;
  AdsLapJual.Parameters.ParamByName('d').Value:=b;
  AdsLapJual.Parameters.ParamByName('e').Value:=c;
  AdsLapJual.Active:=True;

end;

procedure TFLapJualPerPeriode.BitBtn2Click(Sender: TObject);
begin
  //QRLabel12.Caption:=Edit1.Text;
  //QRLabel15.Caption:=Edit2.Text;
  
  QuickRep1.Preview;
end;

procedure TFLapJualPerPeriode.DateTimePicker1Change(Sender: TObject);
var
  tgl:string;
begin
  tgl:=DateToStr(DateTimePicker1.Date);
  Edit1.Text:=tgl;

end;

procedure TFLapJualPerPeriode.DateTimePicker2Change(Sender: TObject);
var
  tgl:string;
begin
  tgl:=DateToStr(DateTimePicker2.Date);
  Edit2.Text:=tgl;

end;

procedure TFLapJualPerPeriode.FormCreate(Sender: TObject);
begin
  QuickRep1.Visible:=False;
end;

procedure TFLapJualPerPeriode.BitBtn3Click(Sender: TObject);
begin
  close;
end;

end.
