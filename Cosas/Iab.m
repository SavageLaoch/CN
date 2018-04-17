function I = Iab(f,a,b,w,x)
I = 0;
for i=1: max(size(w))
    I = I + w(i) * f(((b-a)*x(i) + (b+a))/2);
end
I = I * (b-a)/2;
end