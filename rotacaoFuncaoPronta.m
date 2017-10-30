x = imread('lena512.bmp'); 
b = imrotate(x, 90, 'bilinear'); imshow(x), figure, imshow(b)