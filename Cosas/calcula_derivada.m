function [D,h] = calcula_derivada(f,x,H)


for i = 1:10000
    y(i) = derivada(f,x,2^-i);
end
plot(y)

end