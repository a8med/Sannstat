% Problem 5: Bootstrap av skattning av skillnad mellan väntevärden för
% födelsevikter.
clf;
load ../res/birth.dat;
x = birth(birth(:, 20) < 3, 3);
y = birth(birth(:, 20) == 3, 3);

M = 1000;
boot1 = bootstrp(M, @mean, x);
boot2 = bootstrp(M, @mean, y);
thetaboot = boot1 - boot2;

% Ser normalfördelat ut.
normplot(thetaboot);

quant = quantile(thetaboot, [0.025, 0.975])

d = sqrt(1/(M-1)*sum((thetaboot - mean(thetaboot)).^2));
I = [mean(x) - mean(y) - 1.96*d, mean(x) - mean(y) + 1.96*d]
