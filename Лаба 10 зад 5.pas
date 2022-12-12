program q5;
var a:array [1..8,1..8] of integer; 
b:array [1..8] of integer; 
i,c,m:integer;
begin
m:=0;
for i:=1 to 8 do
for c:=1 to 8 do begin
a[i, c]:= random(25)-3;
end;
for i:=1 to 8 do begin
for c:=1 to 8 do
write(a[i,c]:4);
writeln();
end;
for i:=1 to 8 do
for c:=1 to 8 do
begin
if a[i,c]>m then m:=a[i,c];
end;
for i:=1 to 8 do
for c:=1 to 8 do
begin
if a[i,c]=m then begin
b[i]:=1;
break;
end
else
b[i]:=-1;
end;
writeln('');
writeln('Сформированный массив:');
println(b);
end.