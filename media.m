
img = im2bw(imread('lena512.bmp'));

f=img;
elEstruturante = [0 0 1 0 0; 0 1 1 1 0 ; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0;];

[linhaElemento, colunaElemento] = size(elEstruturante);

N = linhaElemento;
M = colunaElemento;
imagem = padarray(f, [N-1 M-1]);

imagem = double(imagem);

linha = size(imagem, 1);
coluna = size(imagem,2);

linha = linha -(N-1);
coluna = coluna -(M-1);

novaMatriz = zeros(linha,coluna); 


 for i=1:linha
  for j=1:coluna
    teste = 1;
       for w = 1 :linhaElemento
         for k=1 :colunaElemento
              if elEstruturante(w,k) == 0
                if imagem(i+w-1,j+k-1) == 0
                  teste = 0;
                end
              end     
         endfor
       endfor
     novaMatriz(i,j)=teste;
    endfor
endfor
figure;
imshow(imagem);