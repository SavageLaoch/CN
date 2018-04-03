function [L] = Ljota (s,x)
L = (size(s));
n = size(s);
m = n(2);
if (n(1) > n(2))
    m = n(1);
end
for i = 1:m
    L(i) = 1;
    for j = 1:m
        if i ~= j
            L(i) = L(i) * ((x - s(j))/(s(i) - s(j)));
        end
    end
end
end