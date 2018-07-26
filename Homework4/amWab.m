format long
f = @(x,y) (x+y);
h = 0.1;
x=0:h:0.5;
y=zeros(1, numel(x));
y(:,1) = 0;
x(1) = 0;
x(2) = 0.1;
x(3) = 0.2;
x(4) = 0.3;
x(5) = 0.4;
x(6) = 0.5;

for i = 2:5
% 
    k1 = h*f(x(i-1),y(i-1));
    k2 = h*f(x(i-1)+h/2, y(i-1)+k1/2);
    k3 = h*f(x(i-1)+h/2, y(i-1)+k2/2);
    k4 = h*f(x(i-1)+h, y(i-1)+k3);

    y(i) = y(i-1) + (k1+2*k2+2*k3+k4)/6;
end

for i=5:numel(x)

    y(i) = y(i-1)+h*(55*f(x(i-1),y(i-1))-59*f(x(i-2),y(i-2))+37*f(x(i-3),y(i-3))-9*f(x(i-4),y(i-4)))/24;
    y(i) = y(i-1)+h*(9*f(x(i),y(i))+19*f(x(i-1),y(i-1))-5*f(x(i-2),y(i-2))+f(x(i-3),y(i-3)))/24;
    
end
disp([x ;y]);
