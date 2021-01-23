Uses Crt;
var a, b, x: word; {x este suma}
        s, m: string;
        c:char; {cifra}
        i: byte;
begin
ClrScr;
Write('scrie numerele: ');
Readln(a,b);
Write('scrie cifra: ');
Readln(c);
x:=a+b;
str(x,s); {transformam suma x in textul/ sirul s}
m:='Nu se contine';
for i:=1 to length(s) do
        if s[i]=c then m:= 'se contine';
           {se putea si astfel if pos(c,s)<>0 then m:='se contine'}
       Write (m);
Readln;
End.
