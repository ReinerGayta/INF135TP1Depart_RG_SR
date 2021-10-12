function DessinerSegmentCourbe(x1,y1,x2,y2,x3,y3)
%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 07-10-2021
%
%Cette fonction permet de tracer une ligne droite entre deux points donnés

[a,b,c] = EquationParabole(x1,y1,x2,y2,x3,y3);

pMilieuX=x2;
pFinX=x3;

ii=pMilieuX;

while(ii<=pFinX)
    voltage=a*ii^2+b*ii+c;
    AfficherDonnee(ii,voltage);
    ii=ii+0.0001;
end
end
