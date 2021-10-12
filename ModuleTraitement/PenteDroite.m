%Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 2021-10-07
 %Descripion: Ce sous-programme a pour but d'ameliorer
 %l'affichage du signal ECG en calculant la pente d'une droite
 
 %La fonction recois les valeurs en x et y de deux points
 %et renvoi la valeur de la pente de la droite cree par ces deux poitns
 function m = PenteDroite(x1,y1,x2,y2)
 
 %calcul de la pente
 m = (y2-y1)/(x2-x1);
 end
 