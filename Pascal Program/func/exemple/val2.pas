uses LazUTF8;
var
  s: string;
  i,err : integer;
  sum : integer = 0;
begin
  writeln(UTF8ToConsole('Введите страку'));  // | input 123
  readln(s);
  val(s,i,err);
  if err=0 then
  begin

    while i <> 0 do
begin
  sum:=sum+(i mod 10);
  i:= i div 10;

  end;
    writeln('Sum ', sum);
    writeln('Length =',length(s));
  end
  else writeln('Error input...But Length your string =',length(s));
  readln;
end.
