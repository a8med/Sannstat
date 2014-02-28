% Problem2.

load ../res/wave_data.mat

subplot(221), plot(y(1:end))
subplot(222), hist_density(y)
my_est = sqrt(sum(y.^2)/(2*length(y))) % Skriv in din MLskattning har
% my_est = mean(y)/sqrt(pi/2) % MK

%Antar normalfördelad
n = length(y);
s = sqrt(sum((y - mean(y)).^2)/(n-1));
d = s/sqrt(n);

lower_bound = my_est - 1.96*d
upper_bound = my_est + 1.96*d

subplot(223);
hold on;
plot(lower_bound, 0, 'g*')
plot(upper_bound, 0, 'b*')

plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')


