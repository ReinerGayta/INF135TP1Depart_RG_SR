function TraiterSignal(modeTracage)
    %Auteur: Gayta,Reiner Luis et Rey, Santiago
    %Date: 7/10/2021
    %
    %Param�tres: valeur integer entre 1 et 3 qui repr�sente le mode de tra�age
    %
    %Cette fonction permet de traiter le signal en fonction du mode de tracage
    %choisi
    
    %On charge le signal
    ChargerSignal();
    
    %Initialisation des variables utilis�es
    xMax = ObtenirTempsMaximal();
    nbMesuresPris=0;
    tempsPasse1=0;
    voltagePasse1=0;
    prochainTemps=0;
    prochainVoltage=0;
    
    %On trace les donn�es sur le graphe selon la m�thode choisi jusqu'� ce
    %qu'on atteint la derni�re donn�e
    while(prochainTemps <= xMax)
        
        if( modeTracage == 1 && nbMesuresPris >= 1 )
            AfficherDonnee(prochainTemps,prochainVoltage);
        end
        
        if( modeTracage == 2 && nbMesuresPris >= 2 )
            DessinerSegmentDroite(tempsPasse1,voltagePasse1,prochainTemps,prochainVoltage);
        end
        
        if( modeTracage == 3 && nbMesuresPris >= 3 )
            DessinerSegmentCourbe(tempsPasse2,voltagePasse2,tempsPasse1,voltagePasse1,prochainTemps,prochainVoltage);
        end
        %On obtient la valeur de la prochaine mesure et on garde en m�moire les
        %deux derni�res mesures prises
        tempsPasse2 = tempsPasse1;
        voltagePasse2 = voltagePasse1;
        
        tempsPasse1 = prochainTemps;
        voltagePasse1 = prochainVoltage;
        
        [prochainTemps,prochainVoltage] = ObtenirProchaineMesure();
        

        nbMesuresPris = nbMesuresPris + 1;
    end
end
