function DessinerSegmentDroite(x1,y1,x2,y2)
%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 07-10-2021 
%
%Cette fonction permet de tracer une ligne droite entre deux points donnés

pente = PenteDroite(x1,y1,x2,y2);
ordOrigine = OrdonneeDroite(x1,y1,pente);

if(x1>x2)
    pDepartX=x2;
    pFinX=x1;
else
    pDepartX=x1;
    pFinX=x2;
end

for ii = pDepartX:0.0001:pFinX
    AfficherDonnee(ii,ii*pente+ordOrigine);
end
end
