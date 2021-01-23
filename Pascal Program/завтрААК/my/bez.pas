var
	dig: byte;
	N, pos, num: smallint;
	total: word;
 
function countDigitsTail(n: smallint; res: byte): byte;
begin
	if n = 0 then countDigitsTail := res
	else countDigitsTail := countDigitsTail(n div 10, res + 1);
end;
 
function countDigits(n: smallint): byte;
begin
	if n = 0 then countDigits := 1
	else countDigits := countDigitsTail(n, 0);
end;
 
function reverseTail(n, res: smallint): smallint;
begin
	if n = 0 then reverseTail := res
	else reverseTail := reverseTail(n div 10, res * 10 + n mod 10);
end;
 
function reverse(n: smallint): smallint;
begin
	reverse := reverseTail(n, 0);
end;
 
begin
	read(N, pos);
 
	total := 0;
	dig := 10;
	while N <> 0 do begin
		read(num);
 
		total := total + countDigits(num);
		if (dig > 9) and (total >= pos) then begin
			pos := pos + countDigits(num) - total;
			num := reverse(num);
			while pos > 1 do begin
				num := num div 10;
				dec(pos);
			end;
			dig := num mod 10;
		end;
 
		dec(N);
	end;
 
	writeln(dig, ' ', total);
end.