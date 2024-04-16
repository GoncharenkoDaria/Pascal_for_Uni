program Lab_1_Goncharenko;
     var x1,x2,x3,y1,y2,y3,x4,y4: int64;
        x_1,x_2,x_3,y_1,y_2,y_3,x_4,y_4, a, b, c, m,k1,k2,k3: extended;
begin
  //ввод целочисленных координат
  writeln ('First three points for the triangle, then free one.');
  writeln ('Сoordinates of point one, x then y: ') ;
  readln (x1,y1);
  writeln ('Сoordinates of point two, x then y: ') ;
  readln (x2,y2);
  writeln ('Сoordinates of point three, x then y: ') ;
  readln (x3,y3);
  writeln ('Сoordinates of point four, x then y: ') ;
  readln (x4,y4);
  //изменение типа координат
  x_1:=x1;
  x_2:=x2;
  x_3:=x3;
  x_4:=x4;
  y_1:=y1;
  y_2:=y2;
  y_3:=y3;
  y_4:=y4;
  //длины сторон
  a:=sqrt(sqr(x_2-x_1)+sqr(y_2-y_1));
  b:=sqrt(sqr(x_3-x_2)+sqr(y_3-y_2));
  c:=sqrt(sqr(x_1-x_3)+sqr(y_1-y_3));
  //косинусы при сторонах
  k1:=(sqr(b)+sqr(c)-sqr(a))/(2*b*c);
  k2:=(sqr(b)+sqr(a)-sqr(c))/(2*b*a);
  k3:=(sqr(a)+sqr(c)-sqr(b))/(2*a*c);


  //точка лежит по одну сторону от всех сторон треугольника (из знака произведения векторов)
  if ((x_1-x_4)*(y_2-y_1)-(x_2-x_1)*(y_1-y_4)>=0)  and ((x_2-x_4)*(y_3-y_2)-(x_3-x_2)*(y_2-y_4)>=0)
  and ((x_3-x_4)*(y_1-y_3)-(x_1-x_3)*(y_3-y_4)>=0) then
  m:=1;
      //вывод таблицы
  writeln('');
  writeln('');
  writeln('');
  writeln('':3,'Triangle points coordinates x and y:');
  writeln (x1:3,y1:4,x2:9,y2:4, x3:9,y3:4);
  writeln('':3,'Fourth point: ');
  writeln(x4:3,y4:4);

  if (m=1) then
  writeln('Point four belongs inside the triangle.')
  else
  writeln('Point four doesnt belong inside the triangle.');
  if (k1<0) or(k2<0) or(k3<0) then
  writeln ('Not Acute - angled triangle.')
  else
  writeln ('Acute - angled triangle.');
  readln();

end.


