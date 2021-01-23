
var
  a,i,j,h : Integer;

  b : array [0..100] of Integer;

begin

for i:=1 to 100 do 
  begin
    b[i]:= random(1000);
    WriteLn(b[i]);
  end;
  
  for i:=1 to 100-1 do 
    for j := 1 to 100-i do
        if b[j]>b[j+1] then begin
      a := b[j];
      b[j]:=b[j+1];
      b[j+1] := a;
     
     end;
     for i := 1 to 100 do
      Write(b[i]:5);
end.
