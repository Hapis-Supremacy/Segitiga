{*
  Program Segitiga made by Hapis Supremacy
  Github : https://github.com/Hapis-Supremacy/Segitiga.git
  
  This project is created for learning purpose
*}

program triangle;
var
        a, b, c : integer;

procedure swap(var x, y: integer);
var
        t: integer;
begin
        t := x;
        x := y;
        y := t;
end;

procedure sortSide(var a, b, c: integer);
{ IS: a, b, and c represents each side of the triangle and has been initialized with value. }
{ Process : This is basically 3 step bubble sort. }
{ FS: a, b, and c sorted in ascending (a < b < c). }
begin
        if a > b then swap(a,b);
        if b > c then swap(b,c);
        if a > b then swap(a,b);
end;

begin
        writeln('Enter the lengths of each side of the triangle:');
        readln(a, b, c);
        sortSide(a, b, c);
        
        if (a * b * c <= 0) or (c >= a + b) then
        begin
                writeln('The Triangle cant be build from these lengths');
        end

        else
        begin
                if (a = b) and (b = c) then
                begin
                        writeln('The Triangle is EQUILATERAL');
                end

                else if (a = b) or (b = c) or (a = c) then
                begin
                        writeln('The Triangle is ISOSCELES');
                end

                else if (c * c) = (a * a) + (b * b) then
                begin
                        writeln('The Triangle is RIGHT TRIANGLE');
                end

                else
                begin
                        writeln('The Triangle is FREE TRIANGLE');
                end;
        end;
end.