function [T] = Bisection(f, a, b, maxIter)
%input guesses around root [a,b] and iterate until it converges to the root
%or return error
    format shortG;
    i = 1;
    FA = f(a);
    tol = 10^(-4);
    while i <= maxIter
        I(i) = i;
        A(i) = a;
        B(i) = b;
        approx = a + (b-a)/2;
        Approx(i) = approx;
        FApprox = f(approx);
        if FApprox == 0 or (b-a)/2 < tol
            disp(approx);
        end
        i = i+1;
        if FA*FApprox > 0
            a = approx;
        else
            b = approx;
        end
    end
    T = table(I',A',B',Approx','VariableNames',{'n','a' 'b', 'c'});
    table( round(i,5), round(a,5), round(b,5), round(approx,5));
end

