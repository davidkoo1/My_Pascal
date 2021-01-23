{График}
//y=x*x
uses  graphabc;
var
  x, y : real;
begin
  setwindowsize(400,400);
    line(200,0,200,400);
    line(0,200,400,200);
      x:=-100;
        while x<=100 do 
        begin
            y:=sqr(x);//cos или другие выражения
            circle(trunc(x*20+200), trunc(y*20+200),{2} 1);// выражени+(число) можно менять и также результат поменяется
              x:=x+0.01;
        end;
end.