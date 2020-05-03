function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters,
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    h = X * theta; % h = 47 x 1, X = 47 x 3, theta = 3 x 1
    error_vector = h - y; % error_vector = 47 x 1 
    theta_change = alpha/m * X'* error_vector; % X'=3x47, error_vector=47x1 , theta_change=3x1 
    % Note Sum happens automatically
    theta = theta - theta_change;% theta= 3x1 
    % ============================================================
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
end

end
