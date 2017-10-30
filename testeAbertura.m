A = im2bw(imread('lena512.bmp'));


elemento = [0 1 0;1 1 1;0 1 0;];
A2 = imerode(A, elemento);
A3 = imdilate(A2, elemento);
figure
imshow(A2);
figure 
imshow(A3);

