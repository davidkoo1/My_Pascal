//первая 
var
  n, x, s: integer;

begin
  writeln('введите число ');
  readln(n);
  while n > 0 do 
  begin
    x := n mod 10;
    if odd(x) then 
      s := s + x;
    n := n div 10;
  end;
  writeln(s);
end.