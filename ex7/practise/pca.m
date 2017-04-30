function [U, S] = pca(X)

% computes eigenvectors of the covariance matrix of X 
% return the eigenvector U and eigenvalue S (diagnal matrix)

[m, n] = size(X);

U = zeros(n);
S = zeros(n);

sigma = 1/m * X' * X;

[U, S, V ] = svd(sigma);

end



