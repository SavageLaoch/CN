function [L,U,e] = factorizacionlu(A)
U = A;
l = size(A);
if l(1) ~= l(2)
    error('Matriz no cuadrada')
end
m = l(1);
L = eye(m);
for k = 1: m-1
    if U(k,k) == 0
        error('Cero en el denominador %d',k)
    end
    for i = k+1 : m 
        L(i,k) = U(i,k)/U(k,k);
%        for j = k: m
%            U(i,j) = U(i,j) - L(i,k) * U(k,j);
%        end
        U(i,k:m) = U(i,k:m) - L(i,k)* U(k,k:m);
    end
end

e = max(max(abs(A - L*U)));
end



