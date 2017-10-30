img = im2bw(imread('lena512.bmp'));
f = img;

[linhas_orig, colunas_orig] = size(f);

filtro = [0 0 1 0 0; 0 1 1 1 0 ; 1 1 1 1 1; 0 1 1 1 0; 0 0 1 0 0;];

[linhas_filtro, colunas_filtro] = size(filtro);

N = linhas_filtro;
M = colunas_filtro;

f = padarray(f,[N-1 M-1]); 
f = double(f);

[linhas_img,colunas_img] = size(f);
linhas_img = linhas_img -(N-1);
colunas_img = colunas_img -(M-1);

g = zeros(linhas_img,colunas_img); 

for i= 1:linhas_img 
    for j= 1:colunas_img        
      teste = 0;
        for x = 1:linhas_filtro
            for y = 1:colunas_filtro  
              
             teste+= filtro(x,y) * f(i+x-1,j+y-1);
              
            end
        end
        if teste>=1
           g(i,j) = 1;
        else
           g(i,j) = 0;
        end
    end
end


figure;
imshow(img);

figure;
imshow(g);