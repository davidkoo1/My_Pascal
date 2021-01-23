program n1;
var a: text;
v,c,x,z,m,n: Integer;
begin
  
  assign(a,'text.txt');
  reset(a);
  readln(a,v);
  readln(a,c);
  readln(a,x);
  readln(a,z);
  readln(a,m);
  readln(a,n);
  eof(a);
  close(a);
  assign(a, 'text1.txt');
  writeln(a,v);
  writeln(a,c);
  writeln(a,x);
  writeln(a,z);
  writeln(a,m);
  writeln(a,n);
  close(a);
end.
