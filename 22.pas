const M = 8; const N=6; 
begin
  var b:= new integer[M];
  var a:=MatrRandomInteger(M,N,-1,10);
  a.Println;
  println();
  var s:=0;
  for var i:=0 to a.rowCount-1 do begin
    for var j:=0 to a.colCount-1 do begin
      if a[i,j] < 0 then Inc(s);
      if s <> 0 then b[i]:=-1 else b[i]:=1;
    end;
    s:=0;
  end;
  b.Println;
end.