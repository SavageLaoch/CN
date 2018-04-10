a = 0;
b = 12;
%cambio de variable
u = @(t) 0.5*(t*(b-a) + b+a);
%numnodos
n = 70;
%equiespaciados
t = -1:2/(n-1):1;
%nodos cheshev
%t = cos(0.5*pi*((2*(1:n)-1)/n));

s = u(t);

x = 0:0.00001:10;

p = pNew(f,s,x);
plot(x,p);hold on;plot(x,f(x),'k');plot(s,f(s),'*r');hold off;
