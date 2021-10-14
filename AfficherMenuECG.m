function AfficherMenuECG()
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 30-09-2021
    %
    %Description: Fonction qui affiche un menu pour permettre à l'utilisateur de
    %configurer l'axe verticale, l'axe horizontale ou le mode de traçage

    %On demande à l'utilisateur de choisir qu'elle option à configurer

    fprintf('Que voulez-vous configurer?\n');
    fprintf('1 - configurer l''axe verticale\n');
    fprintf('2 - configurer l''axe horizontale\n');
    fprintf('3 - configurer le mode de tracage de la courbe\n');
   
    choix=SaisirNombre('Entrez votre choix ',1,3);
    
    %On vérifie si la valeur entrée est entière
    while(choix~=fix(choix))
        choix = SaisirNombre('Valeur non entière, veuillez rentrer une valeur entière ',1,3);
    end

    %On configure le graphe selon le choix de l'utilisateur
    if(choix==1)
        ConfigurerAxeVertical();
 
    elseif(choix==2)
        ConfigurerAxeHorizontal();
        
    elseif(choix==3)
        ConfigurerModeAffichage();
        
    end
end
