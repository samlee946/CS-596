function k = Laplacian(x, h)
k = exp(-abs(x) / h) / (2 * h);