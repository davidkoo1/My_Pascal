var
  a, b, x, y, z: double;

begin
  readln(x, y, z);
  a := (sqrt(abs(x - 1)) - sqrt(abs(y))) / (1 + sqr(x) / 2 + sqr(y) / 4);
  b := power(x, 3) * (power(arctan(z), 3) + exp(1));
  writeln('a:=  ', a, '  ', 'b:=  ', b)
end.