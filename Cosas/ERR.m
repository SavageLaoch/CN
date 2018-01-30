%%dia1.m
x = pi/10;
for n=1:12
    [~,ERR(n)] = dia1(x,n);
end

plot (n,ERR)