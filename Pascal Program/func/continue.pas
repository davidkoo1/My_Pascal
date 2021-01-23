//continue работает в циклах
var a,b,i : integer;
begin
  for i:=1 to 10 do
  begin
    if i = 4 then continue;
    writeln(i:3);
  end;
end.