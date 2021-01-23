var
  x : Integer = -100;
  y : Integer;


function Myabs(iNum : integer) : Integer;
begin
if iNum < 0 then Myabs := -1 * iNum
else Myabs := iNum;
end;


begin
  y:= abs(x); //y = 100
  
  WriteLn('Abs(-100) = ',y); //Выводит 100
  WriteLn('Myabs(-100) = ',Myabs(-100)) //Выводит тоже 100
end.
