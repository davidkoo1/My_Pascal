var a, b, c : Integer;
k : array  [0..10] of Integer;
i : Integer ;
n,h,x : Integer;

begin
WriteLn('Don',#39,'t sort array : ');
for i:= 1 to 10 do
  begin
    k[i]:= Random(1000);
    Write(k[i],' ');
  end;
  writeln;
  writeln;
for i:=1 to 10-1 do
  for b:=1 to 10-i do 
    if k[b] > k[b+1] then 
    begin
      c := k[b];
      k[b] := k[b+1];
      k[b+1] := c;
    end;
WriteLn('Array sort : ');
for i:=1 to 10 do
write(k[i],' ');
writeln;
writeln;
WriteLn('Recover array : ');
for i:=10 downto 1 do
Write(k[i],' ');

writeln;
writeln;

end.
