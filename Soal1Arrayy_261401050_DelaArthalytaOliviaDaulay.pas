program Soal1Arrayy;
uses wincrt;
var
  nim: array[1..10] of string;
  n, i: integer;
begin
  repeat
    write('Masukkan jumlah mahasiswa (1-10): '); readln(n);
    if (n < 1) or (n > 10) then
      writeln('Jumlah harus antara 1 sampai 10!');
  until (n >= 1) and (n <= 10);

  writeln('Masukkan NIM dari depan ke belakang:');
  for i := 1 to n do
  begin
    write('NIM ke-', i, ' : '); readln(nim[i]);
  end;

  writeln;
  writeln('Urutan dari belakang ke depan:');
  for i := n downto 1 do
    write(nim[i], ' ');
  writeln;
end.