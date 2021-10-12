function DessinerSegmentCourbe(x1,y1,x2,y2,x3,y3)
%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 07-10-2021
%
%Cette fonction permet de tracer une ligne droite entre deux points donnés

[a,b,c] = EquationParabole(x1,y1,x2,y2,x3,y3);

if(x1>x2)
    pDepartX=x2;
    pFinX=x1;
else
    pDepartX=x1;
    pFinX=x2;
end

if(x3>pFinX)
    pFinX=x3;
elseif(x3<pDepartX)
    pDepartX=x3;
end

ii=pFinX;
pente=2*a*ii+b;
if(pente>0)
    estPositif=true;
else
    estPositif=false;
end
aChange=estPositif;
while(aChange==estPositif&&ii>=pDepartX)
    voltage=a*ii^2+b*ii+c;
    AfficherDonnee(ii,voltage);
    ii=ii-0.0001;
    pente=2*a*ii+b;
    if(pente>0)
        estPositif=true;
    else
        estPositif=false;
    end
end
end
