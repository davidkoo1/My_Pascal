//повороты 4 и 6
//движение 8 и 2
//атака 5
uses GraphABC;
var x,y,n,h,xp,yp,xv,yv,nv,mv,xpv,ypv,pmvx,pmvy:integer;
label 1,2,3,4,5,6,7,8,9;
begin
x:=8;
y:=12;
n:=1;
4:xv:=random(16)+1;
yv:=random(12)+1;
nv:=random(4)+1;
pmvx:=abs(xv-x);
pmvy:=abs(yv-y);
if pmvy>pmvx then mv:=1;
if pmvy<pmvx then mv:=2;
if pmvy=pmvx then mv:=random(2)+1;
if x=xv then goto 4;
if y=yv then goto 4;
1:setpenwidth(1);
setpencolor(clgreen);
setbrushcolor(clred);
rectangle(0,0,640,480);
setpenwidth(1);
setpencolor(clblue);
setbrushcolor(clgold);
rectangle(x*40-15,y*40-15,x*40+15,y*40+15);
setpenwidth(5);
if n=1 then line(x*40,y*40-20,x*40,y*40);
if n=2 then line(x*40-20,y*40,x*40,y*40);
if n=3 then line(x*40,y*40+20,x*40,y*40);
if n=4 then line(x*40+20,y*40,x*40,y*40);
setpenwidth(1);
circle(x*40,y*40,13);
setpenwidth(1);
setpencolor(clGreen);
setbrushcolor(clblack);
rectangle(xv*40-15,yv*40-15,xv*40+15,yv*40+15);
setpenwidth(5);
if nv=1 then line(xv*40,yv*40-20,xv*40,yv*40);
if nv=2 then line(xv*40-20,yv*40,xv*40,yv*40);
if nv=3 then line(xv*40,yv*40+20,xv*40,yv*40);
if nv=4 then line(xv*40+20,yv*40,xv*40,yv*40);
setpenwidth(1);
circle(xv*40,yv*40,13);
3:read(h);
if h=0 then goto 3;
if h=7 then goto 3;
if h=9 then goto 3;
if h=1 then goto 3;
if h=3 then goto 3;
if h>10 then goto 3;
if h=4 then 
begin
if n=4 then n:=1 else
if n<4 then n:=n+1;
end;
if h=6 then 
begin
if n=1 then n:=4 else
if n>1 then n:=n-1;
end;
if h=8 then 
begin
if n=1 then y:=y-1 else
if n=2 then x:=x-1 else
if n=3 then y:=y+1 else
if n=4 then x:=x+1;
end;
if h=2 then 
begin
if n=1 then y:=y+1 else
if n=2 then x:=x+1 else
if n=3 then y:=y-1 else
if n=4 then x:=x-1;
end;
if h=5 then 
begin
if n=1 then 
begin
xp:=x*40;
yp:=y*40-25;
end;
if n=2 then 
begin
xp:=x*40-25;
yp:=y*40;
end;
if n=3 then 
begin
xp:=x*40;
yp:=y*40+25;
end;
if n=4 then 
begin
xp:=x*40+25;
yp:=y*40;
end;
2:setbrushcolor(clBlack);
circle(xp,yp,3);
sleep(1);
setpencolor(clGold);
setbrushcolor(clGold);
circle(xp,yp,4);
if xp<640 then 
if xp>0 then 
if yp<480 then 
if yp>0 then 
begin
if n=1 then yp:=yp-1;
if n=2 then xp:=xp-1;
if n=3 then yp:=yp+1;
if n=4 then xp:=xp+1;
if xp=xv*40 then
if yp=yv*40 then goto 4;
goto 2;
end;
end;
if mv=1 then
begin
 if x=xv then 
  begin
   if y>yv then
    begin
     if nv=3 then
      begin
       xpv:=xv*40;
       ypv:=yv*40+25;
        5:ypv:=ypv+1;
        setbrushcolor(clblack);
        circle(xpv,ypv,3);
        sleep(10);
        setbrushcolor(clgold);
        setpencolor(clGold);
        circle(xpv,ypv,4);
        if y*40=ypv then goto 7 else goto 5;
      end;
     if nv=2 then nv:=3;
     if nv=4 then nv:=3;
     if nv=1 then nv:=4;
    end;
   if y<yv then
    begin
     if nv=1 then
      begin
       xpv:=xv*40;
       ypv:=yv*40-25;
        6:ypv:=ypv-1;
        setbrushcolor(clblack);
        circle(xpv,ypv,3);
        sleep(10);
        setbrushcolor(clgold);
        setpencolor(clGold);
        circle(xpv,ypv,4);
        if y*40=ypv then goto 7 else goto 6;
      end;
     if nv=2 then nv:=1;
     if nv=4 then nv:=1;
     if nv=3 then nv:=2;
    end;
  end;
 if x>xv then 
  begin
   if nv=4 then xv:=xv+1;
   if nv=3 then nv:=4;
   if nv=1 then nv:=4;
   if nv=2 then nv:=1;
  end;
 if x<xv then 
  begin
   if nv=2 then xv:=xv-1;
   if nv=3 then nv:=2;
   if nv=1 then nv:=2;
   if nv=4 then nv:=3;
  end;
end;
if mv=2 then
begin
 if y=yv then 
  begin
   if x>xv then
    begin
     if nv=4 then
      begin
       xpv:=xv*40+25;
       ypv:=yv*40;
        8:xpv:=xpv+1;
        setbrushcolor(clblack);
        circle(xpv,ypv,3);
        sleep(10);
        setbrushcolor(clgold);
        setpencolor(clGold);
        circle(xpv,ypv,4);
        if x*40=xpv then goto 7 else goto 8;
      end;
     if nv=1 then nv:=4;
     if nv=3 then nv:=4;
     if nv=2 then nv:=1;
    end;
   if x<xv then
    begin
     if nv=2 then
      begin
       xpv:=xv*40-25;
       ypv:=yv*40;
        9:xpv:=xpv-1;
        setbrushcolor(clblack);
        circle(xpv,ypv,3);
        sleep(10);
        setbrushcolor(clgold);
        setpencolor(clGold);
        circle(xpv,ypv,4);
        if x*40=xpv then goto 7 else goto 9;
      end;
     if nv=1 then nv:=2;
     if nv=3 then nv:=2;
     if nv=4 then nv:=3;
    end;
  end;
 if y>yv then 
  begin
   if nv=3 then yv:=yv+1;
   if nv=4 then nv:=3;
   if nv=2 then nv:=3;
   if nv=1 then nv:=4;
  end;
 if y<yv then 
  begin
   if nv=1 then yv:=yv-1;
   if nv=2 then nv:=1;
   if nv=4 then nv:=1;
   if nv=3 then nv:=2;
  end;
end;
goto 1;
7:setbrushcolor(clYellow);
setpencolor(clwhite);
circle(x*40,y*40,75);
sleep(50);
end.