var
  a1: Integer;
  err: Integer;
  b1: string;

begin
  repeat
    WriteLn('Enter integer number. ');
    readln(b1);
    val(b1, a1, err);
  until err = 0;
  WriteLn('Your number', a1);
  
  
  writeln('Press  ENTER...');
  readln;
end.