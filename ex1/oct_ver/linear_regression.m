function [f,g] = linear_regression(theta, X,y)
  %
  % Arguments:
  %   theta - A vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The target value for each example.  y(j) is the target for example j.
  %
  
  m=size(X,2);
  n=size(X,1);

  f=0;
  g=zeros(size(theta));

  %
  % TODO:  Compute the linear regression objective by looping over the examples in X.
  %        Store the objective function value in 'f'.
  %
  % TODO:  Compute the gradient of the objective with respect to theta by looping over
  %        the examples in X and adding up the gradient for each example.  Store the
  %        computed gradient in 'g'.
  
%%% YOUR CODE HERE %%%

  % X is an nxm matrix. theta is an nx1 matrix
  for i = 1:n
    for j = 1:m
      f += 0.5 *(theta(i) * X(i,j) - y(j))^2;
    end
  end

  for i = 1:n
    for j = 1:m
      g(i) += (theta(i) * X(i,j) - y(j)) * X(i, j);
    end
  end
  
