load('data3-2.mat')
X = [stars; circles];
N = size(X, 1)
I = eye(N);
b = [ones(N / 2, 1); -ones(N / 2, 1)];
lambda = 10;
h = 0.001;
for i = 1:N
	for j = 1:N
		K(i, j) = Gaussian2(X(i, :), X(j, :), h);
	end
end
A = pinv(lambda * I + K) * b;
%x1 = [-1.5:0.01:1.5];
x1 = [-1.5:0.01:1.5];
x2 = [];
%for x = x1
%	for y = x1
%		t = [x y];
%		tt = g(t, X, A, N, h);
%		if abs(tt) < 0.01
%			x2 = [x2 y];
%			break;
%		end
%	end
%end
z = zeros(size(x1, 2), size(x1, 2));
for i = 1:size(x1, 2)
	for j = 1:size(x1, 2)
		t = [x1(i) x1(j)];
		z(j, i) = g(t, X, A, N, h);
	end
end
hold on;
contour(x1, x1, z, [0, 0], 'y--', 'DisplayName', 'lambda = 0.1, h = 0.01');
plot(X(1:N / 2, 1), X(1:N / 2, 2), 'p', 'DisplayName', 'stars');
plot(X(N / 2 + 1:N, 1), X(N / 2 + 1:N, 2), 'o', 'DisplayName', 'circles');
legend
