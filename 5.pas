var
a, b: array of integer;
n, trye: integer;

function max(const mas1, mas2: array of integer): integer;
  begin
    for var i := 0 to a.Length - 1 do
      begin
      if a[i] mod 5 = 0 then
        begin
          max := 0;
          break;
        end;
      if b[i] mod 5 = 0 then
        begin
          max := 1;
          break;
        end;
    end;
  end;

function zam(var mas1, mas2: array of integer): integer;
var maximum, minimal, podst1, podst2: integer;
  begin   
    minimal := 100;
    maximum := -100;
    for var i := 0 to a.Length - 1 do
      begin
      if mas1[i] > maximum then
        begin
          podst1 := i;
          maximum := mas1[i];
        end;
      if mas2[i] < minimal then
        begin
          podst2 := i;
          minimal := mas2[i];
        end;
      end;
    mas1[podst1] := 0;
    println(a);
    for var i := 0 to a.Length - 1 do mas2[i] := mas2[i] * 2;
    print(b);
  end;

begin
  print('Vvedite razmer massivov');
  read(n);
 
  a := new integer[n];
  b := new integer[n];
  for var i := 0 to a.Length - 1 do
    begin
      a[i] := random(-100, 100);
      b[i] := random(-100, 100);
    end;
  print('Perviy massiv:',a);
  println('Vtoroy massiv:',b);
  println('Rezultat:');
  trye := max(a, b);
  if trye = 0 then
  zam(a, b)
  else
  zam(b, a);
end.