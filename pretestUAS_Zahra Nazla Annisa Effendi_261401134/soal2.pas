program soal2;
uses crt;
var
    arr: array[1..50] of integer;
    n, i: integer;
begin
    clrscr;
    write('Masukkan jumlah elemen array: ');
    readln(n);
    for i := 1 to n do
    begin
        write('Masukkan elemen ke-', i, ': ');
        readln(arr[i]);
    end;
    writeln('Elemen array:');
    for i := 1 to n do
        write(arr[i], ' ');
    writeln;
end.