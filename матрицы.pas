program project1;

    type matrix = array [1..3,1..3] of integer;
      var A:matrix;  i,j:longint;

procedure matrix_input
(var A:matrix) ;
var i,j:longint;
begin
     writeln();
     for i:=1 to 3 do
         begin
              for j:=1 to 3 do
                  read(a[i,j]);
              readln();
         end;
end;
procedure matrix_output
(var A:matrix) ;
var i,j:longint;
begin
     writeln();
     for i:=1 to 3 do
         begin
              for j:=1 to 3 do
                  write(a[i,j]:5);
              writeln();
         end;
end;
  procedure matrix_turn (Var A:matrix);
            var B:matrix; i,j:longint;
              begin
for i:=1 to 3 do
for j:=1 to 3 do
b[i,j]:=a[3-j+1,i];{поворот}

for i:=1 to 3 do
  begin
    for j:=1 to 3 do
      begin
       a[i,j]:=b[i,j] ;  {замена исходной матрицы}
      end;

  end;  end;



begin
writeln();
    writeln('Input matrix elements: ');
    writeln();
 matrix_input (A);
 writeln();
 writeln('Original matrix: ');
 writeln();
  matrix_output (A);
  matrix_turn(A);
  matrix_turn(A);
  matrix_turn(A);
   writeln();
   writeln('Turned by 90 degrees anti-cloakwise: ');
   writeln();
  matrix_output(A);


readln();

end.

