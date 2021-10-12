%Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 2021-10-07
%Description: fonction qui test le programme PenteDroite en comparant des
%valeur attendue avec ceux obtenue


function PenteDroiteTest()

%Variable test1 prend la valeur (m) de sortie du programme PenteDroite 
test1 = PenteDroite(6,22,12,40);

%On affiche la valeur attendue avec la valeur obtenue 
fprintf('Test 1 :{6,22} et {12,40}\n attendue: 3\n obtenue: %.3f\n',test1);

%Variable test2 prend la valeur (m) de sortie du programme PenteDroite
test2 = PenteDroite(3,10,5,15);

%On affiche la valeur attendue avec la valeur obtenue
fprintf('Test 2 :{3,10} et {5,15}\n attendue: 2.5\n obtenue: %.3f\n',test2);


%Variable test3 prend la valeur (m) de sortie du programme PenteDroite
test3 = PenteDroite(7,10,5,15);

%On affiche la valeur attendue avec la valeur obtenue
fprintf('Test 3 :{7,10} et {5,15}\n attendue: -2.5\n obtenue: %.3f\n',test3);


end
