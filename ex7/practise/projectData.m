function Z = projectData(X, U, K)

[m, n] = size(X);

Z = zeros(m, K);

U_reduced = U(:, 1:K);

Z = X * U_reduced;

end