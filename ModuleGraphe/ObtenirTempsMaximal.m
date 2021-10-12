function xMax = ObtenirTempsMaximal()
%
% Cette fonction permet de récupérer la valeur maximal de l'axe en x du graphe.
%
% PARAMÈTRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - xMax : le temps maximal pouvant être affiché sur le graphe.
%
    global figureId;

    %On récupère le graphe
    figure(figureId);
    axes = gca(figureId);
    
    %On retrouve la limite de l'axe en X.
    xMax = axes.XAxis.Limits(2);
end