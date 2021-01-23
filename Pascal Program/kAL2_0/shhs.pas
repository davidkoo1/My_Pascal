uses  Math ;
  function Sum(n:integer): real;
  begin
    if n=0 then sum:=0
    else sum:=power(n, n) + sum(n-1)
  end;
   
  var n:integer;
  begin
    write('n = ');
  readln(n);
  
    writeln('S = ',sum(n));
    readln
  end.
