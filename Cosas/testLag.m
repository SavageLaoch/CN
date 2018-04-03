
%f = @(x) cos(0.5*pi*x);
f = @(x) 1./(1 + x.^2);
n = 22;

a = -5;
b = 5;

s = a + (0:n)*(b - a)/n; %% nodos equiespaciados

%%nodos chebysheb 

t = cos(0.5*pi*(2*(0:n)+1)/(n+1)); %en -1 1
s = 0.5*(b-a)*t + 0.5*(b+a); % transformacion a a b

M = 1000;

graficaLag(f,s,M);