uses crt;
var answer : integer;
guess : integer;
cnt : integer;
error : integer;
 game : char;
 UI: string;

 begin
   repeat
     cnt :=0;

   repeat
     clrscr;//ошищение окна
     writeln('Выбери до скольки будет число: ');
     writeln;
     writeln('A) 10');
     WRITELN('B) 100');
     writeln('C) 1000');
     writeln;
     write('Введи букву, которую ты выбрал: ');
     readln(game);
   until (game = 'A')or (game = 'a') or (game = 'А')or (game = 'а')or (game = 'В')or (game = 'Б')or (game = 'б')or (game ='B')or(game = 'b') or (game = 'C') or (game = 'c') or (game = 'С')or (game = 'с');
   clrscr;

   case game of
     'A', 'a','А','а' : begin
       answer :=random(10)+1;
       writeln('Game 1 - 10');
     end;
    'B', 'b','В','Б','б': begin
      answer:=random(100)+1;
      writeln('Game 1 - 100');
    end;
    'C','c','С','с' : begin
      answer:=random(1000)+1;
      writeln('Game 1 - 1000');
    end;
   end;
   repeat
     repeat
       writeln;
       write('Угадай мой номер: ');
       readln(UI);
       val(UI,guess,error);
       if error <> 0 then
         writeln('Mai Încearcă');
     until error =0 ;

     cnt:= cnt +1;

     if guess< answer then
       writeln('Бери Выше!')
     else if guess>answer then
       writeln('Ты Высоко О Себе думаешь,ниже!')
     else
       writeln('Victory, you Guessed My Number In ',cnt,' Guesses!');


   until guess = answer ;


   writeln;
   repeat
   write('Play Again Y/N: ');
   readln(game);
   until (game = 'N') or (game = 'n') or (game = 'Y') or (game = 'y');


   until (game = 'N') or (game = 'n');
 end.

