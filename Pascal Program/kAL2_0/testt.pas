var x, y,i : integer;
begin
readln(x);
for y:=0 to x do
begin
if y mod 2 = 0 then continue ;
WriteLn(y);
i:=i+y;
end;
WriteLn(i);
end.
