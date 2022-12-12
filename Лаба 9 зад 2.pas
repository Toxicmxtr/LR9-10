const
  n=5;
var
  a:array[1..n] of integer;
  b,min,max,mm,i,c,g: integer;
procedure n1();
var
  b:integer;
begin
  g:=abs(a[1]);
  i:=1;
  for b:=1 to n do
    if abs(a[b])<abs(g) then
    begin
      g:=a[b];
      i:=b;
    end;
end;
procedure n2();
var
  b:integer;
begin
  mm:=-1;
  c:=1;
  for b:=1 to n do
    if (a[b]<0) and (a[b]>mm) then
    begin
      mm:=a[b];
      c:=b;
    end;
end;
begin
  for b:=1 to n do
  begin
    write('a[', b, ']=');
    read(a[b]);
  end;
  max:=a[1];
  min:=abs(a[1]);
  n1();
  n2();
  writeln('Минимальное число по модулю: ',g,', Индекс минимального числа по модулю: ',i); 
  writeln('Максимальное отрицательное число: ',mm,', Индекс максимального отрицательного числа: ',c);
end.