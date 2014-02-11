%lambdab = 0;
%fb = 0.0001;
%fb1 = 0;
%
%for lambda = 0.4:0.0001:0.5
%f = @(x)(lambda*exp(-x./lambda)+lambda./x);
%s = integral(f,1,10);
%	if abs(1-s) < fb
%		fb1 = s;
%		lambdab=lambda;
%	end
%end
%
%fb1
%lambdab

%lambda = 0.4267;
%fx = @(x)x.*(lambda*log(x)-lambda^2*exp(-1/lambda*x))

%integral(fx,1,10)






