function I = Icompab(f,a,w,x)
I = 0;
for i = 1: max(size(a)) - 1
    I = I + Iab(f,a(i),a(i+1),w,x);
end
end