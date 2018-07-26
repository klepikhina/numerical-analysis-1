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

for i = 2:3
% 
%     k1 = h*f(x(i-1),y(i-1));
%     k2 = h*f(x(i-1)+h/2, y(i-1)+k1/2);
%     k3 = h*f(x(i-1)+h/2, y(i-1)+k2/2);
%     k4 = h*f(x(i-1)+h, y(i-1)+k3);

    y(i) = x(i)^2/2;
end
disp(y)
for i=3:numel(x)
    y(i) = y(i-1)+h*(5*f(x(i),y(i))+8*f(x(i-1),y(i-1))-f(x(i-2),y(i-2)))/12;
    
end
disp([x ;y]);
