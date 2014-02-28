% Problem 4b.

load ../res/poly.mat;
% subplot(131); plot(x1, y1);
% subplot(132); plot(x2, y2);
% subplot(133); plot(x3, y3);

X1 = [ones(length(x1), 1) x1 x1.^2 x1.^3];
coeff = regress(y1, X1);
y1a = X1 * coeff;
subplot(331); plot(x1, y1, x1, y1a, 'r');
% B = REGRESS(Y,X) returns the vector B of regression coefficients in the
%     linear model Y = X*B.  X is an n-by-p design matrix, with rows
%     corresponding to observations and columns to predictor variables.  Y is
%     an n-by-1 vector of response observations.
X2 = [ones(length(x2), 1) x2 x2.^2];
coeff = regress(y2, X2);
y2a = X2 * coeff;
subplot(332); plot(x2, y2, x2, y2a, 'r');

X3 = [ones(length(x3), 1) x3 x3.^2 x3.^3];
coeff = regress(y3, X3);
y3a = X3 * coeff;
subplot(333); plot(x3, y3, x3, y3a, 'r');

res = y1a - y1;
subplot(334), normplot(res);
subplot(337), hist(res);

res = y2a - y2;
subplot(335), normplot(res);
subplot(338), hist(res);

res = y3a - y3;
subplot(336), normplot(res);
subplot(339), hist(res);
