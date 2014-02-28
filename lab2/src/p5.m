clear
clf
load birth.dat

x = birth(birth(:, 20) < 3, 3);
y = birth(birth(:, 20) == 3, 3);

M = 100
thetaboort = bootstrp(M, @mean, x) - bootstrp(M, @mean, y)
