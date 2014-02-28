clf
clear
load moore.mat
w = log(y);
X = [ones(length(xtime), 1) xtime];
[beta, betaint, res] = regress(w, X);

syms x
f = @(x)(beta(1) + beta(2)*x)
f(2020)
