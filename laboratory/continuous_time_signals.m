% step function
x = [-10:0.01:10].';
y = heaviside(x);
plot(x,y,'r')
axis([-4 4 -1 2])