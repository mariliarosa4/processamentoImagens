%Desenvolva um c�digo que seja capaz de detectar mudan�as entre duas imagens da mesma cena.

normal = (imread('listrada.jpg'));
modificada = imread('alterada.jpg');
modificada = rgb2gray(modificada);
nova = modificada - normal;

figure;
 imshow(normal); 
 figure;
 imshow(modificada); 
figure;
 imshow(nova);
