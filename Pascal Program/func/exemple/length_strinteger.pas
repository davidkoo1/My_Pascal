var str : string;
ps : string;

begin

str := '';
ReadLn(ps);
str := str + ps;
ReadLn(ps);
str := str + ps;
ReadLn(ps);
str := str + ps;

WriteLn('The string [', str, '] contains ',
Length(str), ' characters');

ReadLn;
end.