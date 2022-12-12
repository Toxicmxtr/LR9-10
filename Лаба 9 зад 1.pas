const n = 3;
var
  a:array of integer;
  i,b,c:integer;
  function pr(var a:array of integer): integer;
   begin
     var 
       i,k:integer;
     k:=1;
   end;
begin
  b:=1;
  c:=1;
  setlength(a,n);
  for i:=0 to n-1 do
  begin
    print('a[',i,'] = ');
    read(a[i]);
    c:=c*a[i];
         if (a[i] mod 2=0) then
     begin
     b:=b*a[i];
     end; 
   end;
   print('Массив: ',a);
   print('Произведение элементов: ',c);
   print('Произведение четных элементов: ',b);
end.