function [x] = incompatible(A,b)
[n,m] = size(A);
if n < m
    error('La matriz no tiene rango maximo')
end
if length(b) ~= n
    error('b Incompatible')
end
if size(b,2) > size(b,1)
    b = b';
end
x = zeros(m,1);
[Q,R] = gramschimdt(A);
U = R;
x = Q'*b./diag(R);
for i = m-1 : -1: 1
    for j = i+1: m
        x(i) = x(i) -(U(i,j)*x(j))/U(i,i);
    end
end
end