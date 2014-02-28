clf
load resistorer.mat
subplot(131), hist_density(y)
subplot(132), normplot(y)
subplot(133), wblplot(y)
