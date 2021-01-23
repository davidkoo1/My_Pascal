Program p1;
var
n: longint;
s: integer;
x: byte;
begin
write('Введите число n: ');
readln(n);
s:=0;
while n>0 do
begin
x:=n mod 10;

if odd(x) then s:=s+x;
n:=n div 10;
end;
writeln('Сумма нечетных цифр в числе n = ',s);
end.
