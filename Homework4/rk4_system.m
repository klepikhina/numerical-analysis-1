dt = .2;
t = 0:dt:1;
u = zeros(2,numel(t));
u(:,1) = 1;

for jj = 2:numel(t)
    u_ = u(:,jj-1);
    t_ = t(jj-1);
    fa = rhs_problem2(u_,t_);
    fb = rhs_problem2(u_+dt/2.*fa,t_+dt/2);
    fc = rhs_problem2(u_+dt/2.*fb,t_+dt/2);
    fd = rhs_problem2(u_+dt.*fc,t_+dt);
    u(:,jj) = u(:,jj-1) + dt/6*(fa+2*fb+2*fc+fd);
end
disp([t;u]')

