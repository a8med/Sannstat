% Problem 4a.
clf;
load ../res/moore.mat;
w = log(y);

coeff = [ones(length(xtime), 1) xtime];
[beta, beta2, residual] = regress(w, coeff);
w = beta(1) + beta(2)*xtime;

subplot(121), plot(xtime, y, 'o');
subplot(122), plot(xtime, w, 'b', xtime, residual, 'r');

transpredict = beta(1) + beta(2)*2020
