//ЕСЛИ НЕТ ПОДХОДЯЩЕЙ ВВЕДИ ЧИСЛО БОЛЬШЕ 11+
program caps;
uses GraphABC;
var m1,m2,m3,m4,m5,m6,m7,m,c1,c2,c3,c4,c5,c6,c7,c,b,s,s1,r:integer;
label 1,2,3;
begin
setbrushcolor(clwhite);
s1:=0;
r:=0;
setfontsize(30);
3:s:=-1;
s1:=s1-1;
m1:=random(4)+1;
m2:=random(4)+1;
m3:=random(4)+1;
m4:=random(4)+1;
m5:=random(4)+1;
m6:=random(4)+1;
m7:=random(4)+1;
m:=random(4)+1;
c1:=random(14)+1;
c2:=random(14)+1;
c3:=random(14)+1;
c4:=random(14)+1;
c5:=random(14)+1;
c6:=random(14)+1;
c7:=random(14)+1;
c:=random(14)+1;
1:s:=s+1;
s1:=s1+1;
if s>r then r:=s else r:=r;
m:=random(4)+1;
c:=random(14)+1;
rectangle(0,0,640,480);
rectangle(0,160,80,240);
rectangle(90,160,170,240);
rectangle(180,160,260,240);
rectangle(270,160,350,240);
rectangle(360,160,440,240);
rectangle(450,160,530,240);
rectangle(540,160,620,240);
rectangle(270,10,350,90);
setpencolor(clblack);
setfontcolor(clblack);
textout(10,400,'Вы отбили:');
textout(220,400,s);
textout(10,300,'Вы отбили за все время:');
textout(470,300,s1);
textout(350,400,'Рекорд:');
textout(500,400,r);
if m1=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (10,170,'   ♣');
end;
if m1=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (10,170,'   ♥');
end;
if m1=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (10,170,'   ♠');
end;
if m1=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (10,170,'   ♦');
end;
if c1=1 then textout (10,170,'1');
if c1=2 then textout (10,170,'2');
if c1=3 then textout (10,170,'3');
if c1=4 then textout (10,170,'4');
if c1=5 then textout (10,170,'5');
if c1=6 then textout (10,170,'6');
if c1=7 then textout (10,170,'7');
if c1=8 then textout (10,170,'8');
if c1=9 then textout (10,170,'9');
if c1=10 then textout (10,170,'I0');
if c1=11 then textout (10,170,'J');
if c1=12 then textout (10,170,'Q');
if c1=13 then textout (10,170,'K');
if c1=14 then textout (10,170,'A');
if m2=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (100,170,'   ♣');
end;
if m2=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (100,170,'   ♥');
end;
if m2=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (100,170,'   ♠');
end;
if m2=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (100,170,'   ♦');
end;
if c2=1 then textout (100,170,'1');
if c2=2 then textout (100,170,'2');
if c2=3 then textout (100,170,'3');
if c2=4 then textout (100,170,'4');
if c2=5 then textout (100,170,'5');
if c2=6 then textout (100,170,'6');
if c2=7 then textout (100,170,'7');
if c2=8 then textout (100,170,'8');
if c2=9 then textout (100,170,'9');
if c2=10 then textout (100,170,'I0');
if c2=11 then textout (100,170,'J');
if c2=12 then textout (100,170,'Q');
if c2=13 then textout (100,170,'K');
if c2=14 then textout (100,170,'A');
if m3=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (190,170,'   ♣');
end;
if m3=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (190,170,'   ♥');
end;
if m3=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (190,170,'   ♠');
end;
if m3=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (190,170,'   ♦');
end;
if c3=1 then textout (190,170,'1');
if c3=2 then textout (190,170,'2');
if c3=3 then textout (190,170,'3');
if c3=4 then textout (190,170,'4');
if c3=5 then textout (190,170,'5');
if c3=6 then textout (190,170,'6');
if c3=7 then textout (190,170,'7');
if c3=8 then textout (190,170,'8');
if c3=9 then textout (190,170,'9');
if c3=10 then textout (190,170,'I0');
if c3=11 then textout (190,170,'J');
if c3=12 then textout (190,170,'Q');
if c3=13 then textout (190,170,'K');
if c3=14 then textout (190,170,'A');
if m4=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280,170,'   ♣');
end;
if m4=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280,170,'   ♥');
end;
if m4=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280,170,'   ♠');
end;
if m4=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280,170,'   ♦');
end;
if c4=1 then textout (280,170,'1');
if c4=2 then textout (280,170,'2');
if c4=3 then textout (280,170,'3');
if c4=4 then textout (280,170,'4');
if c4=5 then textout (280,170,'5');
if c4=6 then textout (280,170,'6');
if c4=7 then textout (280,170,'7');
if c4=8 then textout (280,170,'8');
if c4=9 then textout (280,170,'9');
if c4=10 then textout (280,170,'I0');
if c4=11 then textout (280,170,'J');
if c4=12 then textout (280,170,'Q');
if c4=13 then textout (280,170,'K');
if c4=14 then textout (280,170,'A');
if m5=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (370,170,'   ♣');
end;
if m5=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (370,170,'   ♥');
end;
if m5=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (370,170,'   ♠');
end;
if m5=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (370,170,'   ♦');
end;
if c5=1 then textout (370,170,'1');
if c5=2 then textout (370,170,'2');
if c5=3 then textout (370,170,'3');
if c5=4 then textout (370,170,'4');
if c5=5 then textout (370,170,'5');
if c5=6 then textout (370,170,'6');
if c5=7 then textout (370,170,'7');
if c5=8 then textout (370,170,'8');
if c5=9 then textout (370,170,'9');
if c5=10 then textout (370,170,'I0');
if c5=11 then textout (370,170,'J');
if c5=12 then textout (370,170,'Q');
if c5=13 then textout (370,170,'K');
if c5=14 then textout (370,170,'A');
if m6=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (460,170,'   ♣');
end;
if m6=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (460,170,'   ♥');
end;
if m6=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (460,170,'   ♠');
end;
if m6=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (460,170,'   ♦');
end;
if c6=1 then textout (460,170,'1');
if c6=2 then textout (460,170,'2');
if c6=3 then textout (460,170,'3');
if c6=4 then textout (460,170,'4');
if c6=5 then textout (460,170,'5');
if c6=6 then textout (460,170,'6');
if c6=7 then textout (460,170,'7');
if c6=8 then textout (460,170,'8');
if c6=9 then textout (460,170,'9');
if c6=10 then textout (460,170,'I0');
if c6=11 then textout (460,170,'J');
if c6=12 then textout (460,170,'Q');
if c6=13 then textout (460,170,'K');
if c6=14 then textout (460,170,'A');
if m7=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (550,170,'   ♣');
end;
if m7=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (550,170,'   ♥');
end;
if m7=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (550,170,'   ♠');
end;
if m7=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (550,170,'   ♦');
end;
if c7=1 then textout (550,170,'1');
if c7=2 then textout (550,170,'2');
if c7=3 then textout (550,170,'3');
if c7=4 then textout (550,170,'4');
if c7=5 then textout (550,170,'5');
if c7=6 then textout (550,170,'6');
if c7=7 then textout (550,170,'7');
if c7=8 then textout (550,170,'8');
if c7=9 then textout (550,170,'9');
if c7=10 then textout (550,170,'I0');
if c7=11 then textout (550,170,'J');
if c7=12 then textout (550,170,'Q');
if c7=13 then textout (550,170,'K');
if c7=14 then textout (550,170,'A');
if m=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280,20,'   ♣');
end;
if m=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280,20,'   ♥');
end;
if m=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280,20,'   ♠');
end;
if m=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280,20,'   ♦');
end;
if c=1 then textout (280,20,'1');
if c=2 then textout (280,20,'2');
if c=3 then textout (280,20,'3');
if c=4 then textout (280,20,'4');
if c=5 then textout (280,20,'5');
if c=6 then textout (280,20,'6');
if c=7 then textout (280,20,'7');
if c=8 then textout (280,20,'8');
if c=9 then textout (280,20,'9');
if c=10 then textout (280,20,'I0');
if c=11 then textout (280,20,'J');
if c=12 then textout (280,20,'Q');
if c=13 then textout (280,20,'K');
if c=14 then textout (280,20,'A');
2:
read(b);
setpencolor(clblack);
if b=1 then
if m1=m then
if c1>c then
begin
rectangle(270+20,30,350+20,110);
if m1=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m1=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m1=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m1=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;

if c1=1 then textout (280+20,40,'1');
if c1=2 then textout (280+20,40,'2');
if c1=3 then textout (280+20,40,'3');
if c1=4 then textout (280+20,40,'4');
if c1=5 then textout (280+20,40,'5');
if c1=6 then textout (280+20,40,'6');
if c1=7 then textout (280+20,40,'7');
if c1=8 then textout (280+20,40,'8');
if c1=9 then textout (280+20,40,'9');
if c1=10 then textout (280+20,40,'I0');
if c1=11 then textout (280+20,40,'J');
if c1=12 then textout (280+20,40,'Q');
if c1=13 then textout (280+20,40,'K');
if c1=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(0,160,80,240);
c1:=random(14)+1;
m1:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b=2 then
if m2=m then
if c2>c then
begin
rectangle(270+20,30,350+20,110);
if m2=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m2=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m2=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m2=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;
if c2=1 then textout (280+20,40,'1');
if c2=2 then textout (280+20,40,'2');
if c2=3 then textout (280+20,40,'3');
if c2=4 then textout (280+20,40,'4');
if c2=5 then textout (280+20,40,'5');
if c2=6 then textout (280+20,40,'6');
if c2=7 then textout (280+20,40,'7');
if c2=8 then textout (280+20,40,'8');
if c2=9 then textout (280+20,40,'9');
if c2=10 then textout (280+20,40,'I0');
if c2=11 then textout (280+20,40,'J');
if c2=12 then textout (280+20,40,'Q');
if c2=13 then textout (280+20,40,'K');
if c2=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(90,160,170,240);
c2:=random(14)+1;
m2:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b=3 then
if m3=m then
if c3>c then
begin
rectangle(270+20,30,350+20,110);
if m3=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m3=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m3=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m3=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;
if c3=1 then textout (280+20,40,'1');
if c3=2 then textout (280+20,40,'2');
if c3=3 then textout (280+20,40,'3');
if c3=4 then textout (280+20,40,'4');
if c3=5 then textout (280+20,40,'5');
if c3=6 then textout (280+20,40,'6');
if c3=7 then textout (280+20,40,'7');
if c3=8 then textout (280+20,40,'8');
if c3=9 then textout (280+20,40,'9');
if c3=10 then textout (280+20,40,'I0');
if c3=11 then textout (280+20,40,'J');
if c3=12 then textout (280+20,40,'Q');
if c3=13 then textout (280+20,40,'K');
if c3=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(180,160,260,240);
c3:=random(14)+1;
m3:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b=4 then
if m4=m then
if c4>c then
begin
rectangle(270+20,30,350+20,110);
if m4=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m4=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m4=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m4=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;
if c4=1 then textout (280+20,40,'1');
if c4=2 then textout (280+20,40,'2');
if c4=3 then textout (280+20,40,'3');
if c4=4 then textout (280+20,40,'4');
if c4=5 then textout (280+20,40,'5');
if c4=6 then textout (280+20,40,'6');
if c4=7 then textout (280+20,40,'7');
if c4=8 then textout (280+20,40,'8');
if c4=9 then textout (280+20,40,'9');
if c4=10 then textout (280+20,40,'I0');
if c4=11 then textout (280+20,40,'J');
if c4=12 then textout (280+20,40,'Q');
if c4=13 then textout (280+20,40,'K');
if c4=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(270,160,350,240);
c4:=random(14)+1;
m4:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b=5 then
if m5=m then
if c5>c then
begin
rectangle(270+20,30,350+20,110);
if m5=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m5=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m5=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m5=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;
if c5=1 then textout (280+20,40,'1');
if c5=2 then textout (280+20,40,'2');
if c5=3 then textout (280+20,40,'3');
if c5=4 then textout (280+20,40,'4');
if c5=5 then textout (280+20,40,'5');
if c5=6 then textout (280+20,40,'6');
if c5=7 then textout (280+20,40,'7');
if c5=8 then textout (280+20,40,'8');
if c5=9 then textout (280+20,40,'9');
if c5=10 then textout (280+20,40,'I0');
if c5=11 then textout (280+20,40,'J');
if c5=12 then textout (280+20,40,'Q');
if c5=13 then textout (280+20,40,'K');
if c5=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(360,160,440,240);
c5:=random(14)+1;
m5:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b=6 then
if m6=m then
if c6>c then
begin
rectangle(270+20,30,350+20,110);
if m6=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m6=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m6=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m6=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;
if c6=1 then textout (280+20,40,'1');
if c6=2 then textout (280+20,40,'2');
if c6=3 then textout (280+20,40,'3');
if c6=4 then textout (280+20,40,'4');
if c6=5 then textout (280+20,40,'5');
if c6=6 then textout (280+20,40,'6');
if c6=7 then textout (280+20,40,'7');
if c6=8 then textout (280+20,40,'8');
if c6=9 then textout (280+20,40,'9');
if c6=10 then textout (280+20,40,'I0');
if c6=11 then textout (280+20,40,'J');
if c6=12 then textout (280+20,40,'Q');
if c6=13 then textout (280+20,40,'K');
if c6=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(450,160,530,240);
c6:=random(14)+1;
m6:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b=7 then
if m7=m then
if c7>c then
begin
rectangle(270+20,30,350+20,110);
if m7=1 then 
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♣');
end;
if m7=2 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♥');
end;
if m7=3 then
begin
setpencolor(clblack);
setfontcolor(clblack);
textout (280+20,40,'   ♠');
end;
if m7=4 then 
begin
setpencolor(clred);
setfontcolor(clred);
textout (280+20,40,'   ♦');
end;
if c7=1 then textout (280+20,40,'1');
if c7=2 then textout (280+20,40,'2');
if c7=3 then textout (280+20,40,'3');
if c7=4 then textout (280+20,40,'4');
if c7=5 then textout (280+20,40,'5');
if c7=6 then textout (280+20,40,'6');
if c7=7 then textout (280+20,40,'7');
if c7=8 then textout (280+20,40,'8');
if c7=9 then textout (280+20,40,'9');
if c7=10 then textout (280+20,40,'I0');
if c7=11 then textout (280+20,40,'J');
if c7=12 then textout (280+20,40,'Q');
if c7=13 then textout (280+20,40,'K');
if c7=14 then textout (280+20,40,'A');
setpencolor(clwhite);
rectangle(540,160,620,240);
c7:=random(14)+1;
m7:=random(4)+1;
sleep(2500);
setpencolor(clblack);
goto 1;
end;
if b>7 then goto 3;
goto 2;
end.