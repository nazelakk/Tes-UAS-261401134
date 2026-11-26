program ganjilgenap;
uses crt;

var
    n, kategori, i, total: integer;

    begin
    clrscr;
    repeat
    write('masukkan batas akhir n (1-100): ');
    readln(n);
    if (n < 1) or (n > 100) then
        writeln('Batas akhir n harus antara 1 dan 100. Silakan coba lagi.');
    until (n >= 1) and (n <= 100);

    writeln('Kategori bilangan (1: Ganjil, 2: Genap)');
    write('Pilihan: ');
    readln(kategori);
    
    total := 0;
    i := 0;
    while i < n do
    begin
        i := i + 1;
        if (kategori = 1) and (i mod 2 = 0) then
            continue;
        if (kategori = 2) and (i mod 2 <> 0) then
            continue;
            if i mod 5 = 0 then continue;
            write(i, ' ');
        total := total + i;
    end;
    writeln;
    writeln('Total penjumlahan: ', total);
    if kategori = 2 then
        if n mod 2 = 0 then
            writeln('Bilangan ', n, ' adalah genap')
        else
            writeln('Bilangan ', n, ' bukan genap')
    else if kategori = 1 then
        if n mod 2 <> 0 then
            writeln('Bilangan ', n, ' adalah ganjil')
        else
            writeln('Bilangan ', n, ' bukan ganjil')
    else
        writeln('Pilihan tidak valid!');
end.