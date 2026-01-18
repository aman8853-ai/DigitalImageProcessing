clc;
clear all;
close all;

I=imread("_.jpeg");
imshow(I);
figure
Ig=rgb2gray(I);
imshow(Ig);

I_red=imread("Vidit.jpg");
I_red(:,:,2)=0;
I_red(:,:,3)=0;
figure
imshow(I_red);

Ib=Ig>100;
figure
imshow(Ib);