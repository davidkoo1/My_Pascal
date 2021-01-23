var
  s, n, b: integer;

begin
  readln(s);
  while s > 0 do
  begin
    b := s mod 10;
    if b mod 2 = 1 then n := n + b;
    s := s div 10;
  end;
  writeln(n);
end.