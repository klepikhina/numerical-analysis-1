function [p,Q] = neville2(x0,x,f)
format long;
n = length(x);
Q = zeros(n,n);
Q(:,1) = f;
for j=2:n
for i=j:n
    Q(i,j) = ( (x0-x(i-j+1))/(x(i)-x(i-j+1)))*Q(i,j-1) + ((x0-x(i))/(x(i-j+1)-x(i)))*Q(i-1,j-1);
end
end
p = Q(n,n);
end

