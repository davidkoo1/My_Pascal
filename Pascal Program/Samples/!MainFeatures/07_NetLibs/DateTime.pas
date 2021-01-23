Uses System;

var d1, d2, d3: DateTime; // Объекты для хранения даты и времени
    ts: TimeSpan; // Объект для хранения промежутков времени

begin
  // Получение текущей даты - вызов статического метода
  d1 := DateTime.Now; 
  Writeln(d1);
  
  // Дата и время через один месяц
  d2 := d1.AddMonths(1);
  Writeln(d2);

  // Дата и время на 12 часов раньше
  d2 := d1.AddHours(-12);
  Writeln(d2);

  // Формирование даты - вызов конструктора объекта (год, месяц,число)
  d3 := new DateTime(2001, 1, 1);
  Writeln(d3);
  
  // Определение времени, прошедшего с начала тысячелетия (разность дат)
  ts := d1.Subtract(d3);

  // Промежуток времени в днях (результат - вещественное число)
  Writeln(ts.TotalDays);
  
  // Промежуток времени в днях, часах, минутах и секундах
  Writeln(ts.Days, ' ', ts.Hours, ':', ts.Minutes, ':', ts.Seconds);
end.