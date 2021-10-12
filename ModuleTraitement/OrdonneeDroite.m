%Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 2021-10-07
 %Descripion:Ce sous-programme a pour but d'ameliorer
 %l'affichage du signal ECG en calculant l'ordonnee d'une droite
 
 %La fonction recois les valeurs de x et y d'un point ainsi que la valeur
 %de la pente pour ensuite retourner l'ordonnee a l'origine de la droite
 function origine = OrdonneeDroite(x1,y1,m)
 
 %calcule de l'origine
 origine = y1 - x1*m;
 
 end
 