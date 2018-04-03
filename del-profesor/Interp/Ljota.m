function L = Ljota(s,x)

n = max(size(s));

L = ones(size(s));

for j = 0:n-1

for k = 0:n-1
    if k ~= j
        L(j+1) = L(j+1)*(x-s(k+1))/(s(j+1)-s(k+1));
    end
end

end

end