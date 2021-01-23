var i, n, x : integer;
    ch      : Char;
    stri     : ShortString;
    s04     : string[4];      //Строка из 4-х символов
    s20     : string[20];     //Строка из 20-ти символов

begin
  Randomize;
  stri := '';
  n := Length(stri);    //n = 0
  WriteLn(n);
  stri := '0123456789';
  n := Length(stri);    //n = 10
  WriteLn(n);
  for i := 1 to n do
    if i = n then Write(stri[i])
    else Write(stri[i] + '-');
  WriteLn;
  x := Random(26) + 1;
  stri := '';
  for i := 1 to x do stri := stri + Chr(i+64);
  WriteLn(stri);
  ch := stri[0];   //Здесь хранится длина строки типа ShortString
  WriteLn(Ord(ch), ' (', ch, ')');

  stri := '0123456789';
  s04 := stri;
  s20 := stri;
  WriteLn('str = ', stri,    //Выведет 0123456789
          ', s04 = ', s04,  //Выведет 0123
          ', s20 = ', s20); //Выведет 0123456789

  ReadLn;
end.
