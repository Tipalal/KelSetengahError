program BuKuKuKatalogBukuDigital;
uses crt;

const
  MaxBuku = 100;  { Maksimal jumlah buku dalam katalog }

type
  Buku = record
    judul: string;
    penulis: string;
    tahun: integer;
    penerbit: string;
  end;
  
  //deklarasi variabel
var
  katalog: array[1..MaxBuku] of Buku;
  jumlahBuku: integer;
  pilihan: integer;

//Prosedur TampilkanKatalog digunakan untuk menampilkan semua buku yang ada dalam katalog
procedure TampilkanKatalog;
var
    i: integer;
begin
    writeln('Daftar Buku dalam Katalog:');
    if jumlahBuku = 0 then
        begin
            writeln('Belum ada buku didalam katalog ini!');
        end
          else
            begin
              for i := 1 to jumlahBuku do
                begin
                    writeln('Buku ke-', i);
                    writeln('Judul: ', katalog[i].judul);
                    writeln('Penulis: ', katalog[i].penulis);
                    writeln('Tahun: ', katalog[i].tahun);
                    writeln('Penerbit: ', katalog[i].penerbit);
                    writeln;
                end;
            end;
end;

//Prosedur TambahBuku digunakan untuk menambahkan buku baru ke dalam katalog.
procedure TambahBuku;
begin
    if jumlahBuku < MaxBuku then
    begin
        writeln('Masukkan data buku baru:');
        write('Judul: ');
        readln(katalog[jumlahBuku + 1].judul);
        write('Penulis: ');
        readln(katalog[jumlahBuku + 1].penulis);
        write('Tahun terbit: ');
        readln(katalog[jumlahBuku + 1].tahun);
        write('Penerbit: ');
        readln(katalog[jumlahBuku + 1].penerbit);

        jumlahBuku := jumlahBuku + 1;
        writeln('Buku berhasil ditambahkan ke katalog.');
    end
      else
        begin
          writeln('Katalog buku sudah penuh!');
        end;
end;

begin
    clrscr;
    jumlahBuku := 0;

    repeat
        writeln('===== BuKuKu: Katalog Buku Digital =====');
        writeln('1. Tambah Buku');
        writeln('2. Tampilkan Katalog');
        writeln('3. Keluar');
        write('Pilih menu (1-3): ');
        readln(pilihan);
    
        case pilihan of
            1: TambahBuku;
            2: TampilkanKatalog;
            3: writeln('Terima kasih orang baik :D');
            else
            writeln('Pilihan tidak valid');
        end;
        writeln;
        writeln('Tekan enter untuk melanjutkan.....');
        readln;
        
    until pilihan = 3;
end.
