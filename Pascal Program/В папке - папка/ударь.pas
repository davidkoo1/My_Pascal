//- Движение: цифры 4 и 6; - Ударить молотком: цифра 2.
uses GraphABC;
var h1,n,c,a,clc,h,sc:integer;
k,l,m:real;
g:integer;
label 1,2,3,4;
begin
4:setpenwidth(5);
c:=random(6);
h1:=0;
h:=50;
sc:=0;
clc:=random(4)+1;
1:setpencolor(clblack);
setbrushcolor(clwhite);
rectangle(0,0,640,301);
setfontsize(30);
textout(3,3,'Осталось ходов:');
textout(320,3,h);
textout(3,63,'Спасенных червячков:');
textout(430,63,sc);
if clc=1 then setbrushcolor(clOrange);
if clc=2 then setbrushcolor(clGreen);
if clc=3 then setbrushcolor(clBlue);
if clc=4 then setbrushcolor(clBrown);
if clc=1 then setpencolor(clOrange);
if clc=2 then setpencolor(clGreen);
if clc=3 then setpencolor(clBlue);
if clc=4 then setpencolor(clBrown);
circle(24+96*c-1,300+a,24);
setpencolor(clWhite);
setbrushcolor(clwhite);
setpenwidth(1);
circle(24-12+96*c-1,300-12+a,6);
circle(24+12+96*c-1,300-12+a,6);
setpencolor(clBlack);
setbrushcolor(clBlack);
circle(24-12+96*c-1,300-13+a,4);
circle(24+12+96*c-1,300-13+a,4);
setpenwidth(5);
setpencolor(clSaddleBrown);
setbrushcolor(clSaddleBrown);
rectangle(0,300,640,480);
setpencolor(clpurple);
setpenwidth(15);
line(96+96*h1,260,96+96*h1,164);
setpenwidth(5);
setpencolor(cldimgray);
setbrushcolor(clgray);
rectangle(48+96*h1,164,144+96*h1,212);
setpencolor(clblack);
setbrushcolor(clwhite);
read(n);
if n=6 then 
begin
h1:=h1+1;
h:=h-1;
end;
if n=4 then 
begin
h1:=h1-1;
h:=h-1;
end;
if n=2 then 
begin
h:=h-1;
setpencolor(clwhite);
setpenwidth(15);
line(96+96*h1,262,96+96*h1,164);
setpenwidth(5);
rectangle(48+96*h1,164,144+96*h1,212);
setpencolor(clpurple);
setpenwidth(15);
line(0+96*h1,260,96+96*h1,260);
setpenwidth(5);
setpencolor(cldimgray);
setbrushcolor(clgray);
rectangle(0+96*h1,300,48+96*h1,220); 
setpencolor(clblack);
setbrushcolor(clwhite);
sleep(550);
if h1=c then
begin
sc:=sc+1;
sleep(250);
c:=random(6);
clc:=random(4)+1;
setpencolor(clblack);
setbrushcolor(clwhite);
rectangle(0,0,640,301);
textout(3,3,'Осталось ходов:');
textout(320,3,h);
textout(3,63,'Спасенных червячков:');
textout(430,63,sc);
setpencolor(clSaddleBrown);
setbrushcolor(clSaddleBrown);
rectangle(0,300,640,480);
setpencolor(clpurple);
setpenwidth(15);
line(96+96*h1,260,96+96*h1,164);
setpenwidth(5);
setpencolor(cldimgray);
setbrushcolor(clgray);
rectangle(48+96*h1,164,144+96*h1,212);
setpencolor(clblack);
setbrushcolor(clwhite);
begin
a:=25;
2:a:=a-1;
if clc=1 then setbrushcolor(clOrange);
if clc=2 then setbrushcolor(clGreen);
if clc=3 then setbrushcolor(clBlue);
if clc=4 then setbrushcolor(clBrown);
if clc=1 then setpencolor(clOrange);
if clc=2 then setpencolor(clGreen);
if clc=3 then setpencolor(clBlue);
if clc=4 then setpencolor(clBrown);
circle(24+96*c-1,300+a,24);
setpencolor(clWhite);
setbrushcolor(clwhite);
setpenwidth(1);
circle(24-12+96*c-1,300-12+a,6);
circle(24+12+96*c-1,300-12+a,6);
setpencolor(clBlack);
setbrushcolor(clBlack);
circle(24-12+96*c-1,300-13+a,4);
circle(24+12+96*c-1,300-13+a,4);
setpenwidth(5);
setpencolor(clSaddleBrown);
setbrushcolor(clSaddleBrown);
rectangle(0,300,640,480);
sleep(50);
if a>0 then goto 2;
end;
end;
end;
if h>0 then write('') else goto 3;
goto 1;
3:setpencolor(clblack);
setbrushcolor(clwhite);
rectangle(0,0,640,480);
setfontsize(70);
textout(3,120,'Вы спасли:');
textout(500,120,sc);
k:=sc;
l:=k-((int(k/10))*10);
m:=k-((int(k/100))*100);
if m=11 then textout(100,220,'червячков') else
if m=12 then textout(100,220,'червячков') else
if m=13 then textout(100,220,'червячков') else
if m=14 then textout(100,220,'червячков') else
if l=1 then textout(100,220,'червячка') else
if l=2 then textout(100,220,'червячка') else
if l=3 then textout(100,220,'червячка') else
if l=4 then textout(100,220,'червячка') else
if l=0 then textout(100,220,'червячков') else
if l>4 then textout(100,220,'червячков') else write('');
read(g);
goto 4;
end.