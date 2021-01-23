{Движение круга}//Давид
uses crt, graphabc;
var
   x :integer;
begin
      while x<640 do
          begin
            clrscr//очищение пред.круга
          
    setpencolor(clred); //граница круга
    circle(150,250,50);//x,y,r
    floodfill(150,250, clgrean);//Заливка круга
              x:=x+10;
              delay(100);//замедлить круг
              
          end;
end.