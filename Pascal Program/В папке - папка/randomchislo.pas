{Рандом число}//Давид

var   
    a: integer;
    c : array [0..1000] of integer;
begin
    randomize;
      for a:=0 to 1000 do
        c[a] :=random(10000); // Максимум числа которые можно взять
          for a:=0 to 1000 do
              write(c[a], '  ');
              
end.