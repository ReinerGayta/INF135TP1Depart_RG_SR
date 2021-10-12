function TraiterSignal(modeTracage)
%Auteur: Gayta,Reiner Luis et Rey, Santiago
%Date: 7/10/2021
%
%Cette fonction permet de traiter le signal en fonction du mode de tracage
%choisi

%On charge le signal
ChargerSignal();

%Initialisation des variables/constantes utilis�es
xMax = ObtenirTempsMaximal();
nbMesuresPris=0;
temps=0;
voltage=0;
prochainTemps=0;
prochainVoltage=0;

%On trace les donn�es sur le graphe selon la m�thode choisi jusqu'� ce
%qu'on atteint la derni�re donn�e
while(prochainTemps <= xMax)
    if(modeTracage == 1)
        AfficherDonnee(prochainTemps,prochainVoltage);
    end
    if( modeTracage == 2 && nbMesuresPris >= 2 )
        DessinerSegmentDroite(temps,voltage,prochainTemps,prochainVoltage);
    end
    if( modeTracage == 3 && nbMesuresPris >= 3 )
        DessinerSegmentCourbe(tempsPasse,voltagePasse,temps,voltage,prochainTemps,prochainVoltage);
    end
    %On obtient la valeur de la prochaine mesure et on garde en m�moire les
    %deux derni�res mesures prises
    tempsPasse = temps;
    voltagePasse = voltage;
    
    temps = prochainTemps;
    voltage = prochainVoltage;
    
    [prochainTemps,prochainVoltage] = ObtenirProchaineMesure();
    
    
    nbMesuresPris = nbMesuresPris + 1;
end
end
