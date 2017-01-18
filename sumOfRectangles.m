% f: the f(x) vector, containing probability values
% a: starting year
% b: ending year
% h: distance (in years) between each evaluated data point
function sumOfRectangles(f, a, b, h)

% adjust values since MATLAB uses 1-indexed arrays
a = a + 1;
b = b + 1;

sumA = 0;
sumB = 0;
i = a + h;
j = a;

% find sums
while i < b
    sumA = sumA + (h * f(i));
    i = i + h;
end

while j < (b-h)
    sumB = sumB + (h * f(j));
    j = j + h;
end

% determine which value is the upper sum and which is the lower
if sumA > sumB
    upperSum = sumA;
    lowerSum = sumB;
else
    upperSum = sumB;
    lowerSum = sumA;
end

fprintf('The Lower Bound is %.3f%%\n', lowerSum*100);
fprintf('The Upper Bound is %.3f%%\n\n', upperSum*100);

end