unit USatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, DBActns, ActnList, ADODB,
  Grids, DBGrids, ExtCtrls;

type
  TFSatuan = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    AdsSatuan: TADODataSet;
    dsSatuan: TDataSource;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BitBtn7: TBitBtn;
    AdsBantuan: TADODataSet;
    dsBantuan: TDataSource;
    dsBarang: TDataSource;
    AdsBarang: TADODataSet;
    AdsSatuankd_satuan: TWideStringField;
    AdsSatuannama_satuan: TWideStringField;
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsSatuanBeforePost(DataSet: TDataSet);
    procedure AdsSatuanAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsSatuanAfterEdit(DataSet: TDataSet);
    procedure AdsSatuanAfterDelete(DataSet: TDataSet);
    procedure AdsSatuanAfterPost(DataSet: TDataSet);
    procedure AdsSatuanBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSatuan: TFSatuan;

implementation

uses UMenu;

{$R *.dfm}

procedure TFSatuan.BitBtn8Click(Sender: TObject);
begin
 close;
end;

procedure TFSatuan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 FMenu.Satuan1.Enabled:=true;
end;

procedure TFSatuan.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn3.SetFocus;
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
procedure TFSatuan.AdsSatuanBeforePost(DataSet: TDataSet);
begin
  if not Vhuruf(dbedit2.Text) then
  begin
   showmessage('Nama Satuan harus HURUF');
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
    Application.MessageBox('Satuan harus diisi','Confirm');
    DBEdit2.SetFocus;
    DBEdit2.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('kd_satuan', DBEdit1.Text,[]) then
    begin
      Application.MessageBox(' Kode tidak boleh sama','Confirm');
      DBEdit1.SetFocus;
      DBEdit1.Text:='';
      Abort;
      Exit;
    end;
  end;
end;

procedure TFSatuan.AdsSatuanAfterInsert(DataSet: TDataSet);
begin

 DBEdit1.SetFocus;
end;

procedure TFSatuan.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then DBEdit2.SetFocus;
end;

procedure TFSatuan.BitBtn3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn1.SetFocus;
end;

procedure TFSatuan.AdsSatuanAfterEdit(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=False;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFSatuan.AdsSatuanAfterDelete(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFSatuan.AdsSatuanAfterPost(DataSet: TDataSet);
begin
  BitBtn1.SetFocus;
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;  
end;

procedure TFSatuan.AdsSatuanBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  if AdsBarang.Locate('kd_satuan',DBEdit1.Text,[]) then
  begin
   if DBEdit1.Enabled= false then
   begin
    AdsSatuan.Delete;
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
  pesan:=MessageDlg('Yakin akan dihapus???' , mtConfirmation,[mbYes,mbNo],0);
  if pesan = mrNo then
  begin
    Abort;
    Exit;
  end;
  end;
end;
procedure TFSatuan.FormActivate(Sender: TObject);
begin
bitbtn1.SetFocus
end;

end.
