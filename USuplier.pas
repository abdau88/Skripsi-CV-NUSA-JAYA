unit USuplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBActns, ActnList, ADODB, Grids,
  DBGrids, Buttons, ExtCtrls;

type
  TFSuplier = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    AdsSuplier: TADODataSet;
    dsSuplier: TDataSource;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    AdsSuplierkd_suplier: TWideStringField;
    AdsSupliernama: TWideStringField;
    AdsSuplieralamat: TWideStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    AdsBantuan: TADODataSet;
    dsBantuan: TDataSource;
    AdsSupliertelp: TWideStringField;
    AdsTransBeli: TADODataSet;
    dsTransBeli: TDataSource;
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdsSuplierBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AdsSuplierAfterInsert(DataSet: TDataSet);
    procedure AdsSuplierAfterEdit(DataSet: TDataSet);
    procedure AdsSuplierAfterDelete(DataSet: TDataSet);
    procedure AdsSuplierAfterPost(DataSet: TDataSet);
    procedure AdsSuplierBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSuplier: TFSuplier;

implementation

uses UMenu;

{$R *.dfm}

procedure TFSuplier.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=13 then BitBtn2.SetFocus;
end;

procedure TFSuplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 FMenu.Suplier1.Enabled:=true;
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
procedure TFSuplier.AdsSuplierBeforePost(DataSet: TDataSet);
begin
  if not Vhuruf(dbedit2.Text) then
  begin
   showmessage('Nama Suplier harus HURUF');
   dbedit2.setfocus;
   DBEdit2.Text:='';
    Abort;
    end;
    if Vhuruf(dbedit4.Text) then
  begin
   showmessage('Nama Telp harus Angka');
   dbedit4.setfocus;
   DBEdit4.Text:='';
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
    Application.MessageBox('Suplier harus diisi','Confirm');
    DBEdit2.SetFocus;
    DBEdit2.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit3.Text='' then
  begin
    Application.MessageBox('Alamat harus diisi','Confirm');
    DBEdit3.SetFocus;
    DBEdit3.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit4.Text='' then
  begin
    Application.MessageBox('Telp harus diisi','Comfirm');
    DBEdit4.SetFocus;
    DBEdit4.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('kd_suplier', DBEdit1.Text,[]) then
    begin
      Application.MessageBox('Kode tidak boleh sama','Confirm');
      DBEdit1.SetFocus;
      DBEdit1.Text:='';
      Abort;
      Exit;
    end;
  end;
end;


procedure TFSuplier.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  Perform(CM_DIALOGKEY, VK_TAB,0);
end;

procedure TFSuplier.AdsSuplierAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TFSuplier.AdsSuplierAfterEdit(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=False;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFSuplier.AdsSuplierAfterDelete(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFSuplier.AdsSuplierAfterPost(DataSet: TDataSet);
begin
  BitBtn1.SetFocus;
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFSuplier.AdsSuplierBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  if AdsTransBeli.Locate('kd_suplier',DBEdit1.Text,[]) then
  begin
   if DBEdit1.Enabled= false then
   begin
    AdsSuplier.Delete;
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
  pesan:=MessageDlg('Yakin akan dihapus???' , mtConfirmation,[ mbYes, mbNo],0);
  if pesan = mrNo then
  begin
    Abort;
    Exit;
  end;
end;
end;
end.
