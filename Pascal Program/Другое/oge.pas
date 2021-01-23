var n,a,b,c,e : integer;
d : real;
begin
  readln(n);
  e:=n;
  while n <> 0 do begin
    readln(a);
    if a>0 then b+=a;
    c+=a;
    n-=1;
  end;
  d:=c/e;
  writeln(d:0:2);
  if b >= 5 then writeln('yes') else writeln('no');
end.
{
input:
4
-4
12
-2
8
output:
3.50
yes

}