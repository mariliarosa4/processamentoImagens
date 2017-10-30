
img = im2bw(imread('lena512.bmp'));
imagem = img;

elemento = [0 1 0;1 1 1;0 1 0;];
contadorFiltroErosao=0;

[linhaElemento, colunaElemento] = size(elemento);
 for a = 1:linhaElemento
     for b = 1:colunaElemento      
            
         if elemento(a,b)==1
          contadorFiltroErosao+=1;
         endif 
      endfor
endfor

N = linhaElemento;
M = colunaElemento;

imagem = padarray(imagem,[linhaElemento-1 colunaElemento-1]); 
imagem = double(imagem);

[linhaImg,colunaImg] = size(imagem);
linhaImg = linhaImg -(linhaElemento-1);
colunaImg = colunaImg -(colunaElemento-1);


dilatada = zeros(linhaImg,colunaImg);
erodida = zeros(linhaImg,colunaImg);
for i= 1:linhaImg 
    for j= 1:colunaImg        
      teste = 0;
        for x = 1:linhaElemento
            for y = 1:colunaElemento      
            
             teste+=elemento(x,y) * imagem(i+x-1,j+y-1); 
                
            endfor
        endfor
        if teste>=1
           dilatada(i,j) = 1;
        else
           dilatada(i,j) = 0;
        endif
        
        if teste==contadorFiltroErosao
           erodida(i,j) = 1;
        else
           erodida(i,j) = 0;
        endif
        
    endfor
endfor

gradiente = zeros(linhas_img,colunas_img);

gradiente = dilatada - erodida;
figure;

subplot(1,2,1);imshow(img); title('original')
subplot(1,2,2);imshow(gradiente); title('gradiente')