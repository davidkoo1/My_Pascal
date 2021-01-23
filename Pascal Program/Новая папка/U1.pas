Unit U1;

interface

  const nmax = 100;
  type Vector = array [1..nmax] of real;
  var n : 1..nmax;
  function sum(V : Vector) : real;
  function min(V : Vector) : real;
  function max(V : Vector) : real;
  procedure Citire(var V : Vector);
  procedure Afisare(V : Vector);
  
  implementation
  
  var i : 1..nmax;
  s : real;
  
  function sum;
  begin
    s:=0;
    for i:=1 to n do s:=s+V[i];
    sum:=s;
  end;
  
  function min;
  begin
    s:=V[1];
    for i:=2 to n do
      if s>V[i] then s:=V[i];
    min:=s;
  end;
  
  function max;
  begin
    s:=V[1];
    for i:=2 to n do 
      if s<V[i] then s:=V[i];
    max:=s;
  end;
  
 procedure Citire;
 begin
   for i:=1 to n do readln(V[i]);
 end;
 
 begin
   write('n= '); readln(n);
 end.