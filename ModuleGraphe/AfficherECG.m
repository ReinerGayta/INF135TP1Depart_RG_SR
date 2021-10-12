function AfficherECG()
%
% Cette procédure permet d'ajouter au graphe les éléments suivants :
%       - les axes
%       - le lignes de la grille
%       - les titres
%
% Note : Cette procédure ne gère pas les données affichées!!
%
% PARAMÈTRES:
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

    % On génère le graphe.
    close all;
    figureId = figure('name', 'TP1 Simulation ECG', 'Color', 'White');
    axes     = gca(figureId);
    
    
    % On définit les propritétés par défault de l'axe horizontal.
    axes.XLim = [0, CHOIX_MAXIMAL_TEMPS];
    axes.XLabel.String = 'Temps [s]';
    
    
    % On définit les propritétés de l'axe horizontal.
    axes.YLim = [-CHOIX_MAXIMAL_AMPLITUDE, CHOIX_MAXIMAL_AMPLITUDE];
    axes.YLabel.String = 'Voltage [mV]';
   
    
    %On s'assure que toutes les données s'affiche dans le même graphe.
    hold on;
    indiceEcriture = 1;
    tabX = [];
    tabY = [];
end