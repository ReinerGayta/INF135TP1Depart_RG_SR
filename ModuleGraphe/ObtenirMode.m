function mode = ObtenirMode()
%
% Cette fonction permet de r�cup�rer la valeur du dernier mode d'affichage ayant �t� configurer.
%
% PARAM�TRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - mode : un entier repr�sentant le mode d'affichage.
%
    global modeTracage;

    mode = modeTracage;
end