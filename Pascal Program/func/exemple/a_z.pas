var s : Integer;
begin
for s:= 1 to 26 do
   WriteLn(chr(ord('A')-1+s), '[', s,']');
       WriteLn;
   for s:= 26 downto 1 do
    Write(chr(ord('Z')-26+s):3, '-',s)
end.
