clear %limpa as variáveis do workspace
%xcorr2() = função do matlab que realiza correlaçao

im = imread('lena512.bmp');
w = im;
%w = [1 2 3; 4 5 6; 7 8 9];

N = 3;


filtro = [1 1 1;0 0 0; -1 -1 -1]; %horizontal
filtro2 = [1 0 -1;1 0 -1; 1 0 -1;]; %vertical
[filtro_x, filtro_y]= size(filtro);
%Aumenta a mascara M-1 x N-1 com os valores 0
w = padarray(w,[N-1 N-1]); %padding
w = double(w);

%definindo tamanho de g
[tamanho_gx,tamanho_gy] = size(w);
tamanho_gx = tamanho_gx -(N-1);
tamanho_gy = tamanho_gy -(N-1);

%declarando g
g(1:tamanho_gx,1:tamanho_gy) = 0;
g2(1:tamanho_gx,1:tamanho_gy) = 0;

for i= 1:tamanho_gx 
    for j= 1:tamanho_gy        
      
        for x = 1:filtro_x
            for y = 1:filtro_y      
               
                g(i,j) = g(i,j) + w(i+x-1,j+y-1) * filtro(x,y);
                g2(i,j) = g2(i,j) + w(i+x-1,j+y-1) * filtro2(x,y);
            end
        end
    end
end

%corta a g
crop = (tamanho_gx-512)/2;
g = g(crop+1:tamanho_gx-crop,crop+1:tamanho_gy-crop);
g2 = g2(crop+1:tamanho_gx-crop,crop+1:tamanho_gy-crop);


g=uint8(g);
g2=uint8(g2);

figure;
subplot(2,2,1);imshow(im); title('original')
subplot(2,2,2);imshow(g); title('horizontal')
subplot(2,2,3);imshow(g2); title('vertical')
subplot(2,2,4);imshow(imadd(g,g2)); title('Soma de imagens')