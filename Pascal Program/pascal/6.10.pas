﻿{
6.10) Составьте программу, находящую разность между трехзначным числом и числом,
составленным из тех же цифр, но взятых в обратном порядке. 
}

var a,b,c,d,s,e:integer;  
Begin  
WriteLn('Введите трехзначное число');  
Readln(a);  
b:=a div 100;  
c:=(a div 10 mod 10)*10;  
d:=(a mod 10)*100; 

e:=d+c+b;
writeln('Разница между ',a, ' и ',e,' составляет  ', abs(a-e));
 
End.