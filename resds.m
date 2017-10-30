A = im2bw(imread('lena512.bmp'));

filtro = [0 0 1 0 0; 0 1 1 1 0 ; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0;];

A2 = imdilate(A, filtro);

imshow(A2);