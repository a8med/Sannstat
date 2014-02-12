%% Bootstrap - Simulering
% lambda = 1/5;
mu = 5;
M = 1e4;
n_sum = 5;
X = exprnd(mu, M, n_sum);
g = sum(X, 2);
subplot(211)
hist_density(g)
hold on
t = 0:0.01:mu*10;
plot(t, gampdf(t, n_sum, mu), 'r')
hold off
B = 1e4; % Antal bootstrapreplikat
totalNoSamples = M*n_sum;
X = reshape(X, totalNoSamples, 1); % Gor om X till vektor
yBoot = zeros(B, 1);
for j = 1:B
  % Hämtar n_sum stycken slumpade heltal från totalNoSamples
  % sampleDraws blir dessa index från X.
  sampleDraws = X(randsample(totalNoSamples, n_sum, 1));
  % j "pelare", summerar alla tal i sampleDraws på det indexet.
  yBoot(j) = sum(sampleDraws);
end
subplot(212)
hist_density(yBoot)
hold on
plot(t, gampdf(t, n_sum, mu), 'r')
hold off
