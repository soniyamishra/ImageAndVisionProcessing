pkg load image;
clear all; close all;
#Read input image
org_im = imread('coins.png');
#Convert RGB image to Binary Image and Displayed as Input Image
A=im2bw(org_im);
figure 1, imshow(A); title("binary image");
hole_filled=bwfill(A,'holes');
figure 2, imshow(hole_filled); title("hole filled image");


skelf100 = bwmorph(hole_filled,'skel',Inf);
figure 3;
imshow(skelf100);title('Skeletonization');
