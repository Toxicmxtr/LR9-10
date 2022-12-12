var
a, b, c, g: integer;
m: array[1..6, 1..8] of integer;
n: array[1..6] of integer;
begin
for var k:=1 to 6 do
n[k] := 0;
randomize;
for var i:=1 to 6 do
begin
for var j:=1 to 8 do
begin
m[i, j]:=random(25)-3;
end;
end;
writeln('Исходный массив:');
writeln('');
for var i:=1 to 6 do
writeln(m[i]);
for var i:=1 to 6 do
begin
for var j:=1 to 8 do
begin
if abs(m[i, j])>4 then
begin
n[i]:= m[i, j];
break
end;
end;
end;
writeln('');
writeln('Сформированный массив:');
write(n);
end.