﻿{ 
Напишите программу вычисления объема V и площади боковой поверхности S цилиндра.   
Пользователь вводит радиус и высоту. Формулы для расчетов напишите самостоятельно.         
Вместо числа Пи = 3,1415… используйте стандартную функцию Паскаля  pi
  }
  
  
  //uses crt;
 var V, A, r, h : real;
 begin
   writeln('Радиус цилиндра равен  R: ');
   read(r);
   writeln('Высота цилиндра равна h: ');
   read(h);
   V:=PI*sqr(r)*h;
   A:=2*PI*r*h;
   //stextcolor(red);
   writeln('Объём цилиндра равен V: ',V:6:2, ' См.куб.');
   writeln('Площади боковой поверхности цилиндра равен A: ',A:6:2 , '  Cм.кв.');
 end.