var i, j : byte; 
//**************************************************************** // Так делать нельзя, потому что тогда прерывание цикла // с помощью Break не будет работать //**************************************************************** {procedure Break; begin end;} begin //Будут выведены 4 числа от 1 до 4 for i := 1 to 10 do begin Write(i:3); if i = 4 then Break; end; WriteLn; //Будут выведены 3 числа от 1 до 3 for i := 1 to 10 do begin if i = 4 then Break; Write(i:3); //!!! Этот код после вызова Break //уже не будет выполнен !!! end; WriteLn; //Прерывание вложенного цикла for j := 11 to 15 do //Цикл 1 begin for i := 1 to 10 do //Вложенный цикл 2 begin if i = 3 then Break; //Прерывает вложенный цикл 2, Write(i:3); //но цикл 1 будет выполнен до конца !!! end; Write(j:3); end; WriteLn; //Прерывание основного цикла for j := 11 to 15 do //Цикл 1 begin for i := 1 to 10 do //Вложенный цикл 2 begin if i = 3 then Break; //Прерывает вложенный цикл 2 Write(i:3); end; if j = 13 then Break; //Прерывает цикл 1 Write(j:3); var i, j : byte; //**************************************************************** // Так делать нельзя, потому что тогда прерывание цикла // с помощью Break не будет работать //**************************************************************** {procedure Break; begin end;} begin //Будут выведены 4 числа от 1 до 4 for i := 1 to 10 do begin Write(i:3); if i = 4 then Break; end; WriteLn; //Будут выведены 3 числа от 1 до 3 for i := 1 to 10 do begin if i = 4 then Break; Write(i:3); //!!! Этот код после вызова Break //уже не будет выполнен !!! end; WriteLn; //Прерывание вложенного цикла for j := 11 to 15 do //Цикл 1 begin for i := 1 to 10 do //Вложенный цикл 2 begin if i = 3 then Break; //Прерывает вложенный цикл 2, Write(i:3); //но цикл 1 будет выполнен до конца !!! end; Write(j:3); end; WriteLn; //Прерывание основного цикла for j := 11 to 15 do //Цикл 1 begin for i := 1 to 10 do //Вложенный цикл 2 begin if i = 3 then Break; //Прерывает вложенный цикл 2 Write(i:3); end; if j = 13 then Break; //Прерывает цикл 1 Write(j:3); end; ReadLn; end.var i, j : byte;

//****************************************************************
// Так делать нельзя, потому что тогда прерывание цикла 
// с помощью Break не будет работать
//****************************************************************

{procedure Break;
begin
end;}

begin

  //Будут выведены 4 числа от 1 до 4
  for i := 1 to 10 do
    begin
      Write(i:3);
      if i = 4 then Break;
    end;

  WriteLn;

  //Будут выведены 3 числа от 1 до 3
  for i := 1 to 10 do
    begin
      if i = 4 then Break;
      Write(i:3);  //!!! Этот код после вызова Break 
                   //уже не будет выполнен !!!
    end;

  WriteLn;

  //Прерывание вложенного цикла
  for j := 11 to 15 do    //Цикл 1
    begin
      for i := 1 to 10 do //Вложенный цикл 2
        begin
          if i = 3 then
            Break;        //Прерывает вложенный цикл 2,
          Write(i:3);     //но цикл 1 будет выполнен до конца !!!
        end;
      Write(j:3);
    end;

  WriteLn;

  //Прерывание основного цикла
  for j := 11 to 15 do    //Цикл 1
    begin
      for i := 1 to 10 do //Вложенный цикл 2
        begin
          if i = 3 then
            Break;        //Прерывает вложенный цикл 2
          Write(i:3);
        end;
      if j = 13 then
        Break;            //Прерывает цикл 1
      Write(j:3);
    end;

  ReadLn;
end.
