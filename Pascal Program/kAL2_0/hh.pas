var a,b,z: Integer ;
begin
WriteLn('Введите 2 числа ');
readln(a,b);
WriteLn('Введите цифру действия ');
  WriteLn('1.Деление');
 WriteLn( '2.Умножение');
 WriteLn( '3.Сумма');
 WriteLn( '4.Вычитание');
 ReadLn(z);
case z of
1: WriteLn(a/b);
2: WriteLn(a*b);
3: WriteLn(a+b);
4: WriteLn(a-b);
end;
end.
