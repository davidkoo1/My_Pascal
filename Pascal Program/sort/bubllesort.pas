//сортировка пузырьком 
var
  a, b, c: integer;
  mas: array [1..10] of integer;

begin
writeln('Несортированный массив');
  for a := 1 to 10 do 
  begin
    mas[a] := random(11);
    
    write(mas[a]:3);
  end;
  for a:=1 to 9 do
    for b:=1 to 10-a do 
    begin
      if mas[b] > mas[b+1] then  begin
        c:=mas[b];
      mas[b]:=mas[b+1];
      mas[b+1]:=c;
      end;
    end;
    writeln;
 writeln('Отсортированный массив');
    for a:=1 to 10 do 
      write(mas[a]:3);
end.