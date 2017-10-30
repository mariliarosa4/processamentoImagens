img = imread('lena512.bmp');
imagem = padarray(img, [2 2]);
linha = size(imagem, 1);
coluna = size(imagem,2);
novaHori = zeros(linha,coluna); 
novaVert = zeros(linha,coluna); 

mascaraHori=[-1 -1 -1;0 0 0;1 1 1];
mascaraVert =[1 0 -1;1 0 -1; 1 0 -1];

 for i=2:linha-2
  for j=2:coluna-2
  nPixelHori=0;
  nPixelVert=0;
  valorj = j;
  auxj = j;
  auxi=i;
  auxj--;
  auxi--;
      for m=1:3
        for n=1:3
            nPixelHori += double((double(imagem(auxi,auxj)))*(double(mascaraHori(m,n))));
            nPixelVert += double((double(imagem(auxi,auxj)))*(double(mascaraVert(m,n))));
           endfor
            auxj = valorj;
        auxi++;
        endfor
       
  novaHori(i,j)=double(nPixelHori);
  novaVert(i,j)=double(nPixelVert);

    endfor
endfor
figure;

subplot(2,2,1);imshow(img); title('original')
subplot(2,2,2);imshow(uint8(novaHori)); title('horizontal')
subplot(2,2,3);imshow(uint8(novaVert)); title('vertical')
subplot(2,2,4);imshow(uint8((uint8(novaVert))+(uint8(novaHori)))); title('Soma de imagens')