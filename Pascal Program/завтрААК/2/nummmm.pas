var
  input, output: Text;
  i, t, n, maxvalue: integer;
  s: string;

begin
  Assign(input, 'NUM.txt');
  Reset(input);
  Readln(input, n);
  Close(input);
  
  Assign(output, 'NUM2.txt');
  Rewrite(output);
  
  maxvalue := 1;
  for i := 1 to n do maxvalue := maxvalue shl 1;
  
  for i := 0 to trunc(sqrt(maxvalue - 1)) do 
  begin
    t := sqr(i);
    s := '';
    repeat
      if odd(t) then s := '1' + s
      else 
        s := '0' + s;
      t := t shr 1;
    until length(s) = n;
    WriteLn(output, s);
  end;
  Close(output);
end.