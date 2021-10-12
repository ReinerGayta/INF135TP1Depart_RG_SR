function TraiterSignal(modeTracage)
%Auteur: Gayta,Reiner Luis et Rey, Santiago
%Date: 7/10/2021
%
%Cette fonction permet de traiter le signal en fonction du mode de tracage
%choisi

%On charge le signal
ChargerSignal();

%On obtient le temps en X maximal du graphe
xMax = ObtenirTempsMaximal();

%On fait appel au tableau contenant toutes les valeurs de temps evaluees

%On intialise une valeur pour d�nombrer le nombre de mesures prises
nbMesures=0;

temps=0;
voltage=0;

prochainTemps=0;
prochainVoltage=0;

%On v�rifie que le temps de la valeur � afficher est inf�rieur  au
%temps maximal r�cup�r�
while(prochainTemps<= xMax)
    if(modeTracage == 1)
        AfficherDonnee(prochainTemps,prochainVoltage);
    end
    if( modeTracage==2 && nbMesures>=2 )
        DessinerSegmentDroite(temps,voltage,prochainTemps,prochainVoltage);
    end
    if(modeTracage==3&&nbMesures>=3)
        DessinerSegmentCourbe(tempsPasse,voltagePasse,temps,voltage,prochainTemps,prochainVoltage);
    end
    tempsPasse=temps;
    voltagePasse=voltage;
    temps=prochainTemps;
    voltage=prochainVoltage;
    %On obtient les valeurs de la prochaine mesure
    [prochainTemps,prochainVoltage] = ObtenirProchaineMesure();
    %On it�re nbMesures pour compter le nombre de mesures faites
    nbMesures = nbMesures + 1;
    %Si le mode de tra�age choisi est 1, on affiche les donn�es sur le
    %graphe
end
end
