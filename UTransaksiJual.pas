unit UTransaksiJual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBActns, ActnList, Mask, DBCtrls, DB, ADODB,
  Grids, DBGrids, ComCtrls, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TFTransaksiJual = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dsTransJual: TDataSource;
    AdsTransJual: TADODataSet;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetPrior2: TDataSetPrior;
    DataSetNext2: TDataSetNext;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    AdsBarang: TADODataSet;
    dsBarang: TDataSource;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    AdsNota: TADODataSet;
    dsNota: TDataSource;
    AdsKaryawan: TADODataSet;
    dsKaryawan: TDataSource;
    Label6: TLabel;
    AdsTJ: TADODataSet;
    dsTJ: TDataSource;
    Label12: TLabel;
    Label13: TLabel;
    AdsBarangkd_barang: TWideStringField;
    AdsBarangnama_barang: TWideStringField;
    AdsBarangkd_kelompok: TWideStringField;
    AdsBarangkd_merk: TWideStringField;
    AdsBarangkd_satuan: TWideStringField;
    AdsBarangharga_satuan: TBCDField;
    AdsBarangharga_jual: TBCDField;
    AdsDetJual: TADODataSet;
    dsDetJual: TDataSource;
    AdsDetJualno_faktur: TWideStringField;
    AdsDetJualkd_barang: TWideStringField;
    AdsDetJualjumlah_item: TIntegerField;
    AdsDetJualjumlah_harga: TBCDField;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    AdsDetJualharga: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    AdsBarangKeuntungan: TIntegerField;
    DBGrid2: TDBGrid;
    AdsStok: TADODataSet;
    dsStok: TDataSource;
    Label7: TLabel;
    AdsDetJualno_item: TIntegerField;
    AdsStokkd_barang: TWideStringField;
    AdsStoknama_barang: TWideStringField;
    AdsStoknama_merk: TWideStringField;
    AdsStoknama_satuan: TWideStringField;
    AdsStokBeli: TFloatField;
    AdsStokJual: TFloatField;
    AdsStokStokAkhir: TFloatField;
    AdsDetJualbarang: TStringField;
    AdsBantuan: TADODataSet;
    DBEdit10: TDBEdit;
    AdsStokharga_jual: TBCDField;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    AdsDetJualstok: TStringField;
    QRNota: TQuickRep;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    qrdbjumlahbeli: TQRDBText;
    qrdbharga: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    BitBtn13: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    QRDBText1: TQRDBText;
    DBEdit9: TDBEdit;
    ADSUser: TADODataSet;
    DSUser: TDataSource;
    ADSUseruser: TWideStringField;
    ADSUserpassword: TWideStringField;
    ADSUsermenu1: TWideStringField;
    ADSUsermenu2: TWideStringField;
    ADSUsermenu3: TWideStringField;
    ADSUsermenu4: TWideStringField;
    ADSUsermenu5: TWideStringField;
    ADSUsermenu6: TWideStringField;
    ADSUsermenu7: TWideStringField;
    ADSUsermenu8: TWideStringField;
    ADSUsermenu9: TWideStringField;
    Label11: TLabel;
    DBText1: TDBText;
    AdsTransJualno_faktur: TWideStringField;
    AdsTransJualtgl_faktur: TDateTimeField;
    AdsTransJualkd_karyawan: TWideStringField;
    AdsTransJualtotal_harga: TBCDField;
    AdsTransJualjumlah_uang: TBCDField;
    AdsTransJualkembali: TBCDField;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    qrdbnofaktur: TQRDBText;
    QRLabel4: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    procedure AdsTransJualAfterInsert(DataSet: TDataSet);
    procedure AdsDetailAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure AdsDetJualAfterPost(DataSet: TDataSet);
    procedure AdsTransJualAfterPost(DataSet: TDataSet);
    procedure AdsTransJualBeforePost(DataSet: TDataSet);
    procedure AdsDetJualBeforePost(DataSet: TDataSet);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsDetJualAfterInsert(DataSet: TDataSet);
    procedure DBEdit6Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransaksiJual: TFTransaksiJual;

implementation

uses UMenu, Math;

{$R *.dfm}

procedure TFTransaksiJual.AdsTransJualAfterInsert(DataSet: TDataSet);
var
  tgl:string;
begin
  tgl:=DateToStr(now);
  DBEdit2.Text:=tgl;
  DBEdit1.SetFocus;
    if DBEdit1.Enabled=True then
    begin
    end;
end;

procedure TFTransaksiJual.AdsDetailAfterInsert(DataSet: TDataSet);
begin
  //DBEdit5.SetFocus;
end;

procedure TFTransaksiJual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.DetailTransJual1.Enabled:=True;
end;

procedure TFTransaksiJual.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn6.SetFocus;
end;
procedure TFTransaksiJual.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn3.SetFocus;
end;

procedure TFTransaksiJual.BitBtn7Click(Sender: TObject);
var
  a:string;
begin
  QRLabel5.Caption:=DBEdit3.Text;
  //QRDBText1.Caption:=DBLookupComboBox2.Text;
  a:='select * from DetailPenjualan where no_faktur like"' +DBEdit1.Text+'%"';
  AdsNota.Active:=False;
  AdsNota.CommandText:=a;
  AdsNota.Active:=True;
  QrNota.Preview;
  //QRDBText1.Caption:=DBEdit5.Text;
  end;

procedure TFTransaksiJual.FormCreate(Sender: TObject);
begin
  if DBText1.Caption='admin' then

  DBGrid1.Visible:=True;

//  BitBtn7.Visible:=False;
  PageControl1.TabIndex:=0;
  qrnota.Visible:=False;
  DBEdit9.Text:='';
end;

procedure TFTransaksiJual.DBEdit6Change(Sender: TObject);
var
  a,b,c:real;
  x:integer;
  y:string;
begin
  Val(DBEdit3.Text,a,x);
  Val(DBEdit6.Text,b,x);
  c:=b-a;
  Str(c:10:0,y);
  DBEdit11.Text:=y;



end;

procedure TFTransaksiJual.DBEdit8Change(Sender: TObject);
var
  a,b,c:real;
  x:integer;
  y:string;
begin
  Val(DBEdit9.Text,a,x);
  Val(DBEdit7.Text,b,x);
  c:=a*b;
  Str(c:10:0,y);
  DBEdit8.Text:=y;

end;

procedure TFTransaksiJual.DBEdit7Change(Sender: TObject);
var
  a,b,c:real;
  x:integer;
  y:string;
begin
  Val(DBEdit9.Text,a,x);
  Val(DBEdit7.Text,b,x);
  c:=a*b;
  Str(c:10:0,y);
  DBEdit8.Text:=y;

end;

procedure TFTransaksiJual.AdsDetJualAfterPost(DataSet: TDataSet);
var
  a:TBookmark;
  i:Extended;
begin
  with DataSet do
  begin
    DisableControls;
    a:=GetBookmark;
    i:=0;
    First;
    while not Eof do
    begin
      i:=i+fieldbyname('jumlah_harga').AsCurrency;
      Next;
    end;
    GotoBookmark(a);
    EnableControls;
    end;
    with AdsTJ do
    begin
      Active:=False;
      Connection:=FMenu.ADOConnection1;
      CommandText:='select * from Penjualan where no_faktur like "'+DBEdit1.Text+'"';
      Active:=True;
      Edit;
      FieldValues['total_harga']:=i;
      Post;
      Refresh;
      end;
      {AdsStok.Refresh;
      AdsTransJual.Refresh;
      AdsBarang.Refresh;
      AdsDetJual.Refresh; }
      AdsStok.Active:=False;
      AdsStok.Active:=True;
end;

procedure TFTransaksiJual.AdsTransJualAfterPost(DataSet: TDataSet);
begin
  PageControl1.ActivePage:=TabSheet2;
end;

procedure TFTransaksiJual.AdsTransJualBeforePost(DataSet: TDataSet);
var
a,b:real;
x:integer;
begin
{ val(DBEdit10.Text,a,x);
 val(DBEdit7.Text,b,x);
  if a > b then
  begin
    Application.MessageBox('Stok Tidak Mencukupi','Confirm');
    DBEdit1.SetFocus;
    DBEdit1.Text:='';
    Abort;
    Exit;
    end}
   if DBEdit1.Text='' then
  begin
    Application.MessageBox('No Faktur harus diisi','Confirm');
    DBEdit1.SetFocus;
    DBEdit1.Text:='';
    Abort;
    Exit;
    end;
    {if DBLookupComboBox2.Text='' then
    begin
      Application.MessageBox(' Kode Karyawan harus diisi','Confirm');
      DBLookupComboBox2.SetFocus;
      Abort;
      Exit;
    end; }
   if AdsBantuan.Locate('no_faktur', DBEdit1.Text,[]) then
      begin
        Application.MessageBox('No Faktur tidak boleh sama','Confirm');
        DBEdit1.SetFocus;
        DBEdit1.Text:='';
        Abort;
        Exit;
      end 
    end;

procedure TFTransaksiJual.AdsDetJualBeforePost(DataSet: TDataSet);
var
a,b:real;
x:integer;
begin
 val(DBEdit10.Text,a,x);
 val(DBEdit7.Text,b,x);
  if a < b then
  begin
    Application.MessageBox('Stok Tidak Mencukupi','Confirm');
    DBEdit7.SetFocus;
    DBEdit7.Text:='';
    Abort;
    Exit;
  end
  else  if DBLookupComboBox2.Text='' then
  begin
    Application.MessageBox('Barang harus diisi','Confirm');
    DBLookupComboBox2.SetFocus;
  Abort;
  Exit;
  end
  else if DBEdit7.Text='' then
  begin
    Application.MessageBox('Jumlah harus diisi','Confirm');
    DBEdit7.SetFocus;
    DBEdit7.Text:='';
    Abort;
    Exit;
  end;
end;

procedure TFTransaksiJual.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //BitBtn6.SetFocus;
end;

procedure TFTransaksiJual.AdsDetJualAfterInsert(DataSet: TDataSet);
begin
  DBLookupComboBox2.SetFocus;
  DBGrid2.Visible:=True;
end;

procedure TFTransaksiJual.DBEdit6Exit(Sender: TObject);
var
 a,b:real;
 x:integer;
begin
 val(DBEdit6.Text,a,x);
 val(DBEdit11.Text,b,x);
 if b<0 then
 {var
  a,b,c:real;
  x:integer;
  y:string;}
begin
  //if DBEdit6.Text < DBEdit3.Text then
  //begin
  Application.MessageBox('Uang Kurang','Confirm');
  DBEdit6.SetFocus;
  DBEdit6.Text:='';
  Abort;
  Exit;
  DBEdit9.Enabled:=True;
  end;{ else
  if DBEdit6.Text < DBEdit11.Text then
  Val(DBEdit3.Text,a,x);
  Val(DBEdit6.Text,b,x);
  c:=b-a;
  Str(c:10:0,y);
  Edit1.Text:=y;   } 
end;

procedure TFTransaksiJual.Edit1Change(Sender: TObject);
{var
  a,b,c:real;
  x:integer;
  y:string;}
begin
  {Val(DBEdit3.Text,a,x);
  Val(DBEdit6.Text,b,x);
  c:=a-b;
  Str(c:10:0,y);
  Edit1.Text:=y;}
end;

procedure TFTransaksiJual.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#13,#8,#32,#48..#57]) then
  key:=#0;
end;

procedure TFTransaksiJual.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text='0' then
  begin
    MessageDlg('Tidak boleh diisi nol', mtConfirmation, [mbOK],0);
    DBEdit7.SetFocus;
    DBEdit7.Text:='';
    Abort;
    Exit;
  end;
end;

end.

