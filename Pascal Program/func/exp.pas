//exp(x) = e ^ x
var x,y : double;
begin
 y:= Exp(2);     // y = Exp(e) = 2,72
 WriteLn('Exp(2) = e * e = ', y:0:4);
 
 x := Exp(3 * Ln(2)); //x = 2 в степени 3
 WriteLn('2 ^ 3 = ', x:0:4);
  
end.
