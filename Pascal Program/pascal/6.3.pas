﻿
{
6.3) Напишите программу вычисления площади поверхности параллелепипеда (площадь развертки),пользователь вводит размеры параллелепипеда a, b и h – вещественные числа.
}
var a, b, h : real;
begin
  read(a,b,h);
  writeln('площади поверхности параллелепипеда  ',2*(a*b+a*h+b*h), ' cm.kB');
end.