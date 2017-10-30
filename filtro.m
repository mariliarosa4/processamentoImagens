matriz = zeros(5,5);
matriz(3,3)=1;
p = padarray(matriz, [2 2]);

w = [-1 -1 -1; 0 0 0; 1 1 1];
teste = zeros(size(p));
for i = 1: size(p)-2 
  for j=1:size(p)-2 
    for k=1:size(w)
      for m=1:size(w)
       teste(i,j) =-1*p(i,j)
       teste(i,j+1) = -1*p(i,j+1);
       +-1*p(i,j+2)+0*p(i+1,j)+ 0*p(i+1,j+1)+0*p(i+1,j+2)+1*p(i+2,j)+ 1*p(i+2,j+1)+1*p(i+2,j+2);
  endfor
  endfor
  endfor
endfor

figure;
imshow(uint8(teste));