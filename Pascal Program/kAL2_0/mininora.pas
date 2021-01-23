var min, m,n : Integer;
h,mi,c : Integer;
a,b,d : Integer;
r,x,z : Integer;
g,v,o,t : Integer;
y,q,s,i,j,k,l,f : Integer;

begin{
//минуты в часы
Write('Введи минуты и результат получишь в часах: ');
  readln(min);
  m:= min div 60;
  n:= min mod 60;
  WriteLn(min,' -Это ',m,' Час. и ',n,' Мин.');
  
  
//часы в минуты 
  Write('Введи часы и минуты, а результат получишь в минутах: ');
  ReadLn(h,mi);
  c:=h*60+mi;
  WriteLn(h,' И ',mi,' -Это ',c, ' Мин.');
  
//минуты в днях
WriteLn('Введи минуты и получишь кол-во дней');
  ReadLn(a);
  b:= a div 1440;
  WriteLn(b);
  
//часы в дни
WriteLn('Введи часы и получишь количество дней');
readln(x);
z:= x div 24;
WriteLn(z);

//дни в минуты
ReadLn(g);
v:=g*1440;
WriteLn(v);
}
//дни в часы
ReadLn(o);
r:=o*24;
WriteLn(r);

//Дни в недели
ReadLn(t);
d:= t div 7;
WriteLn(d);

//Неделя в дни
Readln(y);
q:=y*7;
WriteLn(q);

//Дни в года
ReadLn(f);
 k:= f div 365;
WriteLn(k);

//года в дни
ReadLn(i);
l:=i*365;
WriteLn(l);
//года в часы 
end.
