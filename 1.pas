const n=5;
type 
  massiv = array[1..n] of integer;
  function min(var p:massiv):integer;
  var k:=1;
  begin
    for var i:=1 to high(p) do begin 
      k*=p[i];
    end;
    print('proizvedenie elementov::',k);
  end;
  begin
    var a:massiv;
  println('vvedite massiv:');
  for var i:=1 to n do
  begin
    readln(a[i]);
  end;
  println('massiv:',a);
  min(a);
  end.
