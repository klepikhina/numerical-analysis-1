function [T] = Steffensens(f, p0, maxIter)
%Steffensens method... accelerates convergence
    i = 1;
    tol = 10^(-4);
    while i <= maxIter
        I(i) = i;
        P0(i) = p0;
        p1 = f(p0);
        P1(i) = p1;
        p2 = f(p1);
        P2(i) = p2;
        p = p0 - ((p1-p0)^2)/(p2-2*p1+p0);
        P(i) = p;
        if  abs(p-p0) < tol
            disp(p);
        end
        i = i+1;
        p0 = p;
    end
    T = table(I',P0',P1', P2', P','VariableNames',{'n','p0' 'p1', 'p2', 'p'});
end

