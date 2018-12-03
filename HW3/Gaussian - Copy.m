function k = Gaussian(x, h)
k = exp(-x.^2 / (2 * h)) / (sqrt(2 * pi * h));
% k = k ./ sum(k(:));