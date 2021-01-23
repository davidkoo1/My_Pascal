//Copy(s,i,c) : s - стока, i - первый символ строки, с - количество символов которые копируем
//str := Copy('123456',3,2); - output : '34'


uses SysUtils; //Когда как


var strg : String;
    d,n,y : String;
    im : Integer;
    
begin
  
  strg := '10.01.2021';
  d := Copy(strg,1,2); // d = 10
  n := Copy(strg,4,2); // n = 01
  y := Copy(strg,7,4); // y = 2021
  
  
  im := StrToInt(n);
  case im of
     1 : strg := d + ' January ' + y;
     2 : strg := d + ' February ' + y;
     3 : strg := d + ' March ' + y;
     4 : strg := d + ' April ' + y;
     5 : strg := d + ' May ' + y;
     6 : strg := d + ' June ' + y;
     7 : strg := d + ' July ' + y;
     8 : strg := d + ' August ' + y;
     9 : strg := d + ' September ' + y;
    10 : strg := d + ' October ' + y;
    11 : strg := d + ' November ' + y;
    12 : strg := d + ' December ' + y;
    end;
    
  WriteLn(strg);
  
  
  
end.
