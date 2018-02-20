function [c,E,n] = secante (f,x0,x1,tol1,tol2,MaxIt)

if nargin < 4
    tol1 = 1e-4;
end

if nargin < 5 
    tol2 = tol1;
end

if nargin < 6
    MaxIt = 100;
end
x = x0;
y = x1;
n = 0;
F = f(x)*(x-y);
D = f(x) - f(y);
if D == 0
    error('UN CERO!')
 end
while abs(f(x)) > tol1 && abs(F/D) > tol2 && n < MaxIt
    
    F = f(x) * (x-y);
    D = f(x) - f(y);
    if D == 0
        error('UN CERO!')
    end
    y = x;
    x = x - F/D;
    n = n + 1;
end

c = x;
E = abs(f(c));
