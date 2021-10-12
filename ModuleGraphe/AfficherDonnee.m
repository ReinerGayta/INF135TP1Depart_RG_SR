function AfficherDonnee(temps, voltage)
%
% Cette proc�dure permet d'ajouter une donn�e au graphe.
%
% PARAM�TRES:
%   - temps     : La coordonn�e en x du point � afficher
%   - voltage   : La coordonn�e en y du point � afficher
%
% VALEUR DE RETOUR:
%   - Aucune.
%

    % On r�cup�re le graphe dans lequel ajouter le point.
    global indiceEcriture;
    global tabX;
    global tabY;
    global modeTracage;
    
    global figureId;
    figure(figureId);
    
    % On ajoute le point.
    tabX(indiceEcriture) = temps;
    tabY(indiceEcriture) = voltage;
    indiceEcriture = indiceEcriture + 1;

    %On met � jours le tableau p�riodiquement
    if(modeTracage == 1 || mod(indiceEcriture, 500) == 0)
        s = scatter(tabX, tabY);
        

        % On s'assure d'avoir un graphe uniforme.
        s.MarkerFaceColor = 'blue';
        s.MarkerEdgeColor = 'blue';
    end
end
   