procedure  treug (x1,y1,x2,y2,x3,y3, K:Integer);
var Mx,My,Px,Py,Nx,Ny:Integer;
begin 
line (x1,y1,x2,y2);
line (x2,y2,x3,y3);
line (x3,y3,x1,y1);
end;
