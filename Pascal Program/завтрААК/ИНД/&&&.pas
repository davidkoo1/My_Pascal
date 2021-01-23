uses crt;
var a,b,z: longint ;
begin
WriteLn('Введите 2 числа ');
readln(a,b);
WriteLn('Введите цифру действия ');
WriteLn('1.Деление');
WriteLn( '2.Умножение');
WriteLn( '3.Сумма');
WriteLn( '4.Вычитание');
WriteLn( '-***************-');
WriteLn( '5.Остаток от деления ');
WriteLn( '6.Целочисленное деление');
ReadLn(z);
case z of
1: WriteLn(a/b);
2: WriteLn(a*b);
3: WriteLn(a+b);
4: WriteLn(a-b);
5: WriteLn(a mod b);
6: WriteLn(a div b);
end;
end.