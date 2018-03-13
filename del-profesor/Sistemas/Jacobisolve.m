function [x,E] = Jacobisolve(A,b,tol,MaxIt)

% Queremos resolver el sistema Ax = b con la iteración de Jacobi
% El método iterativo x = B x + v se define con
% B = D(A)^{-1}*(D(A) - A), donde D(A) es la matriz diagonal de A
% y v = D(A)^{-1}*b. La convergencia se caracteriza entonces
% con el radio espectral de B.

if size(b,2) > size(b,1)
    b = b';
end
x0 = b; % se puede elegir cualquier punto inicial

v = b./diag(A);
B = (diag(1./diag(A)))*(diag(diag(A)) - A);
x = B*x0 + v;
k = 1;

while max(abs(x - x0)) > tol && k < MaxIt
    x0 = x;
    x  = B*x0 + v;
    k  = k+1;
end

E = max(abs(A*x - b));

end