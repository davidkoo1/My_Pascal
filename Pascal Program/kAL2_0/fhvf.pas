var m:set of byte;    a,i:byte;
begin
m:=[1..5];
for i:=1 to 4 do 
begin  
read(a);  
if a in m then 
exclude(m,a); 
end;
for i:=1 to 5 do
if i in m then 
write(i)
end.
