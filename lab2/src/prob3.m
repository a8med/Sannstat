% Problem 3.
clf;
load ../res/resistorer.mat
subplot(221);
hist_density(y);
subplot(222);
normplot(y);
subplot(223);
hold on;
hist_density(y);
normplot(y);
hold off;
