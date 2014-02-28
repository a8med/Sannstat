clf
clear
load moore.mat
w = log(y);
X = [ones(length(xtime), 1) xtime];
[beta, betaint, res] = regress(w, X);

beta(1) + beta(2)*2020
