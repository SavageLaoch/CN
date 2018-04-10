clear; close all; clc

a = 0; b = 12;

% cambio de variable de [-1,1] a [a,b]
u = @(t) 0.5*(t*(b-a) + b+a);

n = 40; % numero de nodos
% nodos equiespaciados en [-1,1]
% t = -1:2/(n-1):1;
% nodos de Chebyshev en [-1,1]
t = cos(0.5*pi*((2*(1:n)-1)/n));

s = u(t);

x = a:(b-1)/(10000):b;

f = @(x) sin(7*x);

p = poliNewton(f,s,x);

plot(x,p); hold on; plot(x,f(x),'k'); plot(s,f(s),'*r')