unit ULapPembelianBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons,
  ComCtrls, ExtCtrls, DBCtrls;

type
  TFLapPembelian = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    AdsPembelian: TADODataSet;
    AdsLapBeli: TADODataSet;
    dsPembelian: TDataSource;
    dsLapBeli: TDataSource;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLapPembelian: TFLapPembelian;

implementation

uses UMenu;

{$R *.dfm}

procedure TFLapPembelian.BitBtn2Click(Sender: TObject);
begin
  //QRLabel10.Caption:=Edit1.Text;
  //QRLabel11.Caption:=Edit2.Text;

  QuickRep1.Preview;
end;

procedure TFLapPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.PembelianBarang1.Enabled:=True;
end;

procedure TFLapPembelian.BitBtn1Click(Sender: TObject);
//var
  //a:string;
  //b,c:TDateTime;
begin
  {b:=(DateTimePicker1.Date)-1;
  c:=(DateTimePicker2.Date);
  a:= 'select * from Pembelian where tgl_faktur >= :d and tgl_faktur <= :e';
  AdsLapBeli.Active:=False;
  AdsLapBeli.CommandText:=a;
  AdsLapBeli.Parameters.ParamByName('d').Value:=b;
  AdsLapBeli.Parameters.ParamByName('e').Value:=c;
  AdsLapBeli.Active:=True;}
  close;
end;

procedure TFLapPembelian.DateTimePicker1Change(Sender: TObject);
//var
  //tgl:string;
begin
  //tgl:=DateToStr(DateTimePicker1.Date);
  //Edit1.Text:=tgl;
end;

procedure TFLapPembelian.DateTimePicker2Change(Sender: TObject);
//var
  //tgl:string;
begin
  //tgl:=DateToStr(DateTimePicker1.Date);
  //Edit2.Text:=tgl;
  
end;

procedure TFLapPembelian.FormCreate(Sender: TObject);
begin
  QuickRep1.Visible:=False;
end;

procedure TFLapPembelian.SpeedButton1Click(Sender: TObject);
var
  a:string;
begin
  case ComboBox1.ItemIndex of
  0:begin
  a:= 'select * from QLapBeli where kd_barang like "%'+ Edit1.Text +'%"';
  AdsLapBeli.Active:=False;
  AdsLapBeli.CommandText:=a;
  AdsLapBeli.Active:=True;
  end;

  1:begin
  a:= 'select * from QLapBeli where nama_barang like "%'+ Edit1.Text +'%"';
  AdsLapBeli.Active:=False;
  AdsLapBeli.CommandText:=a;
  AdsLapBeli.Active:=True;

end;
end;
end;
procedure TFLapPembelian.ComboBox1Click(Sender: TObject);
begin
  Edit1.Enabled:=True;
  Edit1.SetFocus;
end;

end.
