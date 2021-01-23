var
  a, b: double;
  x, y, z: integer;

begin
  writeln('x,y,z : ');
  readln(x, y, z);
  a := y + (x / sqr(y) + abs(sqr(x) / y + sqr(x)));
  b := sqr(1 + sqr(tan(z / 2)));
  writeln('a=  ', a:0:3, '  ||  ', 'b=  ', b:0:3);
end.