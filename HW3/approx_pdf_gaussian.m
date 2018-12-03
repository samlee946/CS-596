function f = F(X, x, h)
[t len] = size(X)
[N t] = size(x)
% for i = 1:len
	f = sum(Gaussian(X - x, h));
% end
f = f ./ N;
size(f)
% f = f ./ sum(f);