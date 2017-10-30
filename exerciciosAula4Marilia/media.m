img = imread('lena512.bmp');
imagem = padarray(img, [2 2]);

linha = size(imagem, 1);
coluna = size(imagem,2);
final = zeros(linha,coluna); 
novaMatriz = zeros(linha+2,coluna+2); 
figure;
imshow(imagem);
mascara = {1 1 1, 1 2 1, 1 1 1};
somaMascara=0;

for m=1:size(mascara,1)
  for n=1:size(mascara,2)
    somaMascara = cell2mat(mascara(m,n))+somaMascara;
    endfor
    endfor
    
    somaMascara
    for i=1:linha-2
  for j=1:coluna-2

    soma = (double((imagem(i,j)))+ double(imagem(i,j+1))+double(imagem(i,j+2))
    +double(imagem(i+1,j))+double(imagem(i+1,j+1))+double(imagem(i+1,j+2))
    +double(imagem(i+2,j))+double(imagem(i+2,j+1))+double(imagem(i+2,j+2)));
    media = soma/somaMascara;
    novaMatriz(i,j)=uint8(media);
    endfor
endfor
figure;
imshow(uint8(novaMatriz));