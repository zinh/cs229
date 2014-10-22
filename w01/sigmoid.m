function val = sigmoid(X)
  val = arrayfun(@(x) 1 / (1 + exp(-x)), X);
end
