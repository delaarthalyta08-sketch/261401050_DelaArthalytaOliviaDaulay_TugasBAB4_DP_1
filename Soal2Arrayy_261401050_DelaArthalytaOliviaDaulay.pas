program Soal2Arrayy;
uses wincrt;
var
  A, B, C: array[1..5, 1..5] of integer;
  b1, k1, b2, k2, i, j: integer;
procedure BacaUkuran(nama: string; var b, k: integer);
begin
  repeat
    write('Jumlah baris matriks ', nama, ' (1-5): '); readln(b);
  until (b >= 1) and (b <= 5);
  repeat
    write('Jumlah kolom matriks ', nama, ' (1-5): '); readln(k);
  until (k >= 1) and (k <= 5);
end;

begin
  BacaUkuran('ke-1', b1, k1);
  BacaUkuran('ke-2', b2, k2);
  if (b1 <> b2) or (k1 <> k2) then
  begin
    writeln;
    writeln('Kedua matriks TIDAK dapat dijumlahkan (ukuran berbeda).');
  end
  else
  begin
    writeln;
    writeln('Isi matriks ke-1:');
    for i := 1 to b1 do
      for j := 1 to k1 do
      begin
        write('A[', i, ',', j, '] = '); readln(A[i, j]);
      end;

    writeln('Isi matriks ke-2:');
    for i := 1 to b2 do
      for j := 1 to k2 do
      begin
        write('B[', i, ',', j, '] = '); readln(B[i, j]);
      end;

    for i := 1 to b1 do
      for j := 1 to k1 do
        C[i, j] := A[i, j] + B[i, j];

    writeln;
    writeln('Kedua matriks dapat dijumlahkan.');
    writeln('Hasil penjumlahan:');
    for i := 1 to b1 do
    begin
      for j := 1 to k1 do
        write(C[i, j]:5);
      writeln;
    end;
  end;
end.