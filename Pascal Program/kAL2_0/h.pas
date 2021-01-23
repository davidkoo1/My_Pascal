var n : Integer;
a : Integer = 0;
begin
  ReadLn(n);
  while n>0 do begin 
//WriteLn(n mod 10);
//n := n div 10;
 if n mod 2= 0 then
a:= a + n mod 10;
n:= n div 10;
end;
 
  WriteLn(a);
  readln;
end.
