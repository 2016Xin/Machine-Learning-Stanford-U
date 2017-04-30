clear;close all;clc

load('ex7data2.mat');

K = 3;

data_size = size(X);

initial_centroids = kMeansInitCentroids(X, K);

idx = findClosedCentroids(X, initial_centroids);

centroids = computerCentroids(X, idx, K);

max_iters = 10;

[centroids, idx] = runKMeans(X, initial_centroids, max_iters, true);

