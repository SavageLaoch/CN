function [landa,n] = autovaloresQR(A,err,MaxIt)
if size(A,1) ~= size(A,2)
    error('No cuadrada')
end

if max(max(abs(A - A'))) ~= 0
  error('No hermitica')
end

esdiagonal = @(A) abs(max(max(abs(A - diag(diag(A)))))/max (abs(diag(A)))) < err;
Ak = A;
n = 0;
while ~esdiagonal(A) && n < MaxIt 
    [Q,R] = gramschimdt(Ak);
    Ak = R*Q;
    n = n + 1;
end
landa = diag(Ak);
end