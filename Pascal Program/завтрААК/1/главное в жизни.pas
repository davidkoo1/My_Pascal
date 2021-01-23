var a, c: double;
b,i :integer;
m, n : text;
begin
  assign(m, 'te.txt');
  assign(n, 'te1.txt');
  reset(m);
  
readln(m,b);  
for i:=1 to b do
  begin
readln(m,a);
c:= c + power(a, a);
rewrite(n);
writeln(n,round(c) mod 10);
end;
close(m);
close(n);
end.