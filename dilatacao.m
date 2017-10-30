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

g(1:linhas_img,1:colunas_img) = 0;

for i= 1:linhas_img 
    for j= 1:colunas_img        
      teste = 1;
        for x = 1:linhas_filtro
            for y = 1:colunas_filtro      
              
              if filtro(x,y) == 1
                if f(i+x-1,j+y-1) == 0
                  teste = 0;
                end
              end
              
                
            end
        end
        g(i,j) = teste;
    end
end

figure;
imshow(img);

figure;
imshow(g);