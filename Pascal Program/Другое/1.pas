var
  x, y, z: integer;
  a, b: single;

begin
  writeln('x,y,z :');
  readln(x,y,z);
  a:=(sqrt(abs(x-1))-sqrt(abs(y)))/1+sqr(x)/2+sqr(y)/4;
  b:= x*(arctan(z)+exp(1));
  writeln('a=  ',a:0:3,'   ','b=  ',b:0:3)
end.