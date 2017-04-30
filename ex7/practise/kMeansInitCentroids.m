function centroids = kMeansInitCentroids(X, K)

% function kMeansInitCentroids(X, K) returns randomly initialize centroids

centroids = zeros(K, size(X,2));

[m, n] = size(X);

row = randperm(m, K);

centroids = X(row, :);