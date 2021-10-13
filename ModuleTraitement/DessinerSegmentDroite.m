function DessinerSegmentDroite(x1,y1,x2,y2)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 2021-10-07
    %
    %Paramètres: les valeurs x et y des deux points
    %
    %Description: Cette fonction permet de tracer une ligne droite entre
    %deux points donnés
    
    pente = PenteDroite(x1,y1,x2,y2);
    ordOrigine = OrdonneeDroite(x1,y1,pente);
    
    %On assure que les points ont été entrés au bon ordre
    if(x1>x2)
        pDepartX=x2;
        pFinX=x1;
    else
        pDepartX=x1;
        pFinX=x2;
    end
    
    %On trace une droite entre les deux points donnés
    for ii = pDepartX:0.0001:pFinX
        AfficherDonnee(ii,ii*pente+ordOrigine);
    end
end
