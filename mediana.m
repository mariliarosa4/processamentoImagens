img = imread('lena512.bmp');
imagem = padarray(img, [2 2]);

linha = size(imagem, 1);
coluna = size(imagem,2);
final = zeros(linha,coluna); 
novaMatriz = imagem;
 %para mascara 3x3
 
    for i=1:linha-2
  for j=1:linha-2
  matriz = [(imagem(i,j)) , (imagem(i,j+1))  ,(imagem(i,j+2))  ,(imagem(i+1,j)), (imagem(i+1,j+1))  ,(imagem(i+1,j+2)) , (imagem(i+2,j)),(imagem(i+2,j+1)),  (imagem(i+2,j+2))];

    
  mediana = median(matriz);
    novaMatriz(i+2,j+2)=mediana;
    endfor
endfor

figure,imshow(novaMatriz);