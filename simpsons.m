% f: the f(x) vector, containing probability values
% a: starting year
% b: ending year
% h: distance (in years) between each evaluated data point
function simpsons(f, a, b, h)

% adjust values since MATLAB uses 1-indexed arrays
a = a + 1;
b = b + 1;
n = (b - a) / h;

simpsons = f(a) + f(b);

for k=1:(n/2)
    simpsons = simpsons + (4 * (f(a + ((2*k)-1)*h)));
end

for k=1:((n-2)/2)
    simpsons = simpsons + (2 * (f(a + (2*k*h))));
end

simpsons = (h/3) * simpsons;

fprintf('The Composite Simpson''s Rule estimate is %.3f%%\n\n', simpsons*100);

end