x = imread('flower.jpg'); #Reading the image 
x = rgb2gray(x); #Converting RGB image to gray-level image
 x = im2double(x); #Converting image into double data type
 [row col] = size(x); #taking image size into matrix form
 gamma=2; #here we are taking constant value into “gamma” variable
 c=1; #here we are taking constant value into “c” variable
 for i = 1:row #reading row value from starting to end and storing in (i) variable
for j = 1:col 	#reading row value from starting to end and storing in (j) variable 
N(i,j)=c*(x(i,j)^gamma); 	#Here we are doing power-law calculation and storing there values into N matrix 
endfor 
endfor
figure, imshow(x); title('Original Image'); 
figure, imshow(N); title('Gamma Transformation Filtered Image');
