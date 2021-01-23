program parallelogram;
var a, b, h, S : Real;
begin
  
 WriteLn('ведитев длину параллелограмма а ');
 ReadLn(a);
 WriteLn('ведитев ширину параллелограмма b ');
 ReadLn(b);
 WriteLn('ведитев высоту параллелограмма h ');
 ReadLn(h);
 S:=2*(a*b+b*h+a*h);
 WriteLn(' s:= ', S)
end.
