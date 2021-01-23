var a, b,c,d : integer; //Давид
begin
  d:=0;
  readln(a);
  for b:=1 to a do
  begin
    readln(c);
    if c mod 2 = 0 then
      d:=d+1;
    
  end;
    writeln(d);
end.