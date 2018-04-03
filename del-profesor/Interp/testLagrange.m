close all; 
clear; clc

n = 22;

% f = @(x) exp(-x.^2);
% f = @(x) cos(0.5*pi*x);

f = @(x) 1./(1 + x.^2); % función de Runge

a = -5;
b = 5;

%%%% nodos equiespaciados %%%%
% s = a + (0:n)*(b - a)/n;

%%%% nodos de Chebyshev %%%%
t = cos(0.5*pi*(2*(0:n)+1)/(n+1)); % en [-1,1]
s = 0.5*(b-a)*t + 0.5*(b+a); % trasformación a [a,b]

M = 1000;
graficaLagrange(f,s,M);