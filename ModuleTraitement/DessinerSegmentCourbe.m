function DessinerSegmentCourbe(x1,y1,x2,y2,x3,y3)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 12-10-2021
    % 
    %Paramètres: Les valeurs x et y de trois points
    %
    %Description: Cette fonction calcul une parabole entre trois points et trace la parabole
    %entre le deuxième point et le dernier point
    
    %Calculs des coefficients caracteristiques pour l'équation de la parabole
    [a,b,c] = EquationParabole(x1,y1,x2,y2,x3,y3);
    
    pMilieuX=x2;
    pFinX=x3;
    
    ii=pMilieuX;
    
    %On trace la parabole entre le deuxième point et le dernier point
    while(ii<=pFinX)
        voltage=a*ii^2+b*ii+c;
        AfficherDonnee(ii,voltage);
        ii=ii+0.0001;
    end
end
