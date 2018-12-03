function k = Gaussian(X, Y, h)
a = (X(1) - Y(1))^2;
b = (X(2) - Y(2))^2;
k = exp((a + b) / -h);