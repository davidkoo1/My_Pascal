var x,y : Real;
  z : Integer;
begin
  
  x := Int(3.14);   // x = 3.00
  WriteLn(x:0:2);
  y := Frac(3.14);   // y = 0.14
  WriteLn(y:0:2);
  z:= Round(x);    //z = 3
  WriteLn(z);
end.
