program fizzbuzz;
uses crt;
var i : Integer;
begin
  for i:= 0 to 100 do
  begin
  if i mod  15 = 0  then 
  WriteLn(i, ' FizzBuzz')
  else if i mod 3 = 0 then 
  WriteLn(i, ' Fizz')
  else if i mod 5 = 0 then
  WriteLn(i,' Buzz')
  else 
  WriteLn(i);
  end;
  readln;
end.
