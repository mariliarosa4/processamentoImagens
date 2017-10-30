A = im2bw(imread('lena512.bmp'));


elemento = [0 1 0;1 1 1;0 1 0;];
A2 = imdilate(A, elemento);
A3 = imerode(A2, elemento);

figure
imshow(A2);
figure 
imshow(A3);

