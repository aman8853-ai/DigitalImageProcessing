clc;
clear all;
close all;

I=imread("ios.jpeg");
imshow(I);
figure
Ig=rgb2gray(I);
imshow(Ig);

I_red=imread("ios.jpg");
I_red(:,:,2)=0;
I_red(:,:,3)=0;
figure
imshow(I_red);

Ib=Ig>100;
figure
imshow(Ib);
