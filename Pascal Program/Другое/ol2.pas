Uses crt;
Type legatura=^Persoana;
Persoana = record
Name: string[20];
Next: legatura
End;
var Primul, p, ult, temp:legatura;
nume: string[20];
i,n,m: integer;
c: char;
begin
ClrScr;
Write('introdu numarul de copii: ');
Readln(n);
Write('introdu numarul m: ');
Readln(m);
Write('scrie numele primului copil: ');
new(Primul);
readln(primul^.name);
ult:=primul;
for i:=2 to n do begin
new(p);
write('Introdu numele copilului ', i , ' : ');
readln(p^.name);
p^.next:=primul;
primul:=p;
end;
ult^.next:=primul;
writeln('---- Afisarea listei-----');
p:=primul;
repeat
writeln(p^.name);
p:=p^.next;
until p=primul;
writeln('-----------------');
i:=2; {i este numarul de ordine al urmatorului}
p:=primul;
repeat 
if i mod m=0 then begin
temp:=p^.next;
p^.next:=p^.next^.next;
writeln(temp^.name, '- afara');
dispose(temp);
	end 
else p:=p^.next;
	i:=i+1;
until p^.next=p;
writeln('===================');
writeln('mijeste ' , p^.name);
readln;
end.
