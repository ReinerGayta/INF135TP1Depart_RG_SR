function AfficherDonnee(temps, voltage)
%
% Cette procédure permet d'ajouter une donnée au graphe.
%
% PARAMÈTRES:
%   - temps     : La coordonnée en x du point à afficher
%   - voltage   : La coordonnée en y du point à afficher
%
% VALEUR DE RETOUR:
%   - Aucune.
%

    % On récupère le graphe dans lequel ajouter le point.
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

    %On met à jours le tableau périodiquement
    if(modeTracage == 1 || mod(indiceEcriture, 500) == 0)
        s = scatter(tabX, tabY);
        

        % On s'assure d'avoir un graphe uniforme.
        s.MarkerFaceColor = 'blue';
        s.MarkerEdgeColor = 'blue';
    end
end
   