//Pos
var f : string;
  //********************************
  s,g : string;
  begin

    f:='provoju test!';  //Выведит на экран позицию на которой находится заданный нами символ,
    writeln(pos(' ',f)); //в даном случае выведит 8,т.к мы ищем пробел, а о находится  на 8 позиции

    //*//*/*/*/*/*/****/**/*/*//**//*/*/*/*/*/*/*/*/*/*/*/*/*//*//*/*/*/*//*/*/*/*/*/*//*//*/*/*/*/*/*/*/*//*/*/*//*//*/*/*//*//
 //******************************************************************************************************************************
 //Мы считываем строку, потом считываем какой символ ищим, на экран выведит на какой позиции находится заданный символ  (если считать с 1)
       write('>> '); readln(s);
       writeln('Our input string : ','" ',s,' "');
       writeln('String conf ');
       write('>> '); readln(g);
       writeln(pos(g,s));

    readln;
    end.
