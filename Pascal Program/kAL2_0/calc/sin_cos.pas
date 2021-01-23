
var 
z,y,x : real;
begin
  WriteLn('Введите угол в градусах: ');
  Readln(z);
  y:= Pi * z / 180; //Перевод градусы в радианы
  x:= Cos(y);
  WriteLn('Cos(',z:0:1,') = ',x:0:4);
  x:= Sin(y);
  WriteLn('Sin(',z:0:1,') = ',x:0:4);
  WriteLn('Pi = ',Pi);
  
  
end.
