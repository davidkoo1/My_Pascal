program pandA;
var  a, b, P, S : integer;
begin
  
  //WriteLn('Что будем искать?  Площадь или Периметр?');
  WriteLn('Значение а и значение b');
  readln(a,b);
  P:=2*(a+b);
  S:=a*b;
  WriteLn('Площадь прямоугольника = ', S , '  ', 'Периметр прямоугольника = ', P);
end.
