function ConfigurerAxes(axeChoisit, minimumAxe, maximumAxe)
% 
% Cette proc�dure permet de modifer les valeurs limites affich�es dans le graphe.
%
% PARAM�TRES:
%   - axeChoisit    : Une constante repr�sentant l'axe que l'on d�sire modiifer.
%                     Soit VERTICAL ou HORIZONTAL.
%   - minimumAxe    : La nouvelle valeur minimale pour l'axe choisit
%   - maximumAxe    : La nouvelle valeur maximale pour l'axe choisit
%
% VALEUR DE RETOUR:
%   - Aucune.
%
% EXEMPLE D'APPEL :
%
%   On configure l'axe du temps pour qu'il affiche de 0 � 5 sec.
%   Call configurerAxes(HORIZONTAL, 0, 5)
%
%   ' On configure l'axe du voltage pour qu'il affiche de 0.5 � 0.75 mV.
%   min = 0.5
%   max = 0.75
%   Call ConfigurerAxes(VERTICAL, min, max)
%
    global figureId;
    Constantes;
    
    
    % On r�cup�re le graphe d�j� g�n�rer.
    figure(figureId);
    axes = gca(figureId);


    % On d�finit les proprit�s du bon axe en fonction du choix de
    % l'utilisateur
    if axeChoisit == VERTICAL
        axes.YLim = [minimumAxe, maximumAxe];
    
    elseif axeChoisit == HORIZONTAL
        axes.XLim = [minimumAxe, maximumAxe];
        
    end
end