uses SysUtils ;

var x : Integer;
    z : real;
    
    
procedure MyRandomize;
var h,m,s,ms : Word;
begin

  DecodeTime(Now,h,m,s,ms);
  Randseed := ms;
  
end;

begin
  
 Randomize;
 
 //RandSeed := 500;
 
 //MyRandomize;
 
  x := Random(100);
  WriteLn(x);
  
  z := Random(100);
  WriteLn(z:0:4);
 
  z := Random;
  WriteLn(z:0:4);
  
end.
