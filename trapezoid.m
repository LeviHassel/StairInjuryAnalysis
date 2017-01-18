% f: the f(x) vector, containing probability values
% a: starting year
% b: ending year
% h: distance (in years) between each evaluated data point
function trapezoid(f, a, b, h)

% adjust values since MATLAB uses 1-indexed arrays
a = a + 1;
b = b + 1;

trapezoid = 0;
i = a;

% find sums
while i < (b-1)
    trapezoid = trapezoid + (h/2) * (f(i) + f(i+1));
    i = i + h;
end

fprintf('The Composite Trapezoid Rule estimate is %.3f%%\n\n', trapezoid*100);

end