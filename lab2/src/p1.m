M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
my_est_ml = sqrt(1/size(x,1)*sum(x.^2))
my_est_mk = (sum(x,1)./size(x,1))/sqrt(pi/2)
%plot(my_est_ml, 0, 'r*')
%plot(my_est_mk, 0, 'r*')
plot(0:0.1:6, raylpdf(0:0.1:6, my_est_mk), 'r')
%plot(b, 0, 'ro')
hold off
