% % delproblem 1
% mu = 0.5;
% M = 500;
% X = exprnd(mu, M, 1);
% plot(ones(M, 1)*mu, 'r-.')
% hold on
% for k = 1:M
% 	plot (k, mean(X(1:k)))
% 	if k == 1
% 		legend('Samt \mu', 'Skattning av \mu')
% 	end
% 	xlabel(num2str(k)), pause(0.0000001)
% end
% hold off

% % delproblem 2
% M = 1e3;
% N = 10;
% mu = 5;
% X = exprnd(mu, M, N);
% S = cumsum(X, 2);
% for k = 1:N
% 	hist(S(:, k), 30)
% 	xlabel(num2str(k))
% 	pause(0.1)
% end

% N = 1e6;
% lambda = 4;
% X = exprnd(4, N, 1);
% subplot(2,1,1);
% hist_density(X);
% 
% Y = normrnd(0,1,N,1);
% subplot(2,1,2);
% hist_density(Y);
% 
% mean((exp(X).^cos(Y)))
