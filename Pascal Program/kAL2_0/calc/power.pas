//power or pow (a,b) - a^ b 

uses Math; // когда как

var 
  x, y, z : real;


  g,c : double;//Для считывания

function  MyPower(b : double; e : double) : double;
var m : Byte;
    i : Integer;
    Res : Double;
  
begin
m:=0;
    if e < 0 then m := 1
      else if e = 0 then m := 2
          else m := 3;
     
    if b < 0 then m := 10 + m
      else if b = 0 then m := 20 + m
        else m := 30 + m;
        
    case m of 
      11 :
        begin
          Res := 1 / Exp(Abs(e) * Ln(Abs(b)));
          i := Round(e);
          if odd(i) then Res := -1 * Res;
          end;
       12, 32 :      //Нулевая степень 
             Res := 1;
        13 :       //Отрицательное число, положительная степень
          begin    //Если е - не целое число, то получаем
            Res := Exp(e * Ln(Abs(b)));
            i := Round(e);
            if Odd(i) then Res := -1 * Res;
          end;
         21..23 :     //Число равно нулю
            Res := 0;
         31 : 
             Res := 1 / Exp(Abs(e) * Ln(b));
         33 : 
             Res := Exp(e * Ln(b));
           end;
           
           
         MyPower := Res;
 
end;

begin
  x:= 2;
  y:= 3;
  z:= power(x,y);   //z = x ^ y
  WriteLn(z:0:2);
  
  z:= MyPower(x,y); //MyFunction x ^ y
  Writeln(z:0:2);  // z = x ^ y
writeln;
  writeln('Input a _ and _ b = This will equal the next entry - a^b : ');
  Readln(g, c);
  z:= power(g,c);
  Writeln('power(',g,'^',c,') = ',z:0:2);
  z:= MyPower(g,c);
  Writeln('MyPower(',g,'^',c,') = ',z:0:2);
  
end.
