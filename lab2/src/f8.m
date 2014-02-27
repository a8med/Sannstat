% w = log(yk) = B0 + B1xk + ek 
x = 5:50;
w = log(x');
p = [ones(size(x)) x];
[beta, beta2, residual] = regress(w, p)
