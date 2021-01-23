type Tseasons = (Winter, Spring, Summer, Autumn);

var Cod : Byte;
    Sym : Char;
    Seasons : Tseasons;
begin

  //Узнать код числа: Ord(Cod) = 200
  Cod := 200;
  WriteLn('Code ',Cod, ' : ',Ord(Cod));
  
  Sym := 'Z';
  //Узнать код символа : Ord(Sys) = 90
  WriteLn('ASCCII-code ',Sym,' : ',Ord(Sym));
  
  Seasons := Summer;
  //Узнать номер элемента перечисления: Ord(Seasons) = 2
  WriteLn('Number ',Seasons, ' : ',Ord(Seasons));
  
end.
