img=imread('lena512.bmp');
 mascara=[-1 -1 -1;-1 8 -1;-1 -1 -1]; %operador laplaciano
 I=filter2(mascara,img);
I=uint8(I);
figure
imshow(img+I)
figure
imshow(I)