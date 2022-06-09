unit UTransaksiBeli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, DBActns, ActnList, ADODB,
  Grids, DBGrids, ExtCtrls;

type
  TFTransaksiPembelian = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    AdsPembelian: TADODataSet;
    AdsDetailPembelian: TADODataSet;
    AdsBarang: TADODataSet;
    dsPembelian: TDataSource;
    dsDetail: TDataSource;
    dsBarang: TDataSource;
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
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    AdsPembelianno_faktur_beli: TWideStringField;
    AdsPembeliantgl_faktur: TDateTimeField;
    AdsPembeliankd_suplier: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    AdsDetailPembeliankd_barang: TWideStringField;
    AdsDetailPembelianjumlah_item: TIntegerField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    AdsDetailPembelianharga: TStringField;
    DBEdit8: TDBEdit;
    AdsTB: TADODataSet;
    dsTB: TDataSource;
    AdsSuplier: TADODataSet;
    dsSuplier: TDataSource;
    AdsPembeliansuplier: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    AdsDetailPembelianno_faktur_beli: TWideStringField;
    AdsDetailPembelianjumlah_harga_beli: TBCDField;
    AdsPembeliantotal_harga_beli: TBCDField;
    AdsDetailPembelianbarang: TStringField;
    dsBantuan: TDataSource;
    AdsBantuan: TADODataSet;
    AdsDetailPembelianno_item_beli: TAutoIncField;
    Label4: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    procedure BitBtn15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdsPembelianAfterInsert(DataSet: TDataSet);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure AdsDetailPembelianAfterPost(DataSet: TDataSet);
    procedure AdsPembelianBeforePost(DataSet: TDataSet);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsDetailPembelianBeforePost(DataSet: TDataSet);
    procedure AdsDetailPembelianAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransaksiPembelian: TFTransaksiPembelian;

implementation

uses UMenu;

{$R *.dfm}

procedure TFTransaksiPembelian.BitBtn15Click(Sender: TObject);
begin
  close;
end;

procedure TFTransaksiPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.ransaksiBeli1.Enabled:=True;
end;

procedure TFTransaksiPembelian.AdsPembelianAfterInsert(DataSet: TDataSet);
var
  tgl:string;
begin
  DBEdit1.SetFocus;
  tgl:=DateToStr(Now);
  DBEdit2.Text:=tgl;
  DBEdit1.Enabled:=True;
  DBEdit1.Refresh;
end;

procedure TFTransaksiPembelian.DBEdit5Change(Sender: TObject);
var
  a,b,c:real;
  x:integer;
  y:string;
begin
  Val(DBEdit8.Text,a,x);
  Val(DBEdit5.Text,b,x);
  c:=a*b;
  Str(c:10:0,y);
  DBEdit6.Text:=y;

end;

procedure TFTransaksiPembelian.DBEdit6Change(Sender: TObject);
var
  a,b,c:real;
  x:integer;
  y:string;
begin
  Val(DBEdit8.Text,a,x);
  Val(DBEdit5.Text,b,x);
  c:=a*b;
  Str(c:10:0,y);
  DBEdit6.Text:=y;
end;

procedure TFTransaksiPembelian.AdsDetailPembelianAfterPost(
  DataSet: TDataSet);
var
  a:TBookmark;
  i:Extended;
begin
  with DataSet do
  begin
    DisableControls;
    a:=GetBookmark;
    a:=0;
    First;
    while not eof do
    begin
      i:=i+fieldbyname('jumlah_harga_beli').AsCurrency;
      Next;
    end;
    GotoBookmark(a);
    EnableControls;
  end;
  with AdsTB do
  begin
    Active:=False;
    Connection:=FMenu.ADOConnection1;
    CommandText:= 'select * from Pembelian where no_faktur_beli like "'+DBEdit1.Text+'"';
    Active:=True;
    Edit;
    FieldValues['total_harga_beli']:=i;
    Post;
    Refresh;
  end;
  AdsPembelian.Refresh;
  AdsDetailPembelian.Refresh;

end;

procedure TFTransaksiPembelian.AdsPembelianBeforePost(DataSet: TDataSet);
begin
  if DBEdit1.Text='' then
  begin
    Application.MessageBox('No Faktur harus diisi','Confirm');
    DBEdit1.SetFocus;
    DBEdit1.Text:='';
    Abort;
    Exit;
  end
  else if DBLookupComboBox2.Text='' then
  begin
    Application.MessageBox('Kode Suplier harus diisi','Confirm');
    DBLookupComboBox1.SetFocus;
    Abort;
    Exit;
  end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('no_faktur_beli',DBEdit1.Text,[]) then
    Begin
      Application.MessageBox('No Faktur tidak boleh sama','Confirm');
      DBEdit1.SetFocus;
      DBEdit1.Text:='';
    Abort;
    Exit;
  end;
end;
end;
procedure TFTransaksiPembelian.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#13,#8,#32,#48..#57]) then
  key:=#0
end;

procedure TFTransaksiPembelian.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text='0' then
  begin
    MessageDlg('Tidak boleh diisi nol', mtConfirmation, [mbOK],0);
    DBEdit5.SetFocus;
    DBEdit5.Text:='';
    Abort;
    Exit;
  end;
end;

procedure TFTransaksiPembelian.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //DBLookupComboBox2.SetFocus;
end;

procedure TFTransaksiPembelian.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //BitBtn2.SetFocus;
end;

procedure TFTransaksiPembelian.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //DBEdit5.SetFocus;
end;

procedure TFTransaksiPembelian.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 //BitBtn9.SetFocus;
end;

procedure TFTransaksiPembelian.AdsDetailPembelianBeforePost(
  DataSet: TDataSet);
begin
   if DBLookupComboBox1.Text='' then
  begin
    Application.MessageBox('Barang harus diisi','Confirm');
    DBLookupComboBox1.SetFocus;
  Abort;
  Exit;
  end
  else if DBEdit5.Text='' then
  begin
    Application.MessageBox('Jumlah harus diisi','Confirm');
    DBEdit5.SetFocus;
    DBEdit5.Text:='';
    Abort;
    Exit;
  end;
end;

procedure TFTransaksiPembelian.AdsDetailPembelianAfterInsert(
  DataSet: TDataSet);
begin
  DBLookupComboBox1.SetFocus;
  DBGrid2.Visible:=True;
end;

procedure TFTransaksiPembelian.FormActivate(Sender: TObject);
begin
       BITBTN1.SetFocus;
end;

procedure TFTransaksiPembelian.FormCreate(Sender: TObject);
begin
if DBText2.Caption='admin' then DBGrid1.Visible:=True;

end;

end.

