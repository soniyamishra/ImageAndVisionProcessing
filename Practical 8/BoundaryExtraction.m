#Read input image
pkg load image;
org_im = imread('coins.png');
figure 1, imshow(org_im); title('Original Image');
#Convert RGB image to Binary Image and Displayed as Input Image
A=im2bw(org_im);
se=strel('disk',1,0);
F=imerode(A,se);
figure 2, imshow(F);title("eroded");
figure 3, imshow(A-F); title("boundary");
