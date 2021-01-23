var a : Integer;
err: Integer;
b: string;
begin
repeat 
WriteLn('Enter integer number. ');
readln(b);
val(b,a,err);
until err=0;
WriteLn('Your number ', a);
end.