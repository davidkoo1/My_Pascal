var x : Integer;
begin
  
  x := 100;
  
  Dec(x);    // x = 99
  Writeln(x); 
  Inc(x);    //x = 100
  WriteLn(x);  
  
  Dec(x,10); //x = 90
  WriteLn(x);
  Inc(x,20);  // x = 110
  WriteLn(x);
  
  Dec(x, -10); //x = 120
  WriteLn(x);
  Inc(x, -20); // x = 100
  WriteLn(x);
  
end.

