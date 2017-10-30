%Desenvolva um código que seja capaz de detectar mudanças entre duas imagens da mesma cena.

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
