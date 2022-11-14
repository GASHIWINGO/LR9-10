const N=8;
begin
  var b:=new integer[N];
  var a:=MatrRandomInteger(N,N,-1,10);
  a.Println;
  println();
  var min:integer;
  for var i:=0 to a.rowCount-1 do begin
    min:=a[0,0];
      for var j:=0 to a.colCount-1 do begin
        if a[i,j] < min then min:=a[i,j]
      end;
    b[i]:=min;
  end;
  print(b);
  var s:=0;
  var k:=0;
  for var i:=0 to N-1 do s+=b[i];
  for var i:=0 to N-1 do if b[i]=Round(s/N) then Inc(k);
  if k<>0 then print('soderzhit') else print('ne soderzhit');
 end.