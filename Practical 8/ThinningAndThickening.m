pkg load image;
myorigimg = imread('test1.png');

thinf = bwmorph(myorigimg,'thin');
figure 2
subplot(2,2,1);
imshow(thinf);title('Thinning of the Image');

thickf = bwmorph(myorigimg,'thicken');
subplot(2,2,2);
imshow(thickf);title('Thickening of the Image');

