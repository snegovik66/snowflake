Uses GraphABC,myGraph;

var
  t: integer;

begin
  SetBrushStyle(bsclear);
  SetWindowTitle('Датчик температуры');
  SetWindowSize(400, 400);
  writeln('Введите температуру'); 
  readln(t);
  if (t > 0) then 
    begin
      sun(200, 200, 100);
    end
  else 
    begin    
      snow(200, 200, 200);
    end
end.

