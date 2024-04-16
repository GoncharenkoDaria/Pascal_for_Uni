var n,i,j,u:integer;  {сторона кв. матрицы, координаты элемента, счетчик}
a,b:array[1..50,1..50] {матрицы начальная и измененная} of integer;
begin

write('n=');readln(n);
writeln('original matrix:');
randomize;
u:=0;
for i:=1 to n do
  begin
    for j:=1 to n do
      begin
        a[i,j]:=random(2);{заполнение нулями и единицами}
        write(a[i,j]:4);
      end;
  writeln;
  end;
 Writeln('Turned by 90 degrees anti-clockwise:') ;
repeat   {повторение 3 раза}
  u:=u+1;
for i:=1 to n do
for j:=1 to n do
b[i,j]:=a[n-j+1,i];{поворот}

for i:=1 to n do
  begin
    for j:=1 to n do
      begin
       a[i,j]:=b[i,j] ;  {замена исходной матрицы}
      end;

  end;
   until u=3 ;


for i:=1 to n do
  begin
    for j:=1 to n do
      begin
        write(b[i,j]:3);    {вывод результата}
      end;
  writeln;
  end ;
readln;
end.
