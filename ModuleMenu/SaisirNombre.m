function nb = SaisirNombre(question,min,max)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 04-10-2021 
    
    %Parametre: Une chaine de caractères que représente la question et 
    %les valeurs maximum et minimum d'une intervalle
    
    %Retour: Une valeur entre l'intervalle donné pour répondre à la question
    %ou -999 pour annuler
    
    %Description: Cette fonction gère la saisie et la validation des valeurs entrees
    %par l'utilisateur.
    
    %On initialise un boolean qui indique si la valeur entree par 
    %l'utilisateur est valide
    isValide=false;
    
    %On demande à l'utilisateur d'entrée une valeur jusqu'à ce que celle ci
    %soit valide ou il annule l'opération
    while(~isValide)
        
        enonce = sprintf('%s entre %.2f et %.2f \n',question,min,max);
        nb = input(enonce);
        
        if( ( nb >= min && nb <= max ) || nb == -999 )
            isValide=true;
            
        else
            fprintf("Votre valeur est à l'extérieur des bornes acceptables \n");
            
        end
    end
return
end
    
    
    