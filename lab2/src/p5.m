clear
clf
load birth.dat

M = 1000;

x = birth(birth(:, 20) < 3, 3);
y = birth(birth(:, 20) == 3, 3);

 
mean(x) - mean(y)

thetaboot = bootstrp(M, @mean, x) - bootstrp(M, @mean, y);

subplot(121);
normplot(thetaboot);

quantile(thetaboot, [0.025, 0.975])

d = sqrt(1/(M-1)*sum((thetaboot - mean(thetaboot)).^2));
I = [mean(x) - mean(y) - 1.96*d, mean(x) - mean(y) + 1.96*d]
