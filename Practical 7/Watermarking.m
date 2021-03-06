pkg load image;
clear all;
close all;
#Input Image where we want to apply watermark
f=imread('lena_color_512.tif');

#For watermarking, size of inputimage and watermarking image should be same
#there for we changed the size of image using imresize and dispalyed

fr=imresize(f,[560 560]);
figure;imshow(fr);
title('Original Image with resized');

#Watermarking Image
w=imread('watermark.jpg');
#Again Resized the Watermarking Image
wr=imresize(w,[560 560]);
figure;imshow(wr);
title('watermark');

#Applied watermarking
alpha=0.7;
fw=(1-alpha)*fr + alpha.*wr;
#Display the watermarked Image
figure;imshow(fw);
title('Watermarked Image');
