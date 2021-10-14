function nb = SaisirNombre(question,min,max)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 04-10-2021 
    
    %Parametre: Une chaine de caract�res que repr�sente la question et 
    %les valeurs maximum et minimum d'une intervalle
    
    %Retour: Une valeur entre l'intervalle donn� pour r�pondre � la question
    %ou -999 pour annuler
    
    %Description: Cette fonction g�re la saisie et la validation des valeurs entrees
    %par l'utilisateur.
    
    %On initialise un boolean qui indique si la valeur entree par 
    %l'utilisateur est valide
    isValide=false;
    
    %On demande � l'utilisateur d'entr�e une valeur jusqu'� ce que celle ci
    %soit valide ou il annule l'op�ration
    while(~isValide)
        
        enonce = sprintf('%s entre %.2f et %.2f \n',question,min,max);
        nb = input(enonce);
        
        if( ( nb >= min && nb <= max ) || nb == -999 )
            isValide=true;
            
        else
            fprintf("Votre valeur est � l'ext�rieur des bornes acceptables \n");
            
        end
    end
return
end
    
    
    