function [a,b,c] = EquationParabole(x1,y1,x2,y2,x3,y3)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 12-10-2021
    %
    %Paramètres: Les valeurs x et y de trois points
    %Description: fonction qui recois les valeurs x et y de trois points
    %et retourne la valeur des coefficients caracteristique de l'equation parabolique des trois
    %points
    
    %Calcul de trois coefficients intermediaires
    c1 = y1/((x1-x2)*(x1-x3));
    c2 = y2/((x2-x1)*(x2-x3));
    c3 = y3/((x3-x1)*(x3-x2));
    
    %Calcul des trois coefficients caracteristique de l'equation parabolique
    a = c1+c2+c3;
    b = -(c1*(x2+x3)+c2*(x1+x3)+c3*(x1+x2));
    c = c1*x2*x3+c2*x1*x3+c3*x1*x2;

end