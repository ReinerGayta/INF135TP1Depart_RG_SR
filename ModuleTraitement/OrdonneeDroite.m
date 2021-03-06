function origine = OrdonneeDroite(x1,y1,m)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 07-10-2021
    %
    %Paramètres: Les valeurs x et y d'un point sur une droite et la pente 
    %de cette droite
    %
    %Sortie: l'ordonnée à l'origine de la droite entré en paramètre
    %
    %Descripion:Ce sous-programme a pour but d'ameliorer
    %l'affichage du signal ECG en calculant l'ordonnee d'une droite
    
    %Calcul de l'ordonné à l'origine
    origine = y1 - x1*m;
    return
    
end
