function ret = g(x, X, A, N, h)
ret = 0;
for i = 1:N
	%ret = ret + A(i) * Gaussian2(x, X(i, :), h);
	ret = ret + A(i) * Richness(x, X(i, :), h);
end