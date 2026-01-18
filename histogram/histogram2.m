clc;
clear all;
close all;

% Read the image
I = imread("histo.jpg");

% Convert to grayscale if image is RGB
if size(I, 3) == 3
    I = rgb2gray(I);
end

%% Mathematical approach for Histogram Equalization

% Get image size
[M, N] = size(I);
numPixels = M * N;

% Initialize histogram (0–255)
histogram = zeros(256, 1);

% Compute histogram
for i = 1:M
    for j = 1:N
        intensity = I(i, j);
        histogram(intensity + 1) = histogram(intensity + 1) + 1;
    end
end

% Probability Density Function (PDF)
pdf = histogram / numPixels;

% Cumulative Distribution Function (CDF)
cdf = zeros(256, 1);
cdf(1) = pdf(1);

for k = 2:256
    cdf(k) = cdf(k - 1) + pdf(k);
end

% Intensity mapping
L = 256;
mapping = round((L - 1) * cdf);

% Create equalized image
I_eq = zeros(M, N, 'uint8');

for i = 1:M
    for j = 1:N
        oldVal = I(i, j);
        I_eq(i, j) = mapping(oldVal + 1);
    end
end

%% Display results
figure;

subplot(2, 2, 1);
imshow(I);
title('Original Image');

subplot(2, 2, 2);
imhist(I);
title('Original Histogram');

subplot(2, 2, 3);
imshow(I_eq);
title('Histogram Equalized Image');

subplot(2, 2, 4);
imhist(I_eq);
title('Equalized Histogram');