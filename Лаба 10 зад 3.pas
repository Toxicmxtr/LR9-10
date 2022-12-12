var
a:array[1..8,1..8] of integer;
b:array[1..8] of integer;
i,c,p:integer;
begin
randomize;
for i:=1 to 8 do begin
for c:=1 to 8 do begin
a[i,c]:=random(25)-3;
end;
end;
writeln('Исходный массив:');
for i:=1 to 8 do
writeln(a[i]);
for i:=1 to 8 do
begin
p:=0;
for c:=1 to 7 do
begin
if a[i,c] + a[i,c+1] = 7 then
begin
p+=1;
break;
end;
end;
if p=1 then
b[i]:=1
else
b[i]:=-1;
end;
writeln('');
writeln('Сформированный массив:');
write(b)
end.