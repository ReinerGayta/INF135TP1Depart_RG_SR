%Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 2021-10-07
 

 
 function OrdonneeDroiteTest()
 
 %Variable test1 prend la valeur (origine) de sortie du programme
 %OrdonneeOrigine
 test1 = OrdonneeDroite(2,3,1);
 
 %On affiche la valeur attendue avec la valeur obtenue
 fprintf('Test 1 : {2,3} et m = 1}\n attendue : 1\n obtenue:%.4f\n',test1);
 
 %Variable test2 prend la valeur (origine) de sortie du programme
 %OrdonneeOrigine
 test2 = OrdonneeDroite(4.5,1.75,1.5);
 
 %On affiche la valeur attendue avec la valeur obtenue
 fprintf('Test 2 : {4.5,1.75} et m = 1.5}\n attendue : -5\n obtenue:%.4f\n',test2);
 
  %Variable test3 prend la valeur (origine) de sortie du programme
 %OrdonneeOrigine
 test3 = OrdonneeDroite(4.33,2.33,-0.33);
 
 %On affiche la valeur attendue avec la valeur obtenue
 fprintf('Test 2 : {4.33,2.33} et m = -0.33}\n attendue : 3.7589\n obtenue:%.4f\n',test3);
 
 end