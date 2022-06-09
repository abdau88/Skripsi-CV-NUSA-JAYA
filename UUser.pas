unit UUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, DBActns, ActnList, DB,
  ADODB, Mask;

type
  TFUser = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
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
    Label1: TLabel;
    DBEdtUser: TDBEdit;
    Label2: TLabel;
    DBEdtPass: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    AdsUser: TADODataSet;
    dsUser: TDataSource;
    AdsBantuan: TADODataSet;
    dsBantuan: TDataSource;
    AdsBantuanuser: TWideStringField;
    AdsBantuanpassword: TWideStringField;
    AdsBantuanmenu1: TWideStringField;
    AdsBantuanmenu2: TWideStringField;
    AdsBantuanmenu3: TWideStringField;
    AdsBantuanmenu4: TWideStringField;
    AdsBantuanmenu5: TWideStringField;
    AdsBantuanmenu6: TWideStringField;
    AdsBantuanmenu7: TWideStringField;
    AdsBantuanmenu8: TWideStringField;
    AdsBantuanmenu9: TWideStringField;
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdtUserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure AdsUserAfterInsert(DataSet: TDataSet);
    procedure DBEdtPassClick(Sender: TObject);
    procedure AdsUserBeforePost(DataSet: TDataSet);
    procedure DBEdtPassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdsUserBeforeDelete(DataSet: TDataSet);
    procedure AdsUserAfterDelete(DataSet: TDataSet);
    procedure AdsUserAfterEdit(DataSet: TDataSet);
    procedure AdsUserAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUser: TFUser;

implementation

uses UMenu;

{$R *.dfm}

procedure TFUser.BitBtn8Click(Sender: TObject);
begin
 close;
end;

procedure TFUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  FMenu.UserRight1.Enabled:=true;
end;

procedure TFUser.DBEdtUserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then DBEdtPass.SetFocus;
end;

procedure TFUser.FormCreate(Sender: TObject);
begin
  DBCheckBox1.Checked:=False;
  DBCheckBox2.Checked:=False;
  DBCheckBox3.Checked:=False;
  DBCheckBox4.Checked:=False;
  DBCheckBox5.Checked:=False;
end;

procedure TFUser.AdsUserAfterInsert(DataSet: TDataSet);
begin
  DBEdtUser.SetFocus;
  DBCheckBox1.Checked:=False;
  DBCheckBox2.Checked:=False;
  DBCheckBox3.Checked:=False;
  DBCheckBox4.Checked:=False;
  DBCheckBox5.Checked:=False;
end;

procedure TFUser.DBEdtPassClick(Sender: TObject);
begin
  if AdsUser.Fields[2].AsString='1' then
    DBCheckBox1.Checked:=True
  else
  if AdsUser.Fields[2].AsString='0' then
    DBCheckBox1.Checked:=False;
end;

procedure TFUser.AdsUserBeforePost(DataSet: TDataSet);
begin
  if DBEdtUser.Text='' then
  begin
  Application.MessageBox('User harus diisi','Confirm');
  DBEdtUser.SetFocus;
  DBEdtUser.Text:='';
  Abort;
  Exit;
  end
  else if DBEdtPass.Text='' then
  begin
  Application.MessageBox('Password harus diisi','Confirm');
  DBEdtPass.SetFocus;
  DBEdtPass.Text:='';
  Abort;
  Exit;
  end
  else if DBEdtUser.Enabled=True then
  begin
    if AdsBantuan.Locate('user', DBEdtUser.Text,[]) then
    begin
      Application.MessageBox('User tidak boleh sama','Confirm');
      DBEdtUser.SetFocus;
      DBEdtUser.Text:='';
      Abort;
      Exit;
    end;
  end;
end;


procedure TFUser.DBEdtPassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then BitBtn2.SetFocus;
end;

procedure TFUser.AdsUserBeforeDelete(DataSet: TDataSet);
var
  pesan:word;
begin
  if DBEdtUser.Text='admin' then
  begin
  Application.MessageBox('Admin tidak bisa dihapus..!!!','Confirm');
  //DBEdtUser.SetFocus;
  //DBEdtUser.Text:='';
  Abort;
  Exit;
  end;
  pesan:=MessageDlg('Yakin akan dihapus???' , mtConfirmation, [mbYes,mbNo],0);
   if pesan = mrNo then
  begin
    Abort;
    Exit;
  end
end;

procedure TFUser.AdsUserAfterDelete(DataSet: TDataSet);
begin
  DBEdtUser.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFUser.AdsUserAfterEdit(DataSet: TDataSet);
begin
   DBEdtUser.Enabled:=False;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

procedure TFUser.AdsUserAfterPost(DataSet: TDataSet);
begin
  DBEdtUser.Enabled:=True;
  AdsBantuan.Active:=False;
  AdsBantuan.Active:=True;
end;

end.
