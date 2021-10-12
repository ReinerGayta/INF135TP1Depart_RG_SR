%Auteur:
%Date:
%
%Description: Fonction qui affiche un menu pour permettre Ã l'utilisateur de
%configurer l'axe verticale, l'axe horizontale ou le mode de traÃ§age

function AfficherMenuECG()
    
    %On affiche les 3 options que peut choisir l'utilisateur
    fprintf('Que voulez-vous configurer?\n');
    fprintf('1 - configurer l''axe verticale\n');
    fprintf('2 - configurer l''axe horizontale\n');
    fprintf('3 - configurer le mode de tracage de la courbe\n');
    
    %On demande Ã  l'utilisateur d'entrer une valeur entre 1 et 3 pour
    %choisir quelle option il veut modifier
    choix=SaisirNombre('Entrez votre choix ',1,3);
    
    %On vérifie si la valeur donnée est entière et on redemande la question
    %si cela n'est pas le cas
    while(choix~=fix(choix))
        choix = SaisirNombre('Valeur non entière, veuillez rentrer une valeur entière ',1,3);
    end
    %Si l'utilisateur choisit de configurer l'axe vertical
    if(choix==1)
        
        %fprintf Pour tester
        fprintf('Choix: Modifier axe vertical');
        
    %Si l'utilisateur choisit de configurer l'axe vertical 
    elseif(choix==2)

        %fprintf Pour tester
        fprintf('Choix: Modifier axe horizontal');
        
    %Si l'utilisateur choisit de configurer le mode de tracÃ© de la courbe
    elseif(choix==3)
  
        %fprintf Pour tester
        fprintf('Choix: Choisir mode de traÃ§age');
        
    end
end
