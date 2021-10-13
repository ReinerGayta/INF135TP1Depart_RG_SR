
 function m = PenteDroite(x1,y1,x2,y2)
 
 %Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 2021-10-07
 %Descripion: Ce sous-programme a pour but d'ameliorer
 %l'affichage du signal ECG en calculant la pente d'une droite
 
 %Parametre: Valeurs des x et y de deux points
 
 %Retour: Valeur de la pente de la droite cree par ces deux poitns
 
 %calcul de la pente
 m = (y2-y1)/(x2-x1);
 end
 