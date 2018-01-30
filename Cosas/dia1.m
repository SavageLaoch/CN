function [r,ERR]= dia1(x,n)



%x = pi/10;

%n = 100;

r = zeros(n+1,1);

ERR = zeros(n+1,1);

r(1) = 1;

for k = 1:n
    
   r(k+1) = r(k) +x^k/factorial(k); 
    
end

 ERR = exp (x) - r

end

%Ejercicio: generar una figura copn el plot ERR (m) para x = pi/10, m
%[1,12] plot m,err
