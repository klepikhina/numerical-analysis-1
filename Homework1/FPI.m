function [T] = FPI(f, guess, maxIter)
%initial guess then iterate
    i = 1;
    tol = 10^(-2);
    while i <= maxIter
        I(i) = i;
        Guess(i) = guess;
        g = feval(f, guess);
        G(i) = g;
        g = feval(f, guess);
        if abs(g-guess)< tol
            disp(g);
        end
        i = i+1;
        guess = g;
    end
    T = table(I',Guess',G','VariableNames',{'n','guess' 'g'});
end

