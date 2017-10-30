
 imagem= imread('lena512.bmp');

  linha = size(imagem, 1);
  coluna = size(imagem,2);
  final = imagem-imagem; 
  uint8(final);
  ang = 90;
  %centralizar no plano cartesiano
  linha_centro = ceil(median(1:linha));
  coluna_centro = ceil(median(1:coluna));

for j=-(linha - linha_centro):(linha - linha_centro)
  for k=-(coluna - coluna_centro):(coluna - coluna_centro)
    x1 = ceil(( cosd(ang)*j) + (-sind(ang)*k));
    y1 = ceil(( sind(ang)*j) + (cosd(ang)*k));
    if (x1+linha_centro>0 && y1+coluna_centro>0)
           final(x1+linha_centro,y1+coluna_centro) = imagem(j+linha_centro,k+coluna_centro);
        endif
   
    endfor
 endfor


 figure, imshow(final)
 