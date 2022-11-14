const N=8;
begin
  var b:=new integer[N];
  var a:=MatrRandomInteger(N,N,-1,10);
  a.Println;
  println();
  var s:=0;
  for var i:=0 to a.rowCount-1 do begin
      for var j:=0 to a.colCount-2 do begin
        if (a[i,j] + a[i,j+1]) = 7 then Inc(s);
        end;
      if s <> 0 then b[i]:=1 else b[i]:=-1;
      s:=0;
      end;
  println(b);
end.