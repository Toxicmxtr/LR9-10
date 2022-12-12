var a:array [1..8,1..8] of integer;
b:array [1..8] of integer; 
i,c,p,r:integer;
begin
for i:=1 to 8 do
for c:=1 to 8 do begin
a[i, c] := random(25) - 3;
end;
for i:=1 to 8 do begin
for c:=1 to 8 do
write(a[i,c]:4);
writeln();
end;
for i:=1 to 8 do
for c:=1 to 7 do
begin
if a[i,c]<=a[i,c+1] then
begin
b[i]:=a[i,c];
break;
end
end;
for i:=1 to 8 do
p:=p+b[i];
r:=round(p/8);
writeln('');
writeln('Среднее арифметическое: ',r);
for i:=1 to 8 do
if b[i]=r then begin
writeln('Массив имеет с/а:');
break;
end;
writeln(b);
end.