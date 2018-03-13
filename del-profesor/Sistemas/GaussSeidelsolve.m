function [x,E] = GaussSeidelsolve(A,b,tol,MaxIt)
[n,~] = size(A); if size(b,2) > size(b,1); b = b'; end
x0 = b; x  = zeros(size(b));
for i=1:n
	sum1 = 0;
    for j = 1:i-1
    	sum1 = sum1 + A(i,j)*x(j);
    end
    sum2 = 0;
    for j = i+1:n
        sum2 = sum2 + A(i,j)*x0(j);
    end
    x(i) = (b(i) - sum1 - sum2)/(A(i,i));
end
k = 1;
while max(abs(x - x0)) > tol && k < MaxIt
    x0 = x;
    for i=1:n
        sum1 = 0;
        for j = 1:i-1
            sum1 = sum1 + A(i,j)*x(j);
        end
        sum2 = 0;
        for j = i+1:n
            sum2 = sum2 + A(i,j)*x0(j);
        end
        x(i) = (b(i) - sum1 - sum2)/(A(i,i));
    end
    k  = k+1;
end
E = max(abs(A*x - b));
end