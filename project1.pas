Uses sysutils;
VAR a,n:string;




procedure punct1(var a:string);
begin
  writeln('-------------------------------------');
  writeln('Choice 1 ');
  writeln('-------------------------------------');

  writeln('Enter your string: ');
    writeln;
    readln(a);
    writeln;
  writeln('Your string is:  ', a);
end;


procedure punct2(b:string);
var   a : array[1..10] of string;
  i,k : byte;
  sMax, numMax : byte;

begin

  writeln('-------------------------------------');
  writeln('Choice 2');
  writeln('-------------------------------------');

  if (b='') then writeln('Your string is empty') else begin
  b := Trim(b);
  a[1] := ''; k := 1;
sMax := length(a[1]);  numMax := 1;

for i := 1 to length(b) do
  if b[i] <> ' ' then
    a[k] := a[k] + b[i]
  else
    begin
    if (b[i+1]<>' ') then begin
    k := k + 1;
    a[k] := '' end;
    end;
writeln ;
writeln('Array of words in your string, printed:'  );
writeln;
for i :=1 to k do
  writeln(a[i]);

for i :=2 to k do
   if length(a[i]) >sMax then
      begin
      sMax := length(a[i]);
      numMax := i
      end;
writeln;
writeln('Maximum length word is:   << ',a[numMax] ,  ' >>  of length ', sMax);


  end;




end;

procedure punct3(s:string);
var i:char;
  c,j:integer;
begin
   writeln('-------------------------------------');
  writeln('Choice 3');
  writeln('-------------------------------------');
  if (a='') then writeln('Your string is empty') else begin
  writeln('Quantity of each letter in your string: ');


  for i:='a' to 'z' do
  begin
    c:=0;
    for j:=1 to Length(s) do
      if UpCase(s[j])=UpCase(i) then
        inc(c);
    if c<>0 then
      writeln(i,' - ',c)
  end;


end;
end;

procedure punct4(b:string);
var
  g:string;
  a : array[1..10] of string;
  i,k,j,L: byte;
begin
  l:=0;
  writeln('-------------------------------------');
  writeln('Choice 4');
  writeln('-------------------------------------');
  if (b='') then writeln('Your string is empty') else begin
  writeln('Which word you want to change: ');
  readln(g);
  b := Trim(b);
  a[1] := ''; k := 1;

for i := 1 to length(b) do
  if b[i] <> ' ' then
    a[k] := a[k] + b[i]
  else
    begin
    if (b[i+1]<>' ') then begin
    k := k + 1;
    a[k] := '' end;
    end;

   for i :=1 to k do
   if (a[i]=g) then
     begin
     L:=1;
     for j:=1 to Length(a[i]) do begin
     g[j] := '*';
     a[i]:=g;
     end;
     end;
  g:='';
  if (L=0) then writeln('There is no such word.'  );
   for i:=1 to k  do
    g:=g+a[i]+' ';

     writeln(g);

  end;
end;



procedure Menu;
var
  h: integer;
begin


  while true do
    begin
        writeln('Choose punct of menu: ') ;
       readln(h);
      case h of
      1: begin
           punct1(a);
         end;
      2: begin
           punct2(a);
         end;
      3: begin
           punct3(a);
         end;
      4: begin
           punct4(a);
         end;
      5: exit;
      end;
    writeln;
    writeln('Press "Enter" to return back to menu.');
    ReadLn();
  end;
end;



begin
  writeln;
  writeln('                 MENU') ;
  writeln;
     writeln('          YOUR OPTIONS: ');
     writeln;
     writeln('          PRESS (1) TO ENTER A STRING');
        writeln;
     writeln('          PRESS (2) TO');
          writeln;
     writeln('          PRESS (3) TO');
           writeln;
     writeln('          PRESS (4) TO');
          writeln;
     writeln('          PRESS (5) TO EXIT;');
           writeln;
           writeln;
  menu;
end.

















