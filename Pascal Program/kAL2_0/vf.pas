uses Crt, Graph;

var
Gd,Gm:Integer;
Color :Word;

begin
Gd:=Detect;
InitGraph(Gd,Gm,'X:\BP');
if GraphResult<>grOk then
Halt(1);
Color:=GetMaxColor;
Randomize;
repeat
PutPixel(Random(10),Random(10),Color); {Рисуем звёздочки }
Delay(10);
until KeyPressed;
ReadLn;
closeGraph;
end.
