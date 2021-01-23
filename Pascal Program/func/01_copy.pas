program copy;
var a,b,c,sr : String;
m : Integer;
begin
  sr:='25.12.2020';
  a:=copy(sr,1,2);
  b:=copy(sr,4,2);
  c:=copy(sr,7,4);
  
  m:=StrToInt(b);
  case m of
1: WriteLn(' January ');
2: WriteLn(' February ');
3: WriteLn(' March ');
4: WriteLn(' April ');
5: WriteLn(' May ');
6: WriteLn(' June ');
7: WriteLn(' July ');
8: WriteLn(' August ');
9: WriteLn(' September ');
10: WriteLn(' October ');
11: WriteLn(' November ');
12: WriteLn(' December ');
end;
  WriteLn(m);
  readln;
end.
