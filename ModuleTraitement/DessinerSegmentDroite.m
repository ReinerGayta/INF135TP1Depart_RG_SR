function DessinerSegmentDroite(x1,y1,x2,y2)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 07-10-2021
    %
    %Param�tres: les valeurs x et y des deux points
    %
    %Description: Cette fonction permet de tracer une ligne droite entre
    %deux points donn�s
    
    %Calcul de la pente et de l'ordonn�e � l'origine
    pente = PenteDroite(x1,y1,x2,y2);
    ordOrigine = OrdonneeDroite(x1,y1,pente);
    
    %On assure que les points ont �t� entr�s au bon ordre
    if(x1>x2)
        pDepartX=x2;
        pFinX=x1;
    else
        pDepartX=x1;
        pFinX=x2;
    end
    
    %On trace une droite entre les deux points donn�s
    for ii = pDepartX:0.0001:pFinX
        AfficherDonnee(ii,ii*pente+ordOrigine);
    end
end
