var a,b,c,d,e,f,h,g,j: integer;
begin
  readln(a,b,c);
  readln(d,e,f);
  h:= (c+f) mod 60;
  g:=(b+e+h) div 60;
  j:=a+d+g;
  
  writeln;
  
  writeln(j);
  writeln(g);
  writeln(h);
  
end.
{
вводим:
23 19 47
38 57 26
вывод:
62
1
13


}