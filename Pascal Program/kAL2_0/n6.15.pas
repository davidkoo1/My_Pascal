var 
x1, x2, x3,y1,y2,y3,ac,bc,ab,s,p : single;
begin
  WriteLn('Введите через пробел координаты точки А');
  readln(x1,y1);
  WriteLn('Введите через пробел координаты точки B');
  readln(x2,y2);
  WriteLn('Введите через пробел координаты точки C');
  readln(x3,y3);
ab:=sqrt(sqr(x2-x1) + sqr(y2-y1));
bc:=sqrt(sqr(x3-x2) + sqr(y3-y2));
ac:=sqrt(sqr(x3-x1) + sqr(y3-y1));
p:=(ab+bc+ac)/2;
s:= sqrt(p*(p-ab)*(p-bc)*(p-ac));
WriteLn('___________________');
writeln('Стороны треугольника: АВ=', ab:3:1, ' BC=',bc:3:1,' AC=',ac:3:1); 
WriteLn('Площадь треугольника ',s:3:1, ' cm.kB');
end.
