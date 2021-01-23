program gconst;
const g=9.8;
var h, t : real;
begin
WriteLn('Длина ветки:  ');
ReadLn(h);
t:=sqrt((2*h)/g);
Write('Скорость подения яблоки  ', t:6:2);
end.
