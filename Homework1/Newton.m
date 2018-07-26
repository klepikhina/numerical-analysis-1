function [T] = Newton(f, guess,maxIter)
%initial guess then iterate
    i = 1;
    tol = 10^(-4);
    syms x;
    df = eval(['@(x)' char(diff(f(x)))]);
    disp( df );
    while i <= maxIter
        I(i) = i;
        new_guess = guess - f(guess)/df(guess);
        NewGuess(i) = new_guess;
        Guess(i) = guess;
        if abs(new_guess-guess)< tol
            disp(new_guess);
        end
        i = i+1;
        guess = new_guess;
    end
     T = table(I',Guess',NewGuess','VariableNames',{'n','guess' 'new_guess'});
end

