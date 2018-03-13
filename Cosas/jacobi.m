function [x,E] = jacobi(A,b,tol,MaxIt)
if size(b,2) > size(b,1)
    b = b';
end

x0 = b;
v = b./diag(A);
k = 1;
B = (diag(1./diag(A)))*(diag(diag(A)) - A);
x = B*x0 + v;
while max(abs(x - x0)) > tol && k < MaxIt
    x0 = x;
    x = B*x0 + v;
    k = k+1;
end

E = max(abs(x - x0));
end