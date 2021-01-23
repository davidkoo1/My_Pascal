uses crt, LazUTF8;

var
  name: string;
  age: integer;
  years: integer;
  month: integer;
  week: integer;
  day: integer;
  hours: integer;
  minutes: integer;
  
  ext: string;
  game: char;
  
  a: integer;
  
  min, m, n: Integer;
  h, mi, c: Integer;
  a1, b, d: Integer;
  r, x, z: Integer;
  g, v, o, t: Integer;
  y, q, s, i, j, k, l, f: Integer;
  
  b1: integer;

begin
  repeat
    
    clrscr;
    textcolor(3);
    writeln('        |       ************************      | ');
    writeln('        |     .     *     *    *      *    .  |');
    writeln('        |        * *   .*   *    *  *   .     |'); 
    writeln('        |       *    * *  ..   *       *      |');
        //textbackground(white);
    textcolor(red);
    writeln('        |          .         *         .      |');
    textcolor(10);
    writeln('        |              .    *@*    .          |');
    writeln('        |         .        *@*@*       .      |');
    writeln('        |          **  .  *@*@*@*   .         |');
    writeln('        |         ****   *@*@*@*@*     .      |');
    writeln('        |         *  *  *@*@*@*@*@*           |  ');
    writeln('        |         ****     || ||      *       |  ');
    writeln('                          ');
    textcolor(14);
    writeln('        |        * * * * * * * * * * * * *    |    '); 
    writeln('        |        |||||||||||||||||||||||||    |  ');
    writeln('        |        -------------------------    |  ');
    textcolor(white);
    writeln(UTF8ToConsole('Какой сейчас год?'));
    write('>> ');
    readln(ext);
    
  until (ext = '2020') or (ext = '2021');
  ClrScr;
  s:=random(15);
        j:=random(15);
        if s=j then j:=random(10);
        textbackground(s);
        textcolor(j); 
  repeat
    
    repeat
      clrscr;//ошищение окна
      writeln('Выбери букву с вариантом: ');
      writeln;
      writeln(UTF8ToConsole('A) Узнать свой возрост до минуты '));
      WRITELN(UTF8ToConsole('B) Конвектор'));
      writeln(UTF8ToConsole('C) Exit'));
      writeln;
      write('>> ');
      readln(game);
    until (game = 'A') or (game = 'a') or (game = 'А') or (game = 'а') or (game = 'В') or (game = 'Б') or (game = 'б') or (game = 'B') or (game = 'b') or (game = 'C') or (game = 'c') or (game = 'С') or (game = 'с');
    clrscr;
    
    
    case game of
      'A', 'a'://, 'А', 'а': 
        begin
          writeln(UTF8ToConsole('Привет! Тебе интересно узнать сколько ты живёшь на земле? Вводи своё имя.../'));
          write('>>');
          readln(name);
          
          writeln(name, UTF8ToConsole(' Мне нужно знать сколько тебе лет'));
          write('>>');
          readln(age);
          
          writeln(UTF8ToConsole('Окей '), name, UTF8ToConsole(' Чтобы мои подсчёты были точны мне нужно знать В каком году ты живёшь?'));
          write('>>');
          readln(years);
          
          a :=years;
          
          if a mod 4 = 0 then 
            if (a mod 100 = 0) and (a mod 400 <> 0) then 
              a := 365
            else 
              a := 366
          else
            a := 365;
          
          writeln(UTF8ToConsole('Окей '), name, UTF8ToConsole(' Я узнал, сейчас в году '), a, UTF8ToConsole(' дней'));
          
          month := age * 12; 
          writeln(UTF8ToConsole('Ты прожил около '), month,UTF8ToConsole(' Месяцев'));
          
          week := age * 52;
          writeln(UTF8ToConsole('Ты прожил около '), week, UTF8ToConsole(' Недель'));
          
          day := age * a;
          writeln(UTF8ToConsole('Ты прожил около '), day, UTF8ToConsole(' Дней'));
          
          hours := day * 24;
          writeln(UTF8ToConsole('Ты прожил около '), hours, UTF8ToConsole(' Часов'));
          
          minutes := age * 525600;//day * 1440,можно и так
          writeln(UTF8ToConsole('Ты прожил около '), minutes, UTF8ToConsole(' Минут'));
          writeln; 
          write('Play Again Y/N: ');
          
          readln(game);
        end;
      
      'B', 'b'://, 'В', 'Б', 'б':
        begin
          writeln(UTF8ToConsole('1. Минуты в часы'));
          writeln(UTF8ToConsole('2. Часы в минуты'));
          writeln(UTF8ToConsole('3. Минуты в днях'));
          writeln(UTF8ToConsole('4. Часы в дни'));
          writeln(UTF8ToConsole('5. Дни в минуты'));
          writeln(UTF8ToConsole('6. Дни в часы'));
          writeln(UTF8ToConsole('7. Дни в недели'));
          writeln(UTF8ToConsole('8. Неделя в дни'));
          writeln(UTF8ToConsole('9. Дни в года'));
          WRITELN(UTF8ToConsole('10. Года в дни'));
          writeln(UTF8ToConsole('0. exit'));
          readln(b1);
          case b1 of
            1:
              begin
                Write(UTF8ToConsole('Введи минуты и результат получишь в часах: '));
                readln(min);
                m := min div 60;
                n := min mod 60;
                WriteLn(min, ' -Это ', m, ' Час. и ', n, ' Мин.');
              end;
            2:
              begin
                //часы в минуты
                Write(UTF8ToConsole('Введи часы и минуты, а результат получишь в минутах: '));
                ReadLn(h, mi);
                c := h * 60 + mi;
                WriteLn(h, UTF8ToConsole(' И '), mi, UTF8ToConsole(' -Это '), c, UTF8ToConsole(' Мин.'));
              end;
            3:
              begin
                //минуты в днях
                WriteLn(UTF8ToConsole('Введи минуты и получишь кол-во дней'));
                ReadLn(a1);
                b := a1 div 1440;
                WriteLn(b);
              end;
            4:
              begin
                //часы в дни
                WriteLn(UTF8ToConsole('Введи часы и получишь количество дней'));
                readln(x);
                z := x div 24;
                WriteLn(z);
              end;
            5:
              begin
                //дни в минуты
                ReadLn(g);
                v := g * 1440;
                WriteLn(v);
              end;
            6:
              begin
                //дни в часы
                ReadLn(o);
                r := o * 24;
                WriteLn(r);
              end;
            7:
              begin
                //Дни в недели
                ReadLn(t);
                d := t div 7;
                WriteLn(d);
              end;
            8:
              begin
                //Неделя в дни
                Readln(y);
                q := y * 7;
                WriteLn(q);
              end;
            9:
              begin
                //Дни в года
                ReadLn(f);
                k := f div 365;
                WriteLn(k);
              end;
            10:
              begin
                //года в дни
                ReadLn(i);
                l := i * 365;
                WriteLn(l);
              end;
              //until b1=0;
          end;
          
          writeln;
          write('Play Again Y/N: ');
          readln(game);
          
          
        end;
      'C', 'c'://, 'С', 'с':
        begin
        
        
        
          

writeln;
writeln;
writeln('                  ***   ');
writeln('                *11111');
writeln('           *****************11');
writeln('         *************************');
writeln('        ***************************1');
writeln('       ******************************');
writeln('      ********************************1');
writeln('     *********11111*********************');
writeln('   ****1                   **************');
writeln(' ***                          1***********');
writeln(' *1                              1*********');
writeln('1*          111                     ********');
writeln('1*      ****************1           ********');
writeln(' *   ****1             1*****1      1*******');
writeln(' *1 ****  1******     11111****     ********');
writeln('  *****11*********   ********1***1  ********');
writeln('   ****    1*****1   **1***    *************');
writeln('   *11*      *1**     *1*1     *************');
writeln('   ****1      **1     *1*      ***1 *******1');
writeln('   *****1   11***1   ***1      ****  ******');
writeln('   **********111******1 ***********  ******');
writeln('  1*******         1        1*1****   ****1');
writeln('  1*******1    1*******1     *******1  *****');
writeln('  1**************     **************1 **   **');
writeln('   ***************111**************1 *     1*');
writeln('   *1*****************************1 *       *');
writeln('   ******************************** **      *');
writeln('    *1****************************   ***11** ');
writeln('     *1***************************     11    ');
writeln('      ***************************            ');
writeln('       *************************             ');
writeln('        1*******************1*               ');
writeln('          **1********1****1**                ');
writeln('            ***********1***                  ');
writeln('              1**111***1                     ');
writeln('                                             ');


          
          writeln;
          repeat
            write('Play Again Y/N: ');
            readln(game);
          until (game = 'N') or (game = 'n') or (game = 'Y') or (game = 'y');
        end; 
    
    end;
  until (game = 'N') or (game = 'n');
  
end.
