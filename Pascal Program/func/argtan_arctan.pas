//argtan      результат работы функции - угол в радианах
const STEP = 0.1; //0.01
var
x1: real;
//---------------------------------------------------//
   x, at,gr : single;
begin
  //------------------------------------------------//
  //                                                    readln(x1);
  //                                                    writeln(x1:0:3);
  //                                                    x1:=arctan(x1);
  //                                                    writeln(x1:0:3);
  //----------------------------------------------//
     x:= -STEP;
     while x <= 1 do
begin
  x :=abs(x + STEP);
  at := arctan(x);
  gr := (180 * at / pi);
  writeln('argtan (',x:0:1, ') = ',at:0:4, ' in degrees (', gr:0:1, ')');
  end;
  readln;
end.

