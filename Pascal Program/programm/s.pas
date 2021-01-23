var n,i : 1..MaxInt;
s :  real;
begin
  readln(n);
  s:=0;
  for i:=1 to n do s:=s+1/i;
  writeln(s);
end.