//третья
var
  n, i, s: longint; //для факториала
  h, o: longint; //для кол-во нулей

begin
  read(n);
  s := 1;
  for i := 1 to n do
  begin
    s := s * i;
                                                                     // writeln(s); //если хотим увид. факториал 
                                                        {                            if s mod 10 = 0 then
                                                                                      h += 1;}//кол-во последних нулей
  end;
  //h:=s mod 10;
  while s > 0 do
  begin
    h := s mod 10;
    if h = 0 then o += 1;
    s {div=}:= s div 10;
    // writeln(h);
  end;
  writeln(o) //<--  ; можно и не ставить.
  
  {//не нужное
  h:=s mod 10;
  writeln(h);
  if h = 0 then 
    h+=1
  else
    writeln('0');
  writeln(h);
  }
end.