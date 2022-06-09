unit ULapBeliPerPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, QRCtrls,
  QuickRpt, Buttons, ComCtrls;

type
  TFLaporanPerPeriode = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    AdsLapBeli: TADODataSet;
    dsLapBeli: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanPerPeriode: TFLaporanPerPeriode;

implementation

uses UMenu;

{$R *.dfm}

procedure TFLaporanPerPeriode.DateTimePicker1Change(Sender: TObject);
var
  tgl:string;
begin
  tgl:=DateToStr(DateTimePicker1.Date);
  Edit1.Text:=tgl;
end;

procedure TFLaporanPerPeriode.DateTimePicker2Change(Sender: TObject);
var
  tgl:string;
begin
  tgl:=DateToStr(DateTimePicker2.Date);
  Edit2.Text:=tgl;
end;

procedure TFLaporanPerPeriode.BitBtn1Click(Sender: TObject);
var
  a:string;
  b,c:TDateTime;
begin
  b:=(DateTimePicker1.Date)-1;
  c:=(DateTimePicker2.Date);
  a:= 'select * from QLapBeli where tgl_faktur >= :d and tgl_faktur <= :e';
  AdsLapBeli.Active:=False;
  AdsLapBeli.CommandText:=a;
  AdsLapBeli.Parameters.ParamByName('d').Value:=b;
  AdsLapBeli.Parameters.ParamByName('e').Value:=c;
  AdsLapBeli.Active:=True;
end;

procedure TFLaporanPerPeriode.BitBtn2Click(Sender: TObject);
begin
  QRLabel11.Caption:=Edit1.Text;
  QRLabel14.Caption:=Edit2.Text;

  QuickRep1.Preview;
end;

procedure TFLaporanPerPeriode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.PembelianPeriode1.Enabled:=True;
end;

procedure TFLaporanPerPeriode.FormCreate(Sender: TObject);
begin
  QuickRep1.Visible:=False;
end;

procedure TFLaporanPerPeriode.BitBtn3Click(Sender: TObject);
begin
  close;
end;

end.
