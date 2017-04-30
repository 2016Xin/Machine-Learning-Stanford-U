function [X_norm, mu_mean, sigma_std] = featureNormalize(X)

mu_mean = mean(X);
X_norm = bsxfun(@minus, X,mu_mean);

sigma_std = std(X_norm);
X_norm = bsxfun(@rdivide, X_norm, sigma_std);

% rdivide --> ./ right array divide

end