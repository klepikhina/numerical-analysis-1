function [T] = FalsePosition(f, a, b, maxIter)
%similar to bisection and secant
    i = 2;
    a1 = f(a);
    b1 = f(b);
    tol = 10^(-4);
    while i <= maxIter
        A(i) = a;
        B(i) = b;
        I(i) = i;
        new = b - (b1*(b-a))/(b1-a1);
        New(i) = new;
        if abs(new-b) < tol
            disp(new);
        end
        i = i+1
        new1 = f(new);
        if new1*b1 < 0
            a = b;
            a1 = b1;
        end
        b = new;
        b1 = new1
    end
    T = table(I',A',B',New','VariableNames',{'n','a' 'b', 'new'});
end

