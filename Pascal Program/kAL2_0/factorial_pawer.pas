var
  y,a : Integer;
  
function MyFactorial(x: Integer) : Integer ;
var i,s : Integer;
begin
    s:=1;
  for i:=1 to x do
    s:=s*i;
   MyFactorial:=s;
   
end;

function Stepeni(x,n : Integer) : Integer;
var i, s : Integer;
begin
s:=1;
  for i:=1 to n do
    s:=s*x;
    Stepeni := s;
end;

begin 
Readln(a);
y:=MyFactorial(a);
WriteLn(a,'!= ',y);


ReadLn(a,y);
WriteLn(a,'^ ',y,' = ',Stepeni(a,y));
end.
