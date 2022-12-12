const n=5;
var
  a:array[1..n] of integer;
  b:array[1..n] of integer;
  o1:array[1..n] of integer;
  o2:array[1..n] of integer;
  sa,sb,i:integer;
procedure suma();
var i:integer;
begin
    for i:=1 to n do
    if a[i]>0 then
    begin
      sa:=sa+a[i];
    end;
end;
procedure sumb();
var i:integer;
begin
    for i:=1 to n do
    if b[i]>0 then
    begin
      sb:=sb+b[i];
    end;
end;
begin
  for i:=1 to n do
  begin
    write('a[',i,'] = ');
    read(a[i]);
  end;
  for i:=1 to n do
  begin
    write('b[',i,'] = ');
    read(b[i]);
  end;
  suma();
  sumb();
  if sa<sb then
  write('Сумма элементов первого массива меньше, ответ: ');
    for i:=1 to n do
    begin
      o1[i]:=a[i]*10;
      write(o1[i]:4);
    end;
    if sa>sb then
     write(' Сумма элементов второго массива меньше, ответ: ');
    for i:=1 to n do
    begin
      o2[i]:=b[i]*10;
      write(o2[i]:4);
    end;
end.