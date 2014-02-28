% w = log(yk) = B0 + B1xk + ek 
x = 0.1:0.01:5;
w = log(x');
coeff = [ones(length(x'), 1) x'];
[beta, beta2, residual] = regress(w, coeff);
W = beta(1) + beta(2)*x';

subplot(141);
plot(x, log(x), 'r');

subplot(142);
plot(x', W, 'b');

subplot(143);
plot(x', residual, 'g');

subplot(144);
plot(x, log(x), 'r', x', W, 'b', x', residual, 'g');
