Var  x : double;
     xn,xk: double;
     hx: double;
     y : double;
     count: smallint;
     i: smallint;
     k:integer;
     z  : double;
     g,g1: integer;
Begin
   write ('Input the begining and ending values, step value : ');
   readln (xn,xk,hx);
   x := xn;
   count := trunc ((xk-xn)/hx)+1;

  writeln('');
  writeln('');
  writeln('');
  writeln('':4,'Number','':7,'Value','':4,'Function','':4,'Function');
  writeln('':1,'of argument','':5,'of X','':6,'Sin(x)','':7,'Ln(x)');

  for i:=1 to 77 do write('-');

   k:=0;
   writeln('');
   for  i := 1 to count do

   begin
      k:=k+1;
      if ((x>=-1) and (x<=1))  then
      begin
      y := sin(x);
      g:=0;
      end
      else
      g:=1;


      if (x>0) then
      begin
      z:=ln(x);
      g1:=0;
      end
      else
      g1:=1;


      if ((g=1) and(g1=1)) then
      writeln ('':2, k:6, ' ':5 ,x:8:2,' ':7 ,'***', ' ':9 ,'***');

      if ((g=1) and(g1=0)) then
       writeln ('':2, k:6, ' ':5 ,x:8:2,' ':7 ,'***', ' ':5 ,z:8:2);

      if ((g=0) and(g1=1)) then
       writeln ('':2, k:6, ' ':5 ,x:8:2,' ':3 ,y:8:2, ' ':8 ,'***');
      if ((g=0) and(g1=0)) then

      writeln ('':2, k:6, ' ':5 ,x:8:2,' ':3 ,y:8:2, ' ':4 ,z:8:2);



       x:=x+hx

       end;
   readln
end.

