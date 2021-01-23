uses Math;
var 
  x, y : double;
function  MylogN(n,x : double) : double;
begin 
MylogN := Ln(x) / Ln(n);
end;
begin
  x := Ln(2.718281828); //x = Ln(e)
  WriteLn('Ln(2.72) = Ln(e) = ', x:0:4);
  x := LogN(3,9);
  writeLn('Log 3 (9) = ', x:0:4);
  x := MylogN(3,9);
  WriteLn('MylogN 3 (9) = ',x:0:4);
end.
