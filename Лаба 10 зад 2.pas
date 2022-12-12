var
a:array[1..8,1..6] of integer;
b:array[1..8] of integer;
i,с,p:integer;
begin
randomize;
for i:=1 to 8 do begin
for с:=1 to 6 do begin
a[i,с]:=random(50)-3;
end;
end;
writeln('Исходный массив:');
for i:=1 to 8 do
writeln(a[i]);
for i:=1 to 8 do
begin
p:=0;
for с:=1 to 6 do
begin
if a[i,с] < 0 then
begin
p+=1;
end;
end;
if p>0 then
b[i]:=-1
else
b[i]:=1;
end;
writeln('');
writeln('Сформированный массив:');
write(b)
end.