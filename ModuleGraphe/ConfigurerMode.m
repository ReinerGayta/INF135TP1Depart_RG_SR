function ConfigurerMode(modeChoisit)
%
% Cette proc�dure permet de modifer comment le prochaine affichage des donnn�es
% sera effectu�.
%
% PARAM�TRES:
%   - modeChoisit : Une valeur num�rique repr�sentant le mode d'affichage que l'on d�sire.
%
% VALEUR DE RETOUR:
%   - Aucune.
%
    global modeTracage;

    modeTracage = modeChoisit;
end