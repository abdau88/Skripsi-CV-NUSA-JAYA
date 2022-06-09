unit UMerk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, Grids, DBGrids, Mask,
  DBCtrls, DB, ADODB, ExtCtrls;

type
  TFMerk = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    AdsMerk: TADODataSet;
    dsMerk: TDataSource;
    AdsMerkkd_merk: TWideStringField;
    AdsMerknama_merk: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ActionList1: TActionList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    AdsBantuan: TADODataSet;
    dsBantuan: TDataSource;
    AdsBarang: TADODataSet;
    DsBarang: TDataSource;
    procedure BitBtn8Click(Sender: TObject);
    procedure AdsMerkBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsMerkAfterInsert(DataSet: TDataSet);
    procedure BitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsMerkAfterEdit(DataSet: TDataSet);
    procedure AdsMerkAfterPost(DataSet: TDataSet);
    procedure AdsMerkAfterDelete(DataSet: TDataSet);
    procedure AdsMerkBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMerk: TFMerk;

implementation

uses UMenu;

{$R *.dfm}

procedure TFMerk.BitBtn8Click(Sender: TObject);
begin
  close;
end;

procedure TFMerk.AdsMerkBeforePost(DataSet: TDataSet);
begin
  if DBEdit1.Text='' then
  Begin
    Application.MessageBox('Kode harus diisi','Confirm');
    DBEdit1.SetFocus;
    DBEdit1.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit2.Text='' then
  begin
    Application.MessageBox('Merk harus diisi','Confirm');
    DBEdit2.SetFocus;
    DBEdit2.Text:='';
    Abort;
    Exit;
  end
  else if DBEdit1.Enabled=True then
  begin
    if AdsBantuan.Locate('kd_merk', DBEdit1.Text,[]) then
    begin
      Application.MessageBox('Kode tidak boleh sama','Confirm');
      DBEdit1.SetFocus;
      DBEdit1.Text:='';
      Abort;
      Exit;
    end;
end;
end;
procedure TFMerk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.Merk1.Enabled:=True;
end;

procedure TFMerk.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn2.SetFocus;
end;

procedure TFMerk.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then DBEdit2.SetFocus;
end;

procedure TFMerk.AdsMerkAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TFMerk.BitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn1.SetFocus;
end;

procedure TFMerk.AdsMerkAfterEdit(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=false;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFMerk.AdsMerkAfterPost(DataSet: TDataSet);
begin
  BitBtn1.SetFocus;
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFMerk.AdsMerkAfterDelete(DataSet: TDataSet);
begin
  DBEdit1.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFMerk.AdsMerkBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  if AdsBarang.Locate('kd_merk',DBEdit1.Text,[]) then
  begin
   if DBEdit1.Enabled= false then
   begin
    AdsMerk.Delete;
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
  pesan:=MessageDlg('Yakin akan dihapus???', mtConfirmation, [mbYes, mbNo],0);
  if pesan = mrNo then
  begin
    Abort;
    Exit;
  end;
end;
end;
end.
