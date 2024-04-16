var
Sn, Sn1: double;
Sum, sum1, N: double;
eps: real;
abserr, relerr: double;
X, Y: double;
fact: double;
i,k:integer;
{вводим погрешность и точку х}
begin
writeln('Enter accuracy (eps>0)');
readln(eps);
writeln('Enter point');
readln(X);
{Вывод таблицы}
writeln('Member #': 25, 'Value of the member': 25, 'Partial sum': 25);
for i := 1 to 75 do
Write('-');
writeln;

Sum:=1;
N:=2;
k:=-1;
Y:=1;
i:=1;
while abs(Y) > eps do
begin


Y:=(Y*(X*X))/(N*(N-1));
if (k=(-1)) then
Sum:=sum-Y
else   Sum:=sum+Y;
N:=N+2;
k:=(-1)*k;

writeln (i:25, Y:25:5,sum:25:5);
 i:=i+1
 end;

 writeln (Sum);






writeln('Approximated function value : ', sum: 0: 20);

sum1 := cos(X);

writeln('Exact functon value: ', sum1: 0: 20);

abserr := abs(sum1 - sum);

writeln('Absolute error: ', abserr: 0: 20);

relerr := abs((sum1 - sum) / sum1);

writeln('Relative error: ', relerr: 0: 20, ' percent.');

readln();

end.
