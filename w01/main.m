X = load('q1x.dat');
y = load('q1y.dat');
m = size(y);
X = [ones(m, 1) X];
[m,n] = size(X);
theta = zeros(n, 1);
theta = newton(X, y, theta);

% plot
gscatter(X(:,2), X(:,3), y, 'br', 'xo');
