program Soal4Arrayy;
uses wincrt;
var
  tugas, kuis, uts, uas, rata: array[1..5] of real;
  n, i: integer;
begin
  repeat
    write('Masukkan jumlah mahasiswa (1-5): '); readln(n);
  until (n >= 1) and (n <= 5);
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    write('  Nilai tugas : '); readln(tugas[i]);
    write('  Nilai kuis  : '); readln(kuis[i]);
    write('  Nilai UTS   : '); readln(uts[i]);
    write('  Nilai UAS   : '); readln(uas[i]);
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
  end;

  writeln;
  writeln('=== HASIL ===');
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    writeln('  Tugas      : ', tugas[i]:0:2);
    writeln('  Kuis       : ', kuis[i]:0:2);
    writeln('  UTS        : ', uts[i]:0:2);
    writeln('  UAS        : ', uas[i]:0:2);
    writeln('  Rata-rata  : ', rata[i]:0:2);
    if rata[i] >= 70 then
      writeln('  Keterangan : LULUS')
    else
      writeln('  Keterangan : TIDAK LULUS');
  end;
end.