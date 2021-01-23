var x,z : integer;
y:real;
begin
  readln(x,z);
  y:=x+sqrt(abs(x-z))/3*x-2*power(z,4);
  writeln(y:0:3);
end.