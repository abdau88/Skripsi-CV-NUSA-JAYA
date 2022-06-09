unit UFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFFilter = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    AdsFilter: TADODataSet;
    dsFilter: TDataSource;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFilter: TFFilter;

implementation

uses UMenu;

{$R *.dfm}

procedure TFFilter.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ([#13,#8,#32,'0'..'9','a'..'z','A'..'Z'])) then
 begin
  Application.MessageBox('Invalid Key','Warning');
  Key:=#0;
  Exit;
 end;
end;
procedure TFFilter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
 FMenu.CariBarang1.Enabled:=True;
end;

procedure TFFilter.Edit1Change(Sender: TObject);
var
  a,b:string;
begin
  b:='select * from Barang where nama_barang like "%'+Edit1.Text+'%"';
  a:='select * from Barang where kd_barang like "%'+Edit1.Text+'%"';

  if RadioButton1.Checked=True then
  begin
    AdsFilter.Active:=false;
    AdsFilter.Connection:=FMenu.ADOConnection1;
    AdsFilter.CommandText:=a;
    AdsFilter.Active:=True;
  end
  else
    if RadioButton2.Checked=true then
  begin
    AdsFilter.Active:=False;
    AdsFilter.Connection:=FMenu.ADOConnection1;
    AdsFilter.CommandText:=b;
    AdsFilter.Active:=true;
  end;
end;

procedure TFFilter.RadioButton1Click(Sender: TObject);
begin
  Edit1.Enabled:=True;
  Edit1.SetFocus;
end;

procedure TFFilter.RadioButton2Click(Sender: TObject);
begin
  Edit1.Enabled:=True;
  Edit1.SetFocus;
end;

end.
