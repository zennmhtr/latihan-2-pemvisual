unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    btnClear: TButton;
    btnClose: TButton;
    cbJabatan: TComboBox;
    edtTunjangan: TEdit;
    edtNama: TEdit;
    edtGapok: TEdit;
    edtTotalGaji: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    rgStatus: TRadioGroup;
    procedure btnClearClick(Sender: TObject);
    procedure btnHitungClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure rbTetapChange(Sender: TObject);
    procedure rgStatusClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.btnHitungClick(Sender: TObject);

var
  gajiDasar, tunjangan, totalGaji: integer;
begin
  // Penentuan Gaji Dasar berdasarkan Jabatan
  case cbJabatan.ItemIndex of
    0: gajiDasar := 5000000;   // Direktur
    1: gajiDasar := 3000000;   // Manager
    2: gajiDasar := 1000000;   // Karyawan
    else gajiDasar := 0;      // Tidak ada pilihan
  end;

  // Penentuan Tunjangan berdasarkan Status Pegawai
  if rgStatus.ItemIndex = 0 then
    tunjangan := 1500000   // Tetap
  else if rgStatus.ItemIndex = 1 then
    tunjangan := 500000    // Honorer
  else
    tunjangan := 0;

  // Menghitung total gaji
  totalGaji := gajiDasar + tunjangan;

  // Menampilkan total gaji ke EditTotalGaji
  edtTotalGaji.Text := IntToStr(totalGaji);
end;

procedure TForm1.btnClearClick(Sender: TObject);
  begin
  // Reset Seluruh Data
  cbJabatan.ItemIndex := -1; // Tidak ada item yang dipilih
  rgStatus.ItemIndex := -1; // Tidak ada item yang dipilih
  edtTotalGaji.Text := '';
  edtNama.Text := '';
  edtGapok.Text := '';
  edtTunjangan.Text := '';

end;


procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.rbTetapChange(Sender: TObject);
begin

end;

procedure TForm1.rgStatusClick(Sender: TObject);
begin

end;


end.

