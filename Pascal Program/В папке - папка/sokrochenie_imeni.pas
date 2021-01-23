var //Сокращение имени до 1 буквы, Давид
  a,b,l : integer;
  s: string;
  begin
    writeln('Введите фамилию и имя');
    read(s);
    l:=length(s);
    for a:=1 to l do
      if s[a]=' ' then
        b:=a;
      delete(s,b+2,100);
      
      write(s,'.');
     
  end.