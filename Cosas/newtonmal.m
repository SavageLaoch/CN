f = @(x) 3*x.^11 + (9/7)*x.^8 + (3/2)*x.^4 + (2/5)*x.^3 + 7;
df = @(x) 33*x.^10 + (72/7)*x.^7 + 6*x.^3 + (6/5)*x.^2;

MaxIt = 1000;
tol = 1e-40;
n = 0;
x = 10;
g = @(x) x - (f(x)/df(x));

E = abs(g(x) - x);

while E > tol && n < MaxIt
    if df(x) == 0
        error('Manco, has puesto algo con derivada cero')
    end
    n = n + 1;
    x = g(x);
    E = abs(g(x) - x);
end

x
n
E
fplot(f,[-1.5,1]); grid on
