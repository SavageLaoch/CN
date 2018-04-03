function p = polilagrange(s,y,x)

L = Ljota(s,x);

% p = 0;
% for j=0:n
%     p = p + L(j+1)*y(j+1);
% end

p = dot(L,y);

end