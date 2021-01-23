{сортировка бинарными вставками}
const nmax=100;
var a:array[1..nmax] of integer;
    n,i,j,l,r,m,x:integer;
begin
randomize;
repeat
write('Размер массива до ',nmax,' n=');
read(n);
until n in [1..nmax];
writeln('Исходный массив:');
for i:=1 to n do
 begin
  a[i]:=random(50)-25;
  write(a[i]:4);
 end;
writeln;
{сортировка бинарными вставками}
for i:=2 to n do
  begin
   x:=a[i];{запомним элемент}
   l:=1;{левый край}
   r:=i-1;{правый}
   while l<=r do {пока левый не больше правого}
    begin
     m:=(l+r) div 2;{находим середину}
     if x<a[m] then r:=m-1{если элемент меньше среднего,
                           правый край левее середины}
     else l:=m+1{иначе левый правее середины}
    end;
   for j:=i-1 downto l do a[j+1]:=a[j];{сдвигаем массив вправо на 1}
   a[l]:=x{вставляем элемент на место}
  end; { Окончание алгоритма сортировки}
writeln('Отсортированный массив:');
for i:=1 to n do
write(a[i]:4);
end.