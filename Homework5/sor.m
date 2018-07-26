function [u,it] = sor(A,b,w,u0,dtol,itmax)
    if nargin < 2
        error ('Too few arguments')
    end
    if nargin < 6 || isempty(itmax) == 1
        itmax = 1000;
    end
    if nargin < 5 || isempty(dtol) == 1
        dtol = 1e-3;
    end
    format long
    if nargin < 4 || isempty(u0) == 1
        u0 = b*0 + 1;
    end
    if nargin < 3 || isempty(w) == 1
        w = 1.5;
    elseif 0 > w || w > 2
        warning('improper value for the parameter w. You put %d, w = 1.5 was taken instead', w)
        w = 1.5;
    end

    if size(A,1) ~= size(A,2)
        error('Matrix A should be square.')
    elseif size(A,1) ~= size(b,1)
        error('Mismatch between dimensions of A and F')
    end


    %===================
    % SOR Begins
    %===================

    D = diag(diag(A));
    L = -tril(A,-1);
    U = -triu(A,1);

    DL = D - w*L;
    UE = (1-w)*D + w*U;
    FE = w*b;

    for it = 1:itmax
        rhv = UE*u0 + FE;
        u = DL\rhv;
        if abs(u-u0)/abs(u0) < dtol
            return
        else
            u0 = u;
        end
    end
    warning('Maximun number of iterations reached. Results may not be accurate')
end