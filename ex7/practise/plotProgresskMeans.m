function plotProgresskMeans(X, centroids, prev_centroids, idx, K, i)

plotDataPoints(X,idx,K);

plot(centroids(:,1), centroids(:,2), 'x', ...
    'MarkerEdgeColor', 'k', ...
    'MarkerSize', 10, 'LineWidth', 3);
    
for j = 1: size(centroids,1)
    drawLine(centroids(j,:), prev_centroids(j,:));
end

title(sprintf('Iteration number %d', i))

end