A = [2,-1,1;-1,3,2;1,2,3];
u = [];
v = [];
u = [1; 1; 1];
for (i = 1:50)
    i
    v = A*u;
    u = v/max(v);
    max(v)
    u
end