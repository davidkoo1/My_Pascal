var a, b : integer;
m : array [1..10] of integer;
begin
  for a:=1 to 10 do begin
    m[a]:=random(15);
  writeln(m[a]);
  end;
end.