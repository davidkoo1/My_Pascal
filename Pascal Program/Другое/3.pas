var a, b : real;
x,y,z : integer;
begin
  write('x,y,z : ');
  readln(x,y,z);
  a:=(1+y)+(x+(y/(sqr(x)+4)))/(exp(2)+(1/(sqr(x)+4)));
  b:=(1+power(cos(y-x),3))/(sqr(x)/2+sqr(sin(z)));
  writeln('a=  ',a:0:3,'  ||  ', 'b=  ',b:0:3);
end.