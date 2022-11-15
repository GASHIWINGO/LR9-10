const N=8;
begin
  var b:=new integer[N];
  var a:=MatrRandomInteger(N,N,-10,20);
  a.Println;
  println();
  var max:integer;
  var s:=0;
  for var i:=0 to a.rowcount-1 do begin
    max:=a[i,0];
    for var j:=0 to a.colcount-1 do begin
      if a[i,j]>max then max:=a[i,j]
    end;
    for var p:=0 to a.colcount-1 do begin
      if max=a[i,p] then Inc(s);
    end;
    if s=1 then b[i]:=1 else b[i]:=-1;
    s:=0;
  end;
  print(b);
  end.