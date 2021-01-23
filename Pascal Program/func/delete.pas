(*//Delete :
s - строка
index - какая позиция
cout - кол-во удаляемых позиций *)
  var s : string = 'Hello! WORLD!';
    i,c : integer;
begin
    writeln(s); //Выведит Hello! WORLD!

    Delete(s,7,6); //Удалит пробел и WORLD
    writeln(s);      //Выведит Hello!!
    readln;
end.

