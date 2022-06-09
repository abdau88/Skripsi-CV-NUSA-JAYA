unit UKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBActns, ActnList, Grids, DBGrids,
  ADODB, Buttons, ExtCtrls;

type
  TFKaryawan = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ActionList1: TActionList;
    AdsKaryawan: TADODataSet;
    DBGrid1: TDBGrid;
    dsKaryawan: TDataSource;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    AdsKaryawankd_karyawan: TWideStringField;
    AdsKaryawannama: TWideStringField;
    AdsKaryawanalamat: TWideStringField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    dsBantuan: TDataSource;
    AdsBantuan: TADODataSet;
    AdsTransJual: TADODataSet;
    dsTransJual: TDataSource;
    procedure BitBtn8Click(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdsKaryawanBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsKaryawanAfterInsert(DataSet: TDataSet);
    procedure AdsKaryawanAfterEdit(DataSet: TDataSet);
    procedure AdsKaryawanAfterDelete(DataSet: TDataSet);
    procedure AdsKaryawanAfterPost(DataSet: TDataSet);
    procedure BitBtn3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsKaryawanBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKaryawan: TFKaryawan;

implementation

uses UMenu;

{$R *.dfm}

procedure TFKaryawan.BitBtn8Click(Sender: TObject);
begin
 close;
end;

procedure TFKaryawan.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn3.SetFocus;
end;

procedure TFKaryawan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 FMenu.Karyawan1.Enabled:=True;
end;

Function Vhuruf(const text: string): Boolean;
const
  angka =['a'..'z','A'..'Z'];
var
  I: Integer;
begin
  Result := False;
  iF (Length(text) = 0) or not (text[1] in angka) then Exit;
  for I := 2 to Length(text) do if not (text[I] in angka) then Exit;
  Result := True;
end;
procedure TFKaryawan.AdsKaryawanBeforePost(DataSet: TDataSet);
begin
   if not Vhuruf(dbedit2.Text) then
  begin
   showmessage('Nama Karyawan harus HURUF');
   dbedit2.setfocus;
   DBEdit2.Text:='';
    Abort;
  end;
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
    Application.MessageBox('Nama harus diisi','Confirm');
    DBEdit2.SetFocus;
    DBEdit2.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit5.Text='' then
  begin
    Application.MessageBox('Alamat harus diisi','Confirm');
    DBEdit5.SetFocus;
    DBEdit5.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('kd_karyawan', DBEdit1.Text,[]) then
    begin
      Application.MessageBox('Kode tidak boleh sama','Confirm');
      DBEdit1.SetFocus;
      DBEdit1.Text:='';
      Abort;
      Exit;
    end;
  end;
end;

procedure TFKaryawan.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  Perform(CM_DIALOGKEY, VK_TAB,0);
end;

procedure TFKaryawan.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn2.SetFocus;
end;

procedure TFKaryawan.AdsKaryawanAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TFKaryawan.AdsKaryawanAfterEdit(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=False;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFKaryawan.AdsKaryawanAfterDelete(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFKaryawan.AdsKaryawanAfterPost(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFKaryawan.BitBtn3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  BitBtn1.SetFocus;
end;

procedure TFKaryawan.AdsKaryawanBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  if AdsTransJual.Locate('kd_karyawan',DBEdit1.Text,[]) then
  begin
   if DBEdit1.Enabled= false then
   begin
    AdsKaryawan.Delete;
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
end;
end;

end.
