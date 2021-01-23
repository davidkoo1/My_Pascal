var x,z : integer;
y:double;
begin
  readln(x,z);
  y:=sqrt((sqr(x)-sqr(z))/3*x)-2*power(z,3);
  writeln(y:0:3);
end.