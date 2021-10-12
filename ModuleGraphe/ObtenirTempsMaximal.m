function xMax = ObtenirTempsMaximal()
%
% Cette fonction permet de r�cup�rer la valeur maximal de l'axe en x du graphe.
%
% PARAM�TRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - xMax : le temps maximal pouvant �tre affich� sur le graphe.
%
    global figureId;

    %On r�cup�re le graphe
    figure(figureId);
    axes = gca(figureId);
    
    %On retrouve la limite de l'axe en X.
    xMax = axes.XAxis.Limits(2);
end