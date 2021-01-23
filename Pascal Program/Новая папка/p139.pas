uses U1;
var A : Vector;
begin
  writeln('Введите массив');
  Citire(A);
  writeln;
  Afisare(A);
  writeln(sum(A));
  Writeln(min(A));
  Writeln(max(A));
end.