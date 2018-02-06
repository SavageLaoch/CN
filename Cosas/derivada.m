function [D] = derivada(f,x,h)
%Podemos definir un nuevo h para una mejor evaluación
temp = x + h;
h = temp - x;
D = (f(x+h) - f(x-h))./(2*h);

end