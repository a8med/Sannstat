load wave_data.mat
whos
subplot(211), plot(y(1:end))
subplot(212), hist_density(y)
[my_est,bounds] = raylfit(y)
lower_bound = bounds(1);
upper_bound = bounds(2);
hold on
plot(lower_bound, 0, 'g*')
plot(upper_bound, 0, 'g*')
plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')
hold off
