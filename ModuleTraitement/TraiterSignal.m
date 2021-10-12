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
global tempsECG  ;

%On intialise une valeur pour dénombrer le nombre de mesures prises
nbMesures=0;

%On passe à travers toutes les valeurs de x qui doivent être affichées
for ii = 1:numel(tempsECG)
    %On vérifie que le temps de la valeur à afficher est inférieur  au
    %temps maximal récupéré
    while(tempsECG(ii)<= xMax)
        %On obtient les valeurs de la prochaine mesure
        [prochainTemps,prochainVoltage] = ObtenirProchaineMesure();
        %On itère nbMesures pour compter le nombre de mesures faites
        nbMesures = nbMesures + 1;
        %Si le mode de traçage choisi est 1, on affiche les données sur le
        %graphe
        if(modeTracage == 1)
            AfficherDonnee(prochainTemps,prochainVoltage);
        end
    end
end
end
