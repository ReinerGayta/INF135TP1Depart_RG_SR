function DessinerSegmentDroite(x1,y1,x2,y2)
%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 07-10-2021 
%
%Cette fonction permet de tracer une ligne droite entre deux points donnés

pente = PenteDroite(x1,y1,x2,y2);
ordOrigine = OrdonneDroite(x1,y1,pente);
for ii = x1:0.0001:x2
    AfficherDonnee(ii,ii*pente+ordOrigine);
end
end
