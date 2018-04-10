function graficaNew(f,s,M)
a = min(s);
b = max(s);
x = a + (0:M) * (b-a)/M;
y = size(x);
m = max(size(x));
for i = 1: m
    y(i) = pNew(f,s,x(i));
end
fplot(f,[min(s),max(s)],'k');
hold on;
plot(x,y);
plot(s,f(s),'*r');
hold off;
end