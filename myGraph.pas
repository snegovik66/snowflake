unit myGraph;

uses graphABC;

const
  k = 8;

var
  x, y: integer;

procedure snow(x, y, size: integer);
var
  min, m, n: integer;
  i, s1, s2: integer;
begin
  min := 1; m := 6; n := 3;
  if size > min 
   then
  begin
    s1 := round(size / n);
    s2 := round(size * (n - 1) / n);
    for i := 1 to m do
      snow( x - round( s2 * sin( 2 * pi / m * i)), y + round( s2 * cos( 2 * pi / m * i)), s1);
    snow( x, y, s1);
  end;
  ellipse( x - size, y - size, x + size, y + size);
end;

procedure sun(x, y, size: integer);
const t=2*pi;
const rr=10;
var
  xx, yy, i: integer;
begin
  setpencolor(clyellow);
  
  SetPenWidth(3);
  circle(x,y,size);

  line(200,50,200,100);
  line(200,300,200,350);
  line(50,200,100,200);
  line(300,200,350,200);
 
  
  // setbrushcolor(clyellow);
  setpencolor(clLawnGreen);
  for i := 1 to 36 do
    begin
      xx:=x+round((size + rr)*cos(i * 10));
      yy:=y+round((size + rr)*sin(i * 10));
      circle(xx,yy,rr);
    end;
end;

begin

end. 