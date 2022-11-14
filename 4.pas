const n = 5;
type 
  massiv = array[1..n] of integer;
  function sum (var p:massiv):integer;
  begin
    var s:=0;
    for var i:=1 to high(p) do 
      if p[i]>0 then s:=s+p[i];
    sum:=s;
  end;
  
  function sum2 (var p2:massiv):integer;
  begin
    var s:=0;
    for var i:=1 to high(p2) do 
      if p2[i]>0 then s:=s+p2[i];
    sum2:=s;
  end;
  
  function umn (var x:massiv):integer;
  begin 
    var i:integer;
    for i:=1 to high(x) do
      begin
      x[i]:=x[i]*10;
      print(x[i]);
      end;
    println()
  end;
 
begin
  var a:massiv;
  var b:massiv;
  println('vvedite perviy massiv:');
  for var i:=1 to n do
    begin
      readln(a[i]);
    end;
  println('perviy massiv:',a);
  
  println('vvedite vtoroi massiv:');
  for var i:=1 to n do
    begin
      readln(b[i]);
    end;
   println('vtoroi massiv:',b);
   println('rezultat:');
   var s1:=sum(a);
   var s2:=sum2(b);
   var rez:integer;
   if s1<s2 then rez:=umn(a)
   else rez:=umn(b);
end.