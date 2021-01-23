function XLess10(x : byte) : Boolean;
var Result : Boolean;
begin
  Result:=False;
  if x>=10 then Halt/*Exit*/;
  Result := True;
end;
var N : byte;
Z : single;
begin
  Write('N= ');
  readln(N);
  if not XLess10(N) then WriteLn('N<10')
  else WriteLn('N>=10');//Если будет Halt, то эта часть кода не срабатывает, а если будет Exit, то часть кода сработает
end.
