function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.


theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------
inverse_XTX = pinv(transpose(X)*X); % inverse of product of transpose of X and X 
product_XTy = transpose(X)*y;
theta = inverse_XTX * product_XTy;

% -------------------------------------------------------------


% ============================================================

end
