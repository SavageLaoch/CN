function [Q,R] = gramschimdt(A)
 [~,m] = size(A);
 Q = zeros(size(A));
 R = zeros(m);
 
 R(1,1) = norm(A(:,1));
 Q(:,1) = A(:,1)./R(1,1);
 
 for k=2:m
     vk = A(:,k);
     for j = 1: k-1
         R(j,k) = dot(A(:,k),Q(:,j));
         vk = vk - R(j,k).*Q(:,j);
     end
     R(k,k) = norm(vk);
     Q(:,k) = vk./R(k,k);
 end
end