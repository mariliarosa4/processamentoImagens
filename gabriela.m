img = imread('lena512.bmp');
novaimg = zeros(size(img));

p = padarray(img, [1 1]);
[linhas, colunas] = size(p);
l = linhas - 1;
c = colunas - 1;
soma = 0;
m = [-1 -1 -1; 0 0 0; 1 1 1];

for x = 2:l
  for y = 2:c
    soma = uint32(p((x-1), (y-1))*m(1, 1)) + uint32(p((x-1), y)*m(1, 2)) + uint32(p((x+1), (y+1))*m(1, 3)) + uint32(p(x, (y-1))*m(2, 2)) + uint32(p(x, y)*m(2, 2)) + uint32(p(x, (y+1))*m(2, 3)) + uint32(p((x+1), (y-1))*m(3, 1)) + uint32(p((x+1), y)*m(3, 2)) + uint32(p((x+1), (y+1))*m(3, 3));
    media = uint8(double(soma/9));
    %filtro = uint8(soma);
    novaimg((x-1), (y-1)) = media;
  end
end

%resultado = imadd(novaimg, img);

figure;imshow(img);
figure;imshow(uint8(novaimg));
%figure;imshow(resultado);