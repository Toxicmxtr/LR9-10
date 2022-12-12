const n=5;
var
  a:array of integer;
  i,g,k:integer;
function prim(var a:array of integer):integer;
  begin
    var
      i:integer;
    for i:=1 to n-1 do 
      if a[i]<0 then
      begin
        g:=i;
      end;
  end;
begin
   setlength(a,n);
    for i:= 1 to n-1 do
  begin
    write('a[',i,'] = ');
    read(a[i]);
  end;
  k:=prim(a);
   writeln('Ответ: ',g);
end.