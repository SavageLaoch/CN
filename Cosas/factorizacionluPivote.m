function [P,L,U,e] = factorizacionluPivote(A)
U = A;
l = size(A);
if l(1) ~= l(2)
    error('Matriz no cuadrada')
end
m = l(1);
L = eye(m);
P = eye(m);
for k = 1: m-1
    [~,j] = max(abs(U(k:m,k)));
    if j ~= 1
        iestrella = j + k - 1;
        v = U(k,k:m);
        U(k,k:m) = U(iestrella,k:m);
        U(iestrella,k:m) = v;
        v = L(k,1:k-1);
        L(k,1:k-1) = L(iestrella,1:k-1);
        L(iestrella,1:k-1) = v;
        v = P(k,k:m);
        P(k,k:m) = P(iestrella,k:m);
        P(iestrella,k:m) = v;
    end
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

e = max(max(abs(P*A - L*U)));
end

