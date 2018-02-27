function [x,e] = resolverlu(A,b)
[L,U,e] = factorizacionlu(A);
[n,m] = size(A); 
y = b;
for i = 2: m
    for j = 1: i-1
        y(i) = y(i) - L(i,j)*y(j);
    end
end

x = y./diag(U);
for i = n-1 : -1: 1
    for j = i+1: m
        x(i) = x(i) -(U(i,j)*x(j))/U(i,i);
    end
end
e = max(abs(A*x - b));