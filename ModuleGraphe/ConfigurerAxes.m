function ConfigurerAxes(axeChoisit, minimumAxe, maximumAxe)
% 
% Cette procédure permet de modifer les valeurs limites affichées dans le graphe.
%
% PARAMÈTRES:
%   - axeChoisit    : Une constante représentant l'axe que l'on désire modiifer.
%                     Soit VERTICAL ou HORIZONTAL.
%   - minimumAxe    : La nouvelle valeur minimale pour l'axe choisit
%   - maximumAxe    : La nouvelle valeur maximale pour l'axe choisit
%
% VALEUR DE RETOUR:
%   - Aucune.
%
% EXEMPLE D'APPEL :
%
%   On configure l'axe du temps pour qu'il affiche de 0 à 5 sec.
%   Call configurerAxes(HORIZONTAL, 0, 5)
%
%   ' On configure l'axe du voltage pour qu'il affiche de 0.5 à 0.75 mV.
%   min = 0.5
%   max = 0.75
%   Call ConfigurerAxes(VERTICAL, min, max)
%
    global figureId;
    Constantes;
    
    
    % On récupère le graphe déjà générer.
    figure(figureId);
    axes = gca(figureId);


    % On définit les proprités du bon axe en fonction du choix de
    % l'utilisateur
    if axeChoisit == VERTICAL
        axes.YLim = [minimumAxe, maximumAxe];
    
    elseif axeChoisit == HORIZONTAL
        axes.XLim = [minimumAxe, maximumAxe];
        
    end
end