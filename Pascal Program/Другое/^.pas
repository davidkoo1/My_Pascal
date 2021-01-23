var x,y,z : double;
begin
  writeln('Основатель');
  readln(x);
  writeln('Показатель(степень)');
  readln(y);
  z:=power(x,y);
  writeln(x,' ^ ',y,' = ',z);
end.