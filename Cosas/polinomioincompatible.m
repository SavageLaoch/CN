function [a] = polinomioincompatible(f,s,m)
b = f(s);
if size(b,2) > size(b,1)
    b = b';
end
n = length(b);
V(:,1) = ones(n,1);
for i=2:m
    V(:,i) = s.^(i-1);
end
a = incompatible(V,b);

x = min(s):(max(s)-min(s))/1000:max(s);
for i = 1: length(x)
    p(i) = 0;
    for k = 1:m
        p(i) = p(i) + a(k)*x(i)^(k-1);
    end
end
figure
plot(s,f(s),'*r')
hold on
plot(x,p)
end