function theta = newton(X, y, theta)
  [m, n] = size(X);
  theta = zeros(n, 1);
  dl = (y - sigmoid(X * theta))' * X;
  S = diag((sigmoid(X * theta) - 1) .* sigmoid(X * theta));
  h = X' * S * X;
  theta = theta - inv(h) * dl';
end
