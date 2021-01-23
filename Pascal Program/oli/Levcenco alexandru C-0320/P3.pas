program p3;
var
factorial: longint;
n, i,x,p: byte; 
begin
write('n = '); readln(n);
factorial := 1;
for i:=2 to n do
factorial := factorial * i;
writeln('n! = ', factorial);
readln;
while factorial>0 do
begin
x:=factorial mod 10;
if x=0 then p:=p+1;
factorial:=factorial div 10;
end;
writeln(p);
end.