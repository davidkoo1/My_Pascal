var a, b : real;
x,y,z : integer;
begin
  writeln('x,y,z : ');
  readln(x,y,z);
  a:=(2*power(cos(x-PI/6),4))/(1/2+sqr(sin(y)));
  b:= 1+(sqr(z))/(3+((sqr(z)/5)));
  writeln('a=  ',a:0:3,'  ||  ', 'b=  ',b:0:3)
end.