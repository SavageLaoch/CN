function p = poliNewton(f,s,x)

% p = poliNewton(f,s,x)
% genera el polinomio interpolador de f por los nodos s
% calculado en el punto x

DF   = difdiv(f,s);
Newt = ones(size(x));
p    = DF(1,1)*Newt;

for k = 2:length(s)
    Newt = Newt.*(x - s(k-1));
    p = p + DF(k,k)*Newt;
end


end
