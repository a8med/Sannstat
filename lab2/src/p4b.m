clf
clear
load poly.mat

c1 = [ones(length(x1), 1) x1 x1.^2 x1.^3, x1.^4]
r1 = regress(y1, c1);
a1 = c1*r1;
res1 = a1 - y1;
subplot(331), plot(x1, y1, x1, a1, 'r');
subplot(334), normplot(res1);
subplot(337), hist(res1);

c2 = [ones(length(x2), 1) x2 x2.^2]
r2 = regress(y2, c2);
a2 = c2*r2;
res2 = a2 - y2;
subplot(332), plot(x2, y2, x2, a2, 'r');
subplot(335), normplot(res2);
subplot(338), hist(res2);

c3 = [ones(length(x3), 1) x3 x3.^2 x3.^3]
r3 = regress(y3, c3);
a3 = c3*r3;
res3 = a3 - y3;
subplot(333), plot(x3, y3, x3, a3, 'r');
subplot(336), normplot(res3);
subplot(339), hist(res3);
