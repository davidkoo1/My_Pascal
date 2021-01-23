var S : string;

begin
Writeln;
//Ищем индекс первого пробела в строке
  S := 'The first space in this sentence is at position : ';
  Writeln(S, Pos(' ', S));  //Pos = 4

//Ищем последнюю букву английского алфавита в строке
  S := 'The last letter of the alphabet doesn''t appear in this sentence ';
  //Так как такой буквы в строке нет, то будет выведено сообщение об этом
  if (Pos('Z', S) = 0) and (Pos('z', S) = 0) then
    Writeln(S);

//Проверяем, что функция Pos действительно чувствительна к регистру
  S := 'abcdefgcde';
  Writeln(Pos('f', S));     //Pos = 6
  Writeln(Pos('F', S));     //Pos = 0 - буква F не найдена
  Writeln(Pos('cde', S));   //Pos = 3, потому что функция 
                            //возвращает индекс первого 
                            //найденного вхождения
  Writeln(Pos('cdf', S));   //Pos = 0 - такой подстроки нет

  ReadLn;
end. 
