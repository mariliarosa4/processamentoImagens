imagem = imread('jacare.jpg');
linha = size(imagem, 1);
coluna = size(imagem,2);
rmin = min(min(imagem));
 rmax = max(max(imagem));
figure
imshow(imagem);
L = 256;
for i=1:linha
  for j=1:coluna
    pixAtual = imagem(i,j);
    matriz(i,j) = uint8(double((double(pixAtual) - double(rmin))/(double(rmax) - double(rmin))) * (double(L) - 1)); 
  endfor
endfor
figure
imshow(matriz);
