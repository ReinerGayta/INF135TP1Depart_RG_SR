function AfficherECG()
%
% Cette proc�dure permet d'ajouter au graphe les �l�ments suivants :
%       - les axes
%       - le lignes de la grille
%       - les titres
%
% Note : Cette proc�dure ne g�re pas les donn�es affich�es!!
%
% PARAM�TRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - Aucune.
%
%
    Constantes;
    
    global figureId;
    
    global indiceEcriture;
    global tabX;
    global tabY;

    % On g�n�re le graphe.
    close all;
    figureId = figure('name', 'TP1 Simulation ECG', 'Color', 'White');
    axes     = gca(figureId);
    
    
    % On d�finit les proprit�t�s par d�fault de l'axe horizontal.
    axes.XLim = [0, CHOIX_MAXIMAL_TEMPS];
    axes.XLabel.String = 'Temps [s]';
    
    
    % On d�finit les proprit�t�s de l'axe horizontal.
    axes.YLim = [-CHOIX_MAXIMAL_AMPLITUDE, CHOIX_MAXIMAL_AMPLITUDE];
    axes.YLabel.String = 'Voltage [mV]';
   
    
    %On s'assure que toutes les donn�es s'affiche dans le m�me graphe.
    hold on;
    indiceEcriture = 1;
    tabX = [];
    tabY = [];
end