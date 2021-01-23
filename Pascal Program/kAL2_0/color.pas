(*******************************************************************
**                                                                **
**                                                                **
********************************************************************)
program color;
uses crt;
begin
  textColor(red);
  WriteLn('hello');
  textColor(blue);
  WriteLn('hello');
  textColor(white);
  WriteLn('hello');
  textbackground(green);
  WriteLn('world');
  textbackground(yellow);
  textColor(red);
  WriteLn('!');
  readln;
end.
