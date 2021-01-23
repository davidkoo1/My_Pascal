var a, b, i : integer;
begin
  read(a);
  for i:=1 to a do        //3-123
     write(i);
     a-=1;              //123321- -1 - 12321
  for i:=a downto 1 do //3-321
    write(i);
end.
