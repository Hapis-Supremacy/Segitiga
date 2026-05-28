{*
  Program Segitiga made by Hapis Supremacy
  Github : https://github.com/Hapis-Supremacy/Segitiga.git

  This project is created for learning purpose
*}

program triangle;
var
  a, b, c : Double;

function maxVal(x, y: Double): Double;
begin
  if x > y then maxVal := x else maxVal := y;
end;

function isApproxEqual(x, y: Double): Boolean;
{ Relative tolerance 1%: |x - y| / max(x, y) <= 0.01 }
begin
  isApproxEqual := abs(x - y) / maxVal(x, y) <= 0.01;
end;

procedure swap(var x, y: Double);
var
  t: Double;
begin
  t := x;
  x := y;
  y := t;
end;

procedure sortSide(var a, b, c: Double);
{ IS: a, b, c sudah diinisialisasi }
{ Process: 3-step bubble sort }
{ FS: a <= b <= c }
begin
  if a > b then swap(a, b);
  if b > c then swap(b, c);
  if a > b then swap(a, b);
end;

begin
  writeln('Enter the lengths of each side of the triangle:');
  readln(a, b, c);
  sortSide(a, b, c);

  { Validasi: sisi harus positif dan memenuhi triangle inequality }
  if (a <= 0) or (b <= 0) or (c <= 0) or (c >= a + b) then
  begin
    writeln('The Triangle cant be build from these lengths');
  end

  else
  begin
    { Cek Equilateral dulu (lebih spesifik dari Isosceles) }
    if isApproxEqual(a, b) and isApproxEqual(b, c) then
    begin
      writeln('The Triangle is EQUILATERAL');
    end

    else if isApproxEqual(a, b) or isApproxEqual(b, c) or isApproxEqual(a, c) then
    begin
      writeln('The Triangle is ISOSCELES');
    end

    else if (c * c) = (a * a) + (b * b) then
    begin
      writeln('The Triangle is RIGHT TRIANGLE');
    end

    else
    begin
      writeln('The Triangle is SCALENE TRIANGLE');
    end;
  end;
end.