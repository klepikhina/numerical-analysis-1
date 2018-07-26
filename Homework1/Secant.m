function [T] = Secant(f,a,b,maxIter)
%Similar to NM except with two guesses
    i = 1;
    tol = 10^(-4);
    while i <= maxIter
        A(i) = a;
        B(i) = b;
        I(i) = i;
        c = b - ((f(b))*(b - a))/(f(b) - f(a));

        C(i) = c;
        if f(c) == 0 or (b-a)/2 < tol
            disp(c);
        end
        if f(a)*f(c) > 0
            a = c;
        else
            b = c;
        end
        i = i+1;
    end
    T = table(I',A',B',C','VariableNames',{'n','a' 'b', 'c'});
end
