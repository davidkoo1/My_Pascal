﻿//Давид
var
  a,b,c,i,n : integer;
  begin
    write('Сколько последовательностей будет:', ' ');
    readln(n);
      a:=0;
      write(a,' ');
      b:=1;
      write(b,' ');
      for i:=3 to n do
      begin
        write(a+b, ' ');
        c:=b;
        b := a+b;
        a:=c;
      end;
  end.