function test(xn0,r)
close all;
%clear;
r=3.2;
xn0=rand(1);
x=0:0.01:1;
n=500;
nf=10;

subplot(2,2,3);
plot(x,x,'r');
axis([0, 1, 0, 1]);
hold on;
y=r.*x.*(1-x);
plot(x,y);
for(i=1:n)
        if(i==1)
          xn=xn0;
          orbit(i)=xn0;
        else
            %xn=xn1;
            xn=r*xn*(1-xn);
            orbit(i)=xn;
        end
              end
subplot(2,2,1:2)
plot(orbit);
axis([0, max(i), 0, 1]);
hold on;
subplot(2,2,3);
    xn=orbit(1);
    line([orbit(1) orbit(1)],[0 orbit(2)]);
    for(i=1:(n-2))
        line([orbit(i) orbit(i+1)],[orbit(i+1) orbit(i+1)]);
        line([orbit(i+1) orbit(i+1)],[orbit(i+1) orbit(i+2)]);
    end
subplot(2,2,4);
plot(x,x,'r');
axis([0, 1, 0, 1]);
hold on;
y=r.*x.*(1-x);
plot(x,y);
for(i=(n-nf):(n-2))
        line([orbit(i) orbit(i+1)],[orbit(i+1) orbit(i+1)]);
        line([orbit(i+1) orbit(i+1)],[orbit(i+1) orbit(i+2)]);
    end