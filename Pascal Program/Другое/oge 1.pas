var a,b,c,i : integer;
begin
  readln(a);
 for i:= 1 to a do
 begin
   readln(b);
   if b mod 6 = 0 then c+=b
 end;
  writeln(c);
end.
{
in.
3
12
25
6
out.
18

}