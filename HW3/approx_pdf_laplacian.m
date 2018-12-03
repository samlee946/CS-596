function f = F(X, x, h)
[t len] = size(X);
[N t] = size(x);
for i = 1:len
	f(i) = sum(Laplacian(X(i) - x, h));
end
f = f ./ N;
% f = f ./ sum(f);