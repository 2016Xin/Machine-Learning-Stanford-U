%% machine leanring ex7, self practise for image conpress with K_means algorithms. 

clear;close all;clc

fprintf('\n Applying K-means to compress an image.\n\n');

% load an img

A = double(imread('bird_small.png'));
A = A/255; % feature scaling so that all values are in the range of 0~1
img_size = size(A);

% reshape A into N by 3 matrix where N = number of pixels
% each row contains the Red, Green, Blue pixel values
% that give us the dataset Matrix X that we will use k-means on
X = reshape(A, img_size(1) * img_size(2), 3);

% run K-means on the reshaped dataset X
K = 16;
max_iters = 10;

% randomly initialize the initial centroids
initial_centroids = kMeansInitCentroids(X,K);

% Run K-means
[centroids, idx] = runKMeans(X, initial_centroids, max_iters);

idx = findClosedCentroids(X, centroids);

% imaging....

X_recovered = centroids(idx,:);

X_recovered = reshape(X_recovered, img_size(1),img_size(2),3);

subplot(1,2,1);
imagesc(A);
title('Original');

subplot(1,2,2);
imagesc(X_recovered);
title(sprintf('Compressed, with %d color.', K));

