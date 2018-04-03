function [fx] = pLag (s,y,x)
L = Ljota(s,x);
fx = 0;
n = size(s);
m = n(2);
if (n(1) > n(2))
    m = n(1);
end
for i = 1:m
    fx = fx + L(i) * y(i);
end
%dot(L,y) hace los mismo este como este la y
end