unit UBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, DBActns;

type
  TFBarang = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
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
    AdsMerk: TADODataSet;
    AdsSatuan: TADODataSet;
    AdsStok: TADODataSet;
    dsMerk: TDataSource;
    dsSatuan: TDataSource;
    dsStok: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    AdsKelompok: TADODataSet;
    AdsBarang: TADODataSet;
    dsMasKel: TDataSource;
    dsKelompok: TDataSource;
    dsBarang: TDataSource;
    AdsMasKel: TADODataSet;
    AdsBarangkd_barang: TWideStringField;
    AdsBarangnama_barang: TWideStringField;
    AdsBarangkd_kelompok: TWideStringField;
    AdsBarangkd_merk: TWideStringField;
    AdsBarangkd_satuan: TWideStringField;
    AdsBarangharga_satuan: TBCDField;
    AdsBarangharga_jual: TBCDField;
    AdsBarangsatuan: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    AdsBarangmerk: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    AdsBarangKeuntungan: TIntegerField;
    AdsBantuan: TADODataSet;
    dsBantuan: TDataSource;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    AdsDetTransJual: TADODataSet;
    dsDetTransJual: TDataSource;
    AdsDetTransBeli: TADODataSet;
    DdsDetTransBeliataSource1: TDataSource;
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure AdsKelompokAfterInsert(DataSet: TDataSet);
    procedure AdsBarangAfterInsert(DataSet: TDataSet);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsBarangBeforePost(DataSet: TDataSet);
    procedure AdsKelompokBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsBarangAfterPost(DataSet: TDataSet);
    procedure AdsBarangBeforeDelete(DataSet: TDataSet);
    procedure AdsBarangAfterEdit(DataSet: TDataSet);
    procedure AdsBarangAfterDelete(DataSet: TDataSet);
    procedure AdsKelompokAfterEdit(DataSet: TDataSet);
    procedure AdsKelompokAfterDelete(DataSet: TDataSet);
    procedure BitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsKelompokAfterPost(DataSet: TDataSet);
    procedure AdsKelompokBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBarang: TFBarang;

implementation

uses UMenu, UStokBarang;

{$R *.dfm}

procedure TFBarang.BitBtn8Click(Sender: TObject);
begin
  Close;
end;

procedure TFBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 FMenu.Barang1.Enabled:=True;
end;

procedure TFBarang.DBEdit3Change(Sender: TObject);
var
  a,b,c:real;
  x:integer;
  y:string;
begin
  Val(DBEdit4.Text,a,x);
  Val(DBEdit3.Text,b,x);
  c:=a*b;
  Str(c:10:0,y);
  DBEdit5.Text:=y;
end;

procedure TFBarang.DBEdit4Change(Sender: TObject);
var
  p,q,r,s:real;
  x:integer;
  y:string;
begin
  Val(DBEdit3.Text,p,x);
  Val(DBEdit4.Text,q,x);
  r:=p*q/100;
  Str(r:10:0,y);
  //Pajak.Text:=y;
  Val(DBEdit3.Text,p,x);
  //Val(Pajak.Text,r,x);
  s:=p+r;
  Str(s:10:0,y);
  DBEdit5.Text:=y;
end;

procedure TFBarang.AdsKelompokAfterInsert(DataSet: TDataSet);
begin
  DBEdit6.SetFocus;
end;

procedure TFBarang.AdsBarangAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TFBarang.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn9.SetFocus;
end;

procedure TFBarang.AdsBarangBeforePost(DataSet: TDataSet);
begin
  if DBEdit1.Text='' then
  begin
    Application.MessageBox('Kode harus diisi','Confirm');
    DBEdit1.SetFocus;
    DBEdit1.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit2.Text='' then
  begin
    Application.MessageBox('Barang harus diisi', 'Confirm');
    DBEdit2.SetFocus;
    DBEdit2.Text:='';
    Abort;
    Exit;
  end
  else if DBLookupComboBox1.Text='' then
  begin
    Application.MessageBox('Satuan harus diisi','Confirm');
    DBLookupComboBox1.SetFocus;
    Abort;
    Exit;
  end
  else if DBLookupComboBox2.Text='' then
  begin
    Application.MessageBox('Merk harus diisi','Confirm');
    DBLookupComboBox2.SetFocus;
    Abort;
    Exit;
  end
  else if DBEdit3.Text='' then
  begin
    Application.MessageBox('Harga harus diisi','Confirm');
    DBEdit3.SetFocus;
    DBEdit3.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit4.Text='' then
  begin
    Application.MessageBox('Keuntungan harus diisi','Confirm');
    DBEdit4.SetFocus;
    DBEdit4.Text:='';
    Abort;
    Exit;
 end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('kd_barang', DBEdit1.Text,[]) then
    begin
      Application.MessageBox('Kode tidak boleh sama','Confirm');
      DBEdit1.SetFocus;
      DBEdit1.Text:='';
      Abort;
      Exit;
    end;
  end;
end;
procedure TFBarang.AdsKelompokBeforePost(DataSet: TDataSet);
begin
  if DBEdit6.Text='' then
  begin
    Application.MessageBox('Kode harus diisi','Confirm');
    DBEdit6.SetFocus;
    DBEdit6.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit7.Text='' then
  begin
    Application.MessageBox('Kelompok harus diisi','Confirm');
    DBEdit7.SetFocus;
    DBEdit7.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('kd_kelompok', DBEdit6.Text,[]) then
    begin
      Application.MessageBox('Kode tidak boleh sama','Confirm');
      DBEdit6.SetFocus;
      DBEdit6.Text:='';
      Abort;
      Exit;
    end;
  end;
end;

procedure TFBarang.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  Perform(CM_DIALOGKEY, VK_TAB,0);
end;

procedure TFBarang.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //BitBtn2.SetFocus;
end;

procedure TFBarang.AdsBarangAfterPost(DataSet: TDataSet);
begin
 // AdsStok.Insert;
 // AdsStok.FieldValues['kd_barang']:=DBEdit1.Text;
  //AdsStok.Post;
  //AdsStok.Refresh;
  BitBtn1.SetFocus;
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;

end;

procedure TFBarang.AdsBarangBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  {if AdsDetTransJual.Locate('kd_barang',DBEdit1.Text,[]) then
  begin
   if DBEdit1.Enabled= false then
   begin
    AdsBarang.Delete;
   end
   else
   begin
    Application.MessageBox('Data sedang dipakai di Form Transaksi Penjualan,Data Tidak Boleh Dihapus!!','confirm');
   abort;
   exit;
   end;
   end
  else
  if DBEdit1.Enabled=true then
  begin
  pesan:=MessageDlg('Yakin akan dihapus???' , mtConfirmation, [mbYes, mbNo],0);
  if pesan = mrNo then
  begin
    Abort;
    Exit;
  end;
end
else}
  if AdsDetTransBeli.Locate('kd_barang',DBEdit1.Text,[]) then
  begin
   if DBEdit1.Enabled= false then
   begin
    AdsBarang.Delete;
   end
   else
   begin
    Application.MessageBox('Data sedang dipakai di Form Transaksi Pembelian,Data Tidak Boleh Dihapus!!','confirm');
   abort;
   exit;
   end;
   end
  else
  if DBEdit1.Enabled=true then
  begin
  pesan:=MessageDlg('Yakin akan dihapus???' , mtConfirmation, [mbYes, mbNo],0);
  if pesan = mrNo then
  begin
    Abort;
    Exit;
  end;
end;
  //AdsStok.Delete;
  //AdsStok.Refresh;
end;

procedure TFBarang.AdsBarangAfterEdit(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=False;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFBarang.AdsBarangAfterDelete(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
  //AdsBantuan.Refresh;
  //DBEdit1.Enabled:=False;
  //AdsBantuan.Active:=False;
  //AdsBantuan.Active:=True;
end;

procedure TFBarang.AdsKelompokAfterEdit(DataSet: TDataSet);
begin
  DBEdit6.Enabled:=False;
  AdsMasKel.Active:=False;
  AdsMasKel.Active:=True;
end;

procedure TFBarang.AdsKelompokAfterDelete(DataSet: TDataSet);
begin
  DBEdit6.Enabled:=True;
  AdsMasKel.Active:=False;
  AdsMasKel.Active:=True;
end;

procedure TFBarang.BitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  BitBtn1.SetFocus;
end;

procedure TFBarang.AdsKelompokAfterPost(DataSet: TDataSet);
begin
  DBEdit6.Enabled:=True;
  AdsMasKel.Active:=False;
  AdsMasKel.Active:=True;
end;

procedure TFBarang.AdsKelompokBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  if AdsBarang.Locate('kd_kelompok',DBEdit6.Text,[]) then
  begin
   if DBEdit6.Enabled= false then
   begin
    AdsKelompok.Delete;
   end
   else
   begin
    Application.MessageBox('Data sedang dipakai di Form Barang,Data Tidak Boleh Dihapus!!','confirm');
   abort;
   exit;
   end;
   end
  else
  if DBEdit1.Enabled=true then
  begin
  pesan:=MessageDlg('Yakin akan dihapus???' , mtConfirmation, [mbYes,mbNo],0);
  if pesan = mrNo then
  begin
    Abort;
    Exit;
  end;
end;
end;

end.

