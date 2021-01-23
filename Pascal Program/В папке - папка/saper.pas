uses GraphABC,ABCObjects,ABCButtons;
Const N = 10; //Поле N х N
      sz = 40; //Размер клетки
      d0 = 10; //Отступ от левого и верхнего края
      zz = 3; //Растояние между ячейками
      NMines = 15; //Количество мин
      
      
Type OneSellField = record
        mine : boolean; //Есть ли мина
        fl : boolean; //Есть ли флажок
        neighbours : integer; //полож.-Сколько соседей; отриц - нужны для алгоритма трассировки - открытия пустых клеток
        click : boolean; //Была ли открыта
     end;
     
Var BtNewGame : ButtonABC;
    Sell : array[1..N, 1..N] of SquareABC;
    Field : array[1..N, 1..N] of OneSellField;
    c : shortint; //Для подсчета мин в соседних клетках
    Opened : shortint; //Сколько флажков правильно поставленно
    Nfl : Integer; //Количество поставленных флажков (для победы должно быть равно кол. мин)
 
Procedure CreateField;
begin    
   for var y := 1 to N do
      for var x := 1 to N do begin
         Sell[x, y] := new SquareABC(d0+(x-1)*(sz+zz),d0+(y-1)*(sz+zz), sz, clLightSeaGreen);
         Sell[x, y].BorderColor := clGreen;
         Sell[x, y].BorderWidth := 2;
         Sell[x, y].TextScale := 0.7;
      end;    
end;
 
Procedure NewGame;
var Rx, Ry : integer;
begin
    for var j:=1 to N do
      for var i:=1 to N do begin
         Field[i, j].mine := false;
         Field[i, j].click := false;
         Field[i, j].fl := false;
         Field[i, j].neighbours := 0;
         Sell[i, j].BorderColor := clRED;
         Sell[i, j].Text := '';
         Sell[i, j].Color := clLightSeaGreen;
      end;  
   
   //Размещаем мины
   for var i := 1 to NMines do begin
      Rx := Random(N)+1;
      Ry := Random(N)+1;
      //Если в выбранной ячейки есть мины, то генерируем новые координаты мины
      while Field[Rx, Ry].mine do begin
          Rx := Random(N)+1;
          Ry := Random(N)+1;            
      end;
      Field[Rx, Ry].mine := true;
   end;  
      
  {
   //Временная подсказка где мины
   for var j:=1 to N do
      for var i:=1 to N do begin
         if Field[i, j].mine then Sell[i, j].BorderColor := clYellow;
      end;}
   
   var ii, jj :shortint; 
   //Считаем мины вокруг
   for var j:=1 to N do
      for var i:=1 to N do begin
         c := 0;
         for var dx := -1 to 1 do begin
            for var dy := -1 to 1 do 
               if not ((dx = 0) and (dy = 0)) then begin
                  ii := i + dx;
                  jj := j + dy;
                  if ((ii > 0) and (ii <= N) and (jj > 0) and (jj <= N)) then begin
                     c := c + Integer(Field[ii, jj].mine);
                  end;
               end;
         end;
         Field[i, j].neighbours := c;
      end; 
      Opened := 0; //Кол. открытых мин
      Nfl := 0; //Кол. установленных флажков
end;
 
Procedure OpenZero(fx, fy : integer);
var fl :boolean;
    step, ii, jj : integer;
begin
   Field[fx, fy].neighbours := -1;
   step := -1;
   repeat
      fl := true;
      for var x := 1 to N do begin
         for var y := 1 to N do begin
            if Field[x, y].neighbours < 0 then begin
               {*** Проверка соседних клеток ***}
               for var dx := -1 to 1 do begin
                  for var dy := -1 to 1 do 
                     if not ((dx = 0) and (dy = 0)) then begin //Центральную клетку не считаем
                        ii := x + dx;
                        jj := y + dy;
                        //Если не выходит за границы поля
                        if ((ii > 0) and (ii <= N) and (jj > 0) and (jj <= N)) then begin
                           if Field[ii, jj].neighbours = 0 then begin
                              Sleep(30); //Для анимации открывания клеток
                              Sell[ii, jj].Color := clLightYellow;
                              Field[ii, jj].click := true;
                              Field[ii, jj].neighbours := step;
                              fl := false; //Была открыта клетка - ищем др.
                           end;
                            if Field[ii, jj].neighbours > 0 then begin
                              Sell[ii, jj].Color := clLightGreen;
                              Sell[ii, jj].Text := IntToStr(Field[ii, jj].neighbours);
                              Field[ii, jj].click := true;
                           end;
                        end;
                     end;
                  end;
                {********************}  
            end;
         end;
      end;
      step := step - 1;
   until fl;
end;
 
Procedure MouseDown(x, y, mb: integer);
begin
   if ObjectUnderPoint(x,y)=nil then // Eсли мы щелкнули не на объекте, то не реагировать на мышь
    exit;
    
    var fx := (x-d0) div (sz+zz) + 1; // Вычислить координаты на доске для ячейки, на которой мы щелкнули мышью
    var fy := (y-d0) div (sz+zz) + 1;
    
    Field[fx, fy].click := true; 
    
    if mb = 1 then begin
      //Если щелкнули по мине
      if Field[fx, fy].mine then begin
         Sell[fx, fy].Text := 'M';
         Sell[fx, fy].Color := clRed;
         //writeln('Проиграл!');
      end
      else begin
         //Если щелкнули по пустой клетке
         if (Field[fx, fy].neighbours = 0) then begin
            Sell[fx, fy].Color := clLightYellow;
            if Field[fx, fy].fl then Sell[fx, fy].Text := '';
            //Вызов процедуры раскрытия пустых полей
            OpenZero(fx, fy);
         end
         else 
            if Field[fx, fy].neighbours > 0 then begin
               Sell[fx, fy].Color := clLightGreen;
               Sell[fx, fy].Text := IntToStr(Field[fx, fy].neighbours);
            end;
      end;
    end;
    //Ставим и снимаем флажок 
    if mb = 2 then begin
            if Field[fx, fy].fl then begin //Снимаем флажок
                 Field[fx, fy].fl := False;
                 Sell[fx,fy].Text := '';
                 Sell[fx, fy].Color := clLightSeaGreen;
                 Nfl -= 1;
                 if (Opened = NMines) and (Nfl = NMines) then writeln('Победа!');
                 //Window.Title := IntToStr(Nfl)+' M '+IntToStr(Opened);
            end
            else begin //Ставим флажок
               Field[fx, fy].fl := true;
               Sell[fx,fy].Text := 'F';
               Sell[fx, fy].Color := clBlue;
               Nfl += 1;
               //Window.Title := IntToStr(Nfl)+' M '+IntToStr(Opened);
            end;
            
            if Field[fx, fy].mine then begin
                  if Field[fx, fy].fl then Opened += 1
                  else Opened -= 1;
                  //Window.Title := IntToStr(Nfl)+' M '+IntToStr(Opened);
                  if (Opened = NMines) and (Nfl = NMines) then writeln('Победа!');
            end;
    end;
end;
 
 
Procedure MouseMove(x, y, mb: integer);
begin
   if ObjectUnderPoint(x,y)=nil then // Eсли мы щелкнули не на объекте, то не реагировать на мышь
    exit;
    var fx := (x-d0) div (sz+zz) + 1; // Вычислить координаты на доске для ячейки, на которой мы щелкнули мышью
    var fy := (y-d0) div (sz+zz) + 1;
    
    {Все клетки зеленые}
    for var j := 1 to N do
      for var i := 1 to N do begin
         if not Field[i,j].click then
            Sell[i,j].Color := clLightSeaGreen;
      end; 
    
    {Все клетки зеленые, а над которой мышка - ярко зеленая}
    if not Field[fx, fy].click then
      Sell[fx,fy].Color := clLightGreen;
end;
 
BEGIN
   SetSmoothingOff; //Отключаем сглаживание
   Window.Title := 'Сапёр';
   Window.IsFixedSize := True;
   
   CreateField;//Создаем поле   
   btNewGame := ButtonABC.Create(535, d0, 100, 'Новая игра', clSkyBlue);
   btNewGame.OnClick := NewGame;
   NewGame;
   
   OnMouseDown := MouseDown;
   OnMouseMove := MouseMove;
END.