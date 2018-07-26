function [m,y_final]=power_method(A,x)
m=0;
n=length(x);
y_final=x;
tol=1e-4; %// Change - make tolerance more small to ensure convergence
iter = 0;
while(1)
     mold = m;
     y_old=y_final; %// Change - Save old eigenvector
     y_final=A*y_final;
     m=max(y_final);
     y_final=y_final/m;
     if abs(m-mold) < tol && norm(y_final-y_old,2) < tol %// Change - Check for both
         break;
     end
     iter = iter+1;
end
m
y_final
iter
end