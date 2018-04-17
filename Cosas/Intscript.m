clear;clc;
f = @(x) x.^5 + 37*x.^2 - 12;
a = -7;
b = 11;
for N = 2:50
    v = a :(b-a)/(N-1):b;
    [Im(N),It(N),Is(N),I2(N),I3(N)] = Integracion(f,v);
end

figure
subplot(5,1,1); plot(2:50,Im(2:50))
subplot(5,1,2); plot(2:50,It(2:50))
subplot(5,1,3); plot(2:50,Is(2:50))
subplot(5,1,4); plot(2:50,I2(2:50))
subplot(5,1,5); plot(2:50,I3(2:50))

