A = [4,3,0;3,4,-1;0,-1,4];
b = [24;30;-24];
wArray = [];
iter = [];
inRange = [];
for w = linspace(1,1.6,100000)
    w;
    [u, it] = sor(A,b,w,[],1e-6,1000);
    u;
    it;
    if it==11
        inRange = [inRange, w];
    end
%     res = norm(b-u, inf)
%     disp '-----------------------------'
    
    wArray = [wArray, w];
    iter = [iter, it];
end
figure(1)
plot(wArray, iter)
xlabel('w')
ylabel('Iterations')
title('Number of iterations to approximate solution with w (Gauss-Seidel)')
% res
% u = min(res)
it = min(iter)

inRange