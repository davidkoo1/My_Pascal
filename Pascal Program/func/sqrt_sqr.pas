//Sqr = x * x : Integer Sqr(x)   //х во второй степени
//Sqrt = ✓x  : double  Sqrt(x); //корень от х

var x : single;
    y : integer;
  
begin

  x := Sqrt(100);     // x = 10;
  WriteLn(x:0:2);
  
//  x := Sqrt(-100);    //Error or NaN
//  WriteLn(x:0:2);
  
  x := Sqr(-100);    // x = 10000
  WriteLn(x:0:2);


  y := 25;
  y := Sqr(y);     // y = 625
  WriteLn(y:0:2);
 
 
end.

