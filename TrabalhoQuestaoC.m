
% AND %
imgA = imread('imgA.png');
imgB = imread('imgB.png');

Linha = size(imgA, 1);
Coluna = size(imgA,2);

for i=1:Linha
  for j=1:Coluna
    if(imgA(i,j) == imgB(i,j))
      newImg(i,j)=imgA(i,j);
    else
      newImg(i,j)=256;
    endif
  endfor
endfor

figure, imshow(newImg);

% OR %
imgA = imread('imgA.png');
imgB = imread('imgB.png');

Linha = size(imgA, 1);
Coluna = size(imgA,2);

for i=1:Linha
  for j=1:Coluna
    if(imgA(i,j) == 0 | imgB(i,j)== 0)
      newImg(i,j)=imgA(i,j);
    else
      newImg(i,j)=256;
    endif
  endfor
endfor

figure, imshow(newImg);


% XOR %

imgA = imread('imgA.png');
imgB = imread('imgB.png');

Linha = size(imgA, 1);
Coluna = size(imgA,2);

for i=1:Linha
  for j=1:Coluna
    if(imgA(i,j) == 0 & imgB(i,j)== 0)
      newImg(i,j)=256;
    else
      if(imgA(i,j) == 0 | imgB(i,j)== 0)
        newImg(i,j)=imgA(i,j);
      else
        newImg(i,j)=256;
      endif
    endif
  endfor
endfor

figure, imshow(newImg);