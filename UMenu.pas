unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, DB, ADODB, ComCtrls, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, jpeg, StdActns, ActnList;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    DataMaster1: TMenuItem;
    Logout1: TMenuItem;
    Exit1: TMenuItem;
    DataMaster2: TMenuItem;
    Barang1: TMenuItem;
    Karyawan1: TMenuItem;
    Suplier1: TMenuItem;
    Satuan1: TMenuItem;
    ransaksi1: TMenuItem;
    DetailTransJual1: TMenuItem;
    ools1: TMenuItem;
    UserRight1: TMenuItem;
    Filter1: TMenuItem;
    CariBarang1: TMenuItem;
    Laporan1: TMenuItem;
    Window1: TMenuItem;
    Cascade1: TMenuItem;
    ileVertically1: TMenuItem;
    ileHorizontally1: TMenuItem;
    Arrange1: TMenuItem;
    MinimizeAll1: TMenuItem;
    Close1: TMenuItem;
    ImageList1: TImageList;
    ADOConnection1: TADOConnection;
    StatusBar1: TStatusBar;
    AdsLogIn: TADODataSet;
    dsLogIn: TDataSource;
    AdsLogInuser: TWideStringField;
    AdsLogInpassword: TWideStringField;
    AdsLogInmenu1: TWideStringField;
    AdsLogInmenu2: TWideStringField;
    AdsLogInmenu3: TWideStringField;
    AdsLogInmenu4: TWideStringField;
    AdsLogInmenu5: TWideStringField;
    AdsLogInmenu6: TWideStringField;
    AdsLogInmenu7: TWideStringField;
    LoGin1: TMenuItem;
    Timer1: TTimer;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    LaporanPenjualan1: TMenuItem;
    PenjualanBarang1: TMenuItem;
    EdtUser: TEdit;
    EdtPass: TEdit;
    Merk1: TMenuItem;
    ransaksiBeli1: TMenuItem;
    LaporanPembelian1: TMenuItem;
    StokBarang1: TMenuItem;
    Help1: TMenuItem;
    MenuAplikasi1: TMenuItem;
    PembelianBarang1: TMenuItem;
    AdsLoginTime: TADODataSet;
    AdsLogInmenu8: TWideStringField;
    AdsLogInmenu9: TWideStringField;
    PembelianPeriode1: TMenuItem;
    PenjualanPeriode1: TMenuItem;
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Panel3: TPanel;
    Label6: TLabel;
    DBText1: TDBText;
    procedure Barang1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure Karyawan1Click(Sender: TObject);
    procedure Suplier1Click(Sender: TObject);
    procedure Satuan1Click(Sender: TObject);
    procedure CariBarang1Click(Sender: TObject);
    procedure DetailTransJual1Click(Sender: TObject);
    procedure UserRight1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoGin1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PenjualanBarang1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Merk1Click(Sender: TObject);
    procedure ransaksiBeli1Click(Sender: TObject);
    procedure StokBarang1Click(Sender: TObject);
    procedure Programmer1Click(Sender: TObject);

    procedure MenuAplikasi1Click(Sender: TObject);
    procedure PembelianBarang1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PembelianPeriode1Click(Sender: TObject);
    procedure PenjualanPeriode1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses UBarang, UKaryawan, USuplier, USatuan, UFilter, UTransaksiJual, UUser,
  Math, ULapPenjualanBarang, UMerk, UTransaksiBeli, ULapPembelianBarang,
  UStokBarang, UProgrammer, UHelp, ULapBeliPerPeriode,
  ULapJualPerPeriode;

{$R *.dfm}

procedure TFMenu.Barang1Click(Sender: TObject);
begin
 TFBarang.Create(self).Show;
 Barang1.Enabled:=False;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
var
  pesan:word;
begin
  pesan:=MessageDlg('Yakin Akan Keluar???', mtConfirmation,[mbYes,mbNo],0);
  if pesan=mrno then Action:=caNone
  else
    Action:=caFree;

end;

procedure TFMenu.Exit1Click(Sender: TObject);
begin
 close;
end;

procedure TFMenu.Karyawan1Click(Sender: TObject);
begin
 TFKaryawan.Create(Self).Show;
 Karyawan1.Enabled:=false;
end;

procedure TFMenu.Suplier1Click(Sender: TObject);
begin
 TFSuplier.Create(self).Show;
 Suplier1.Enabled:=false;
end;

procedure TFMenu.Satuan1Click(Sender: TObject);
begin
  TFSatuan.Create(self).Show;
  Satuan1.Enabled:=false;
end;

procedure TFMenu.CariBarang1Click(Sender: TObject);
begin
  TFFilter.Create(Self).Show;
  CariBarang1.Enabled:=False;
end;

procedure TFMenu.DetailTransJual1Click(Sender: TObject);
begin
 TFTransaksiJual.Create(self).Show;
 DetailTransJual1.Enabled:=false;
end;

procedure TFMenu.UserRight1Click(Sender: TObject);
begin
  TFUser.Create(self).Show;
  UserRight1.Enabled:=False;  
end;

procedure TFMenu.BitBtn1Click(Sender: TObject);
var
  a:string;
begin
  {AdsLoginTime.Insert;
  AdsLoginTime.FieldValues['username']:=EdtUser.Text;
  AdsLoginTime.FieldValues['password']:=EdtPass.Text;
  AdsLoginTime.FieldValues['timeIn']:=TimeToStr(Now);
  AdsLoginTime.FieldValues['timeOut']:=TimeToStr(Now);
  AdsLoginTime.Post;}
  DBText1.Visible:=true;
  Label6.Visible:=True;

  AdsLogIn.Active:=False;
  a:='select * from t_User where user like "'+ EdtUser.Text +'%"';
  AdsLogIn.Connection:=ADOConnection1;
  AdsLogIn.CommandText:=a;
  AdsLogIn.Active:=True;
  panel2.Visible:=False;

  if AdsLogIn.Locate('user;password', VarArrayOf([EdtUser.Text, EdtPass.Text]),[]) then
  begin
    Panel1.Visible:=False;
    if AdsLogIn.FieldValues['menu6']='T' then
      DataMaster1.Visible:=True
    else
      DataMaster1.Visible:=True;

    if AdsLogIn.FieldValues['menu7']='T' then
      //About1.Visible:=True
    else
      //About1.Visible:=True;
      
    if AdsLogIn.FieldValues['menu1']='T' then
      DataMaster2.Visible:=True
    else
      DataMaster2.Visible:=False;

    if AdsLogIn.FieldValues['menu2']='T' then
      ransaksi1.Visible:=True
    else
      ransaksi1.Visible:=False;

    if AdsLogIn.FieldValues['menu3']='T' then
      ools1.Visible:=True
    else
      ools1.Visible:=False;

    if AdsLogIn.FieldValues['menu4']='T' then
      Filter1.Visible:=True
    else
      Filter1.Visible:=False;

    if AdsLogIn.FieldValues['menu5']='T' then
      Laporan1.Visible:=True
    else Laporan1.Visible:=False;

    //Image2.Visible:=True;
    //Image3.Visible:=True;
    //Image4.Visible:=True;
    end
    else
    begin
      MessageDlg('Username atau Password salah!!!', mtWarning, [mbOK],0);
      begin
        EdtUser.Text:='';
        EdtUser.SetFocus;
        EdtPass.Text:='';
      end;
    end;
end;

procedure TFMenu.Timer1Timer(Sender: TObject);
var
  tgl,jam:string;
begin
  jam:=TimeToStr(now);
  tgl:=DateToStr(now);
  StatusBar1.Panels[1].Text:=jam;
  StatusBar1.Panels[2].Text:=tgl;


end;

procedure TFMenu.FormCreate(Sender: TObject);
begin

  Panel1.Visible:=False;
  DataMaster2.Visible:=False;
  ransaksi1.Visible:=False;
  ools1.Visible:=False;
  Filter1.Visible:=False;
  Laporan1.Visible:=False;
  //Image2.Visible:=False;
  //Image3.Visible:=False;
  //Image4.Visible:=False;
end;

procedure TFMenu.LoGin1Click(Sender: TObject);
begin
  Panel1.Visible:=True;
  LoGin1.Enabled:=False;
  //Image2.Visible:=False;
  //Image3.Visible:=False;
  FormResize(Sender);
  EdtUser.SetFocus;
end;

procedure TFMenu.FormResize(Sender: TObject);
begin
  Panel1.Left:=(ClientWidth-Panel1.Width) div 2;
  Panel1.Top:=(ClientHeight-Panel1.Height) div 2;
end;

procedure TFMenu.PenjualanBarang1Click(Sender: TObject);
begin
 TFLapPenjualan.Create(Self).Show;
 PenjualanBarang1.Enabled:=False;
end;

procedure TFMenu.Logout1Click(Sender: TObject);
begin
  FMenu.FormCreate(Sender);
  Panel1.Visible:=True;
  EdtUser.Clear;
  EdtPass.Clear;
  EdtUser.SetFocus;
  Panel2.Visible:=True;
  DBText1.Visible:=False;
  Label6.Visible:=False;
  {AdsLoginTime.Edit;
  AdsLoginTime.FieldValues['timeOut']:=TimeToStr(Now);
  AdsLoginTime.Post;
  BitBtn1.Visible:=True;}
end;

procedure TFMenu.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFMenu.Merk1Click(Sender: TObject);
begin
  TFMerk.Create(Self).Show;
  Merk1.Enabled:=False;
end;

procedure TFMenu.ransaksiBeli1Click(Sender: TObject);
begin
  TFTransaksiPembelian.Create(Self).Show;
  ransaksiBeli1.Enabled:=False;
end;

procedure TFMenu.StokBarang1Click(Sender: TObject);
begin
  TFStokBarang.Create(Self).Show;
  StokBarang1.Enabled:=False;
end;

procedure TFMenu.Programmer1Click(Sender: TObject);
begin
  TFAboutProgrammer.Create(Self).Show;
  //Programmer1.Enabled:=False;
end;



procedure TFMenu.MenuAplikasi1Click(Sender: TObject);
begin
  TFHelp.Create(Self).Show;
  Help1.Enabled:=False;
end;

procedure TFMenu.PembelianBarang1Click(Sender: TObject);
begin
  TFLapPembelian.Create(Self).Show;
  PembelianBarang1.Enabled:=False;
end;

procedure TFMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  Perform(CM_DIALOGKEY,VK_TAB,0);
end;

procedure TFMenu.PembelianPeriode1Click(Sender: TObject);
begin
  TFLaporanPerPeriode.Create(Self).Show;
  PembelianPeriode1.Enabled:=False;
end;

procedure TFMenu.PenjualanPeriode1Click(Sender: TObject);
begin
   TFLapJualPerPeriode.Create(Self).Show;
   PenjualanPeriode1.Enabled:=False;
end;

end.
