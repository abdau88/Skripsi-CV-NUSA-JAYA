program PMenu;

uses
  Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UBarang in 'UBarang.pas' {FBarang},
  UKaryawan in 'UKaryawan.pas' {FKaryawan},
  USuplier in 'USuplier.pas' {FSuplier},
  USatuan in 'USatuan.pas' {FSatuan},
  UFilter in 'UFilter.pas' {FFilter},
  UTransaksiJual in 'UTransaksiJual.pas' {FTransaksiJual},
  UUser in 'UUser.pas' {FUser},
  ULapPenjualanBarang in 'ULapPenjualanBarang.pas' {FLapPenjualan},
  UMerk in 'UMerk.pas' {FMerk},
  UTransaksiBeli in 'UTransaksiBeli.pas' {FTransaksiPembelian},
  ULapPembelianBarang in 'ULapPembelianBarang.pas' {FLapPembelian},
  UStokBarang in 'UStokBarang.pas' {FStokBarang},
  UProgrammer in 'UProgrammer.pas' {FAboutProgrammer},
  UHelp in 'UHelp.pas' {FHelp},
  ULapBeliPerPeriode in 'ULapBeliPerPeriode.pas' {FLaporanPerPeriode},
  ULapJualPerPeriode in 'ULapJualPerPeriode.pas' {FLapJualPerPeriode};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
