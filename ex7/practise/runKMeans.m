function [centroids, idx] = runKMeans(X, initial_centroids, max_iters, plot_progress)

% Set default value for plot progress, indicate if the function should also plot its progress
% as the learning happens

if ~exist('plot_progress', 'var') || isempty(plot_progress)
    plot_progress = false;
end

% Plot the data if we are plotting progress
if plot_progress
    figure;
    hold on;
end

[m,n] = size(X);
K = size(initial_centroids, 1);
centroids = initial_centroids;
prev_centroids = centroids;
idx = zeros(m,1);

% run k-means
for i = 1 : max_iters
    
    idx = findClosedCentroids(X, initial_centroids);
    
    % Optionally, plot progress here
    if plot_progress
        plotProgresskMeans(X, centroids, prev_centroids, idx, K, i);
        prev_centroids = centroids;
        fprintf('Press enter to continue.\n');
        pause;
    end
    
    centroids = computerCentroids(X, idx, K);
end

% Hold off if we are plotting progress
if plot_progress
    hold off;
end

end
    