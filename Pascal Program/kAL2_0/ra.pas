program ra;
uses crt;
var a,b, c : real;
v : real;
begin
  a:=Random(10);
  b:=Random(10);
  c:= 1;
  v:=sqr(a)+sqr(b);
  WriteLn(v=1);
  WriteLn(sqr(a)+sqr(b)=1);
  
  readln;
end.
