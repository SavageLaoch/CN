function p = graficaLagrange(f,s,M)

a = min(s);
b = max(s);

y = f(s);

x = a + (0:M)*(b - a)/M;
p = zeros(size(x));
for j=0:M
    p(j+1) = polilagrange(s,y,x(j+1));
end

figure
plot(x,p)
hold on
fplot(f,[a,b],'k')
plot(s,y,'*r')

end