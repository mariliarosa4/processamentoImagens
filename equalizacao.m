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

for m=1:L
      tabelaNl(1,m) = 0;
      endfor
  for i=1:linha
  for j=1:coluna
     pixAtual = matriz(i,j);

tabelaNl(1,pixAtual+1) = tabelaNl(1,pixAtual+1) +1 ;

   
  endfor
endfor

  for i=1:linha
  for j=1:coluna

  soma = 0;
   for y =1: matriz(i,j)
    nl =  tabelaNl(1,p);
    soma = soma+nl;
    endfor
    
  equalizada(i,j) = uint8(double((double(L) - 1) / (double(double(linha) * double(coluna))))   * double(soma) ); 
  endfor
  endfor
  
figure
imshow(equalizada);
