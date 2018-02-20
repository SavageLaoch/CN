function [c,E,n] = newton (f,df,x0,tol1,tol2,MaxIt)

if nargin < 4
    tol1 = 1e-4;
end

if nargin < 5 
    tol2 = tol1;
end

if nargin < 6
    MaxIt = 100;
end

n = 0;
x = x0;
F = f(x);
D = df(x);

while abs(F) > tol1 && abs(F/D) > tol2 && n < MaxIt
    F = f(x);
    D = df(x);
    if D == 0
        error('Cero en la derivada')
    end
    x = x - F/D;
    n = n + 1;
end

c = x;
E = abs(f(c));
