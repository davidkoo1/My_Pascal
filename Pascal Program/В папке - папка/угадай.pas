//угадай число 
var e,m, i : integer;
begin
  randomize;
  m:= random(1);
  writeln('Попробуй угадать число, которое я загадал');
  writeln('Тебе нужна подсказка?');
  writeln('1-Да. ||  2-Нет. <-- Выбери цифру');
  
  readln(i);
  
  if i = 1 then 
    writeln('Это число от 0 до 101')
  else 
    writeln('Тогда попробуй сам ');
  
 readln(e);
 if e = m then begin
  writeln('Ты угодал');
  exit;
  end
  else if not(e = m) then begin
    writeln('Попробуй ещё раз');
    writeln('Тебе нужна ещё подсказка?');
  writeln('1-Да. ||  2-Нет. <-- Выбери цифру');
  
  readln(i);
  if i = 1 then begin   
    writeln('Хорошо, вот : ');
    if m>50 then writeln('Это число > 50')
    else if m<50 then writeln('Это число < 50');
    end
  else 
    writeln('Тогда попробуй сам ');
  end;
  
  readln(e);
  if e = m then
  writeln('Ты угодал')
  else if not(e = m) then begin
    writeln('Попробуй ещё раз');
    writeln('Eщё подсказка?');
  writeln('1-Да. ||  2-Нет. <-- Выбери цифру');
  
  readln(i);
  if i = 1 then begin   
    writeln('Это последняя подсказка.. ');
    writeln('Возможно это число на 2 больше, чем ',m-2)
    
    end
  else 
    writeln('Тогда попробуй сам ');
  end;

repeat
  readln(e);
  until e=m;
 
 
 
 
 
 
 
 
 
 
  {repeat
  readln(e);
  if e = m then
  writeln('Ты угодал')
  else
    writeln('Попробуй ещё раз');
 until e=m;
 }
end.