clear;close all;clc

load('ex7data1.mat');

% visualize original dataset
plot(X(:,1), X(:,2), 'ro');

% before running PCA, normalized the data in the range of 0~1
[X_norm, mu, sigma] = featureNormalize(X);

% compute eigenvectors and eigenvalues
[U, S] = pca(X_norm);

K = 1;


% project the normalized X dataset onto eigenvectors U
X_pca = projectData(X_norm, U, K);

X_rec = recoverData(X_pca, U, K);

plot(X_norm(:,1), X_norm(:,2), 'bo');

hold on;

plot(X_rec(:,1), X_rec(:,2), 'rs');

for i = 1:size(X_norm, 1)
    drawLine(X_norm(i,:), X_rec(i,:), '--k', 'LineWidth', 1);
end
hold off

