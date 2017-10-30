imagem = imread('jacare.jpg');
amostras = 100;

linha = size(imagem, 1);
coluna = size(imagem,2);

matrizSoma = uint16(0);


for k = 1:amostras
   nova = imnoise(imagem,'gaussian');
   matrizSoma = uint16(nova) + matrizSoma;
endfor

  final = matrizSoma/amostras;
  final = uint8(final);
  figure
  imshow(nova);
  figure
  imshow(final);