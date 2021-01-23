var a, b : real;
x,y,z : integer;
begin
  writeln('x,y,z');
  readln(x,y,z);
  a:=(3+exp(2))/1+sqr(x)*abs(y-tan(z));
  b:= 1+abs(y-x)+sqr(y-x)/2+sqr(x-y)/3;
  writeln('a=  ',a:0:3,'  ||  ', 'b=  ',b:0:3);
end.