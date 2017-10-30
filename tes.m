img = imread('lena512.bmp');

novaimg = uint8(zeros(size(img)));

p = padarray(img, [1 1]);
[linhas, colunas] = size(p);
l = linhas - 1;
c = colunas - 1;
soma = 0;
m = uint8([-1 -1 -1; 0 0 0; 1 1 1]); 

for x = 2:l
  for y = 2:c
    soma = p((x-1), (y-1))*m(1, 1) 
	+ p((x-1), y)*m(1, 2) 
	+ p((x-1), (y+1))*m(1, 3) 
	+ p(x, (y-1))*m(2, 2) 
	+ p(x, y)*m(2, 2) 
	+ p(x, (y+1))*m(2, 3)
  +	p((x+1), (y-1))*m(3, 1)
	+ p((x+1), y)*m(3, 2) 
	+ p((x+1), (y+1))*m(3, 3);
    soma = uint8(soma);
    novaimg((x), (y)) = soma;
  end
end


figure;imshow(img);
figure;imshow(novaimg);
