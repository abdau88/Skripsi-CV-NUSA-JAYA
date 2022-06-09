unit ULapPenjualanBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, QRCtrls;

type
  TFLapPenjualan = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    AdsLapPenjualan: TADODataSet;
    dsLapPenjualan: TDataSource;
    AdsPenjualan: TADODataSet;
    dsPenjualan: TDataSource;
    DBGrid2: TDBGrid;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    BitBtn2: TBitBtn;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLapPenjualan: TFLapPenjualan;

implementation

uses UMenu;

{$R *.dfm}

procedure TFLapPenjualan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.PenjualanBarang1.Enabled:=true;
end;

procedure TFLapPenjualan.BitBtn1Click(Sender: TObject);
//var
  //a:string;
  //b,c:TDateTime;
begin
  {b:=(DateTimePicker1.Date)-1;
  c:=(DateTimePicker2.Date);
  a:= 'select * from Penjualan where tgl_faktur >= :d and tgl_faktur <= :e ';
  AdsLapPenjualan.Active:=False;
  AdsLapPenjualan.CommandText:=a;
  AdsLapPenjualan.Parameters.ParamByName('d').Value:=b;
  AdsLapPenjualan.Parameters.ParamByName('e').Value:=c;
  AdsLapPenjualan.Active:=True; }
  close;
end;

procedure TFLapPenjualan.BitBtn2Click(Sender: TObject);
begin
  //QRLabel10.Caption:=Edit1.Text;
  //QRLabel11.Caption:=Edit2.Text;
  QuickRep1.Preview;
end;

procedure TFLapPenjualan.DateTimePicker1Change(Sender: TObject);
//var
  //tgl:string;
begin
  //tgl:=DateToStr(DateTimePicker1.Date);
  //Edit1.Text:=tgl;

end;

procedure TFLapPenjualan.DateTimePicker2Change(Sender: TObject);
//var
  //tgl:string;
begin
  //tgl:=DateToStr(DateTimePicker2.Date);
  //Edit2.Text:=tgl;

end;

procedure TFLapPenjualan.SpeedButton1Click(Sender: TObject);
var
  a:string;
begin
  case ComboBox1.ItemIndex of
  0:begin
  a:= 'select * from QLapJual where kd_barang like "%'+ Edit1.Text +'%"';
  AdsLapPenjualan.Active:=False;
  AdsLapPenjualan.CommandText:=a;
  AdsLapPenjualan.Active:=True;
  end;

  1:begin
  a:= 'select * from QLapJual where nama_barang like "%'+ Edit1.Text +'%"';
  AdsLapPenjualan.Active:=False;
  AdsLapPenjualan.CommandText:=a;
  AdsLapPenjualan.Active:=True;
  end;

  2:begin
  a:= 'select * from QLapJual where no_faktur like "%'+ Edit1.Text +'%"';
  AdsLapPenjualan.Active:=False;
  AdsLapPenjualan.CommandText:=a;
  AdsLapPenjualan.Active:=True;
  end;
  end;
  end;
procedure TFLapPenjualan.ComboBox1Click(Sender: TObject);
begin
  Edit1.Enabled:=True;
  Edit1.SetFocus;
end;

procedure TFLapPenjualan.FormCreate(Sender: TObject);
begin
  QuickRep1.Visible:=False;
end;

end.
