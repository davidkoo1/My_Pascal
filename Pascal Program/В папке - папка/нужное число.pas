//программа выводит недостающее число. Наприме : 1 3 4 5       2
var m:set of byte;
    a,i:byte;
begin
m:=[1..5];
for i:=1 to 4 do
 begin
  read(a);
  if a in m then exclude(m,a);
 end;
for i:=1 to 5 do
if i in m then write(i)
end.
{////или
var
  x, i, a: integer;

begin
  x := 31;
  for i := 1 to 4 do
  begin
    read(a);
    x := x xor (1 shl (a - 1));
  end;
  i := 1;
  while x <> 1 do 
  begin
    x := x shr 1;
    inc(i);
  end;
  writeln(i);
end.
}