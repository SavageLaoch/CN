function DF = difdiv(f,x)

% f function handle
% x vector de nodos de la interpolacion
%
% DF es una matriz triangular baja
% del mismo tamaño del vector x
% su primera columna es dada por
% los valores de f en los puntos x

DF = zeros(length(x));

% generamos la primera columna de DF
if size(x,1)<size(x,2)
    x = x';
end
y = f(x);
DF(:,1) = y;

n = length(x);
for k = 2:n
    DF(k:n,k) = (DF(k:n,k-1) - DF((k:n)-1,k-1))./(x(k:n)-x((k:n)-k+1));    
end


end