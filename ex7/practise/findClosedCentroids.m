function idx = findClosedCentroids(X, centroids);

% function idx = findClosedCentroids(X, centroids) return the index of centroids that 
% the element x(i) is most closed to

[m,n] = size(X);
idx = zeros(m,1);
K = size(centroids,1);

for i = 1 : m;
    idx_k = zeros(K,1);
    for j = 1 : K;
        idx_k(j) = (X(i,:)- centroids(j,:)) * (X(i,:)- centroids(j,:))';
    end
    [value, idx(i)] = min(idx_k);
end