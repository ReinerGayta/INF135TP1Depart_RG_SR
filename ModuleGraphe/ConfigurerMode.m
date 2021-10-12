function ConfigurerMode(modeChoisit)
%
% Cette procédure permet de modifer comment le prochaine affichage des donnnées
% sera effectué.
%
% PARAMÈTRES:
%   - modeChoisit : Une valeur numérique représentant le mode d'affichage que l'on désire.
%
% VALEUR DE RETOUR:
%   - Aucune.
%
    global modeTracage;

    modeTracage = modeChoisit;
end