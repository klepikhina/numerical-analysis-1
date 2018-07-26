function [xStar] = gaussSeidel(A, b, maxIter)
    syms k
    
    k = 1;
    x = [0; 0; 0];
    xStar = [0; 0; 0];
    n = length(b);
    w = 1;
    while (k <= maxIter)
        for i = 2:n
%             for j = 1:n
%                 xStar(i-1) = x(i-1)
%                 x(
%                 xStar(i) = (b(i)-symsum(A(i,j)*x(j), j, 1,i-1)-symsum(A(i,j)*x(j), j, i+1,n))/A(i,i);
                A(i,2)
                r(i) = b(i)-symsum(A(i,j)*xStar(j),j,1,i-1)-A(i,i)*x(i)-symsum(A(i,j)*x(j), j, i+1,n);
                xStar(i) = x(i)+(r(i)/A(i,i))*w;
                x = xStar;
%             end
        end
    end
%     xStar
end

