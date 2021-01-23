var a,i,l,s,n : integer;
    b : boolean;
    
begin
  readln(n);
  b:= true;
  for i:=1 to ((n+1)div 2) do
  begin
    a:=i;
    s:=0;
    while(s<n) do
    begin
      s:=s+a;
      a:=a+1;
    end;
    if s = n then
    begin
      b:=false;
      write(n,' = ',i);
      for l:=i+1 to (a-1) do write('+',l);
      writeln;
    end;
  end;
  if b then writeln('Представлений не существует');
  
end.