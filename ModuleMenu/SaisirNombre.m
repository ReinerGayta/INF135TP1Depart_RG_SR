function nb = SaisirNombre(question,min,max)
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 04-10-2021 
    
    %Parametre: 
    %Retour:
    
    %Cette fonction gere la saisie et la validation des valeurs entrees
    %par l'utilisateur. Elle prend un string contenant une question et les
    %deux valeurs limites de l'intervalle de la question. Elle retourne une
    %valeur valide entree par l'utilisateur ou -999 si l'utilisateur a
    %decide de verfié
    
    %On initialise un boolean qui indique si la valeur entree par 
    %l'utilisateur est valide
    isValide=false;
    %Une boucle while qui demande a l'utilisateur d'entrer une valeur
    %jusqu'a ce qu'elle soit valide ou jusqu'a ce que l'utilisateur 
    %annule l'operation
    while(~isValide)
        %On cree un string contenant la question  et l'intervalle en entree
        enonce = sprintf('%s entre %.2f et %.2f \n',question,min,max);
        %On demande l'utilisateur d'entrer une valeur entre l'intervalle
        %donne
        nb = input(enonce);
        %On verifie si la valeur entree est valide ou si l'utilisateur 
        %veut annuler l'operation
        if((nb>=min&&nb<=max)||nb==-999)
            %On modifie le boolean pour arreter la boucle while
            isValide=true;
        else
            %Si la valeur n'est pas valide, on indique a l'utilisateur que
            %la valeur n'est pas valide et on reccomence la boucle while
            fprintf("Votre valeur est à l'extérieur des bornes acceptables \n");
        end
    end
    %on retourne la valeur
    return
    
    
    