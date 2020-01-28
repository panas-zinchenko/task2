program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
    N = 9;
var
    matN: array[1..N,1..N] of real;
    i, j, z,q,M,k1,k2,L1,L2: byte;
    sum: real;

begin 

    for i:=1 to N do begin
        for j:=1 to N do begin
            matN[i,j] := random(10);
            write(matN[i,j]:6:0);
        end;
        writeln;
    end;


    if M<2 then
    writeln('M => ');
    readln(M);

    writeln('M => ');
    readln(M);

    if k1<0 then
    writeln('Koordunata1 => ');
    readln(k1);

    writeln('Koordunata1 => ');
    readln(k1);

    if k2<0 then
    writeln('Koordunata2 => ');
    readln(k2);

    writeln('Koordunata2 => ');
    readln(k2);


    L1:= k1-1;
    L2:= k2-1;

    sum := 0;
    for z:=k1 to M+L1 do begin
        for q:=k2 to M+L2 do begin
            sum := sum + matN[z,q];
        end;
    end;

    writeln('Suma vsix elementiv: ', sum:6:2);
    Readln;

  { TODO -oUser -cConsole Main : Insert code here }
end.
 