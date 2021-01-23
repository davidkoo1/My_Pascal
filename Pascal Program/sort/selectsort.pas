//сортировка выбором
var a,b,c,min,n : integer;
mas : array [1..10] of integer;
begin
  readln(n);
  for a:=1 to n do begin
    mas[a]:=random(100);
    write(mas[a]:3);
    end;
    for a:=1 to n-1 do begin
      b:=a;
      min:=mas[a];
      for c:=a+1 to n do
        if mas[c]<min then begin
          min:=mas[c];
          b:=c;
        end;
        mas[b]:=mas[a];
        mas[a]:=min;
    end;
    writeln;
    for a:=1 to n do
      write(mas[a]:3);
  
end.