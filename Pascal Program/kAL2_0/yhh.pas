uses Graph;
uses crt;
var g,v,b,a,x : Integer;
begin
repeat 
  g:=Random(1000);
  v:=Random(1000);
  b:=Random(1000);
    putPixel(g,v,b);
    until a = 100;
  readln;
end.
