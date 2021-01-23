var
  n, i: integer;

begin
  readln(n);
  for i := 1 - n to n - 1 do
  begin
    write(n - abs(i));
  end;
  writeln;
end.