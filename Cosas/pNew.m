function [fx,div] = pNew(f,s,x)
div = dif_div(f,s);
n = max(size(div));
fx = 0;
N = 1;
fx = fx + div(1,1);
for i=2:n
    N = N.*(x-s(i - 1));
    fx = fx + div(i,i)*N;
end
end