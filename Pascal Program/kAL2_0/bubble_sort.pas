program bubble_sort;
var b,i,r : Integer;
var sor: array [1..5] of Integer ;
begin
 { sor[1] := 1;
  sor[2] := 8;
  sor[3] := 2;
  sor[4] := 7;
  sor[5] := 9;}
 Read(sor[1], sor[2],sor[3],sor[4],sor[5]);
   for i := 1 to 5-1 do
for b := 1 to 5-i do
 if (sor[b]>sor[b+1]) then 
 begin 
  r := sor[b];
  sor[b] := sor[b+1];
  sor[b+1] := r;
  end;
  for i:= 1 to 5 do
  WriteLn('Array sort:',sor[i]);
  
end.
