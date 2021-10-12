function mode = ObtenirMode()
%
% Cette fonction permet de récupérer la valeur du dernier mode d'affichage ayant été configurer.
%
% PARAMÈTRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - mode : un entier représentant le mode d'affichage.
%
    global modeTracage;

    mode = modeTracage;
end