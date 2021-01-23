var x : Real;
    y,z : Integer;
begin
  
  y :=100;
  x := 55.7;
  
  //z := y + x;     //!!! Неправильно
  z := y + Round(x);
  WriteLn(z);
  
  WriteLn('Round(55.3) = ', Round(55.3));
  WriteLn('Round(55.6) = ', Round(55.6));
  WriteLn('Round(55.5) = ', Round(55.5));
  WriteLn('Round(56.5) = ', Round(56.5));
  
  //Так делать нельзя
  case Round(x) of
    56 : WriteLn('x = 56');
  end;
  /*
  //а так можно
  z := Round(x);
  case z of 
  ......
  */
end.
