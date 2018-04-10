function [M] = dif_div(f,x)
n = max(size(x));
M = zeros(n);
for i = 1:n
    M(i,1) = f(x(i));
end
for i = 2:n
    for j = i:n
        M(j,i) = (M(j,i-1) - M(j-1,i-1))/(x(j) - x(j - i + 1));
    end
end      
end