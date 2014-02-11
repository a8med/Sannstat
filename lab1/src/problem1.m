dx = 0.1;
x = 0:dx:15;
mu = 1;
y = exppdf(x, mu);
subplot(2,1,1);
plot(x,y)

lambda = 0.4267;
f=(lambda*exp(-x/lambda)+lambda./x).*(x >=1 & x <= 10);
subplot(2,1,2);
plot(x, f)
