program m;
uses crt;
var a,b,c, d : Integer;
begin
  ReadLn(d);
  a:= d mod 10;
  c:= (d mod 100) div 10;
  b:= d div 100;
  
  Write(a,' ',b,' ',c);
end.
