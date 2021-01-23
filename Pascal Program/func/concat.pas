//concat

var
  s : string;
  s1: string = 'THE END!';
  s2: string =' ';
  s3: string = 'Press Enter...';
 // d : integer = 100;

begin
  s:= 'Hello' + ' World'+ '!';
  writeln(s);
      // writeln(d);
   s1:= concat(s1,s2,s3);
   writeln(s1);
  readln;
end.

