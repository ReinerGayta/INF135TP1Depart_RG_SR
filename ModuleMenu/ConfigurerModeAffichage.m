function ConfigurerModeAffichage()
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 04-10-2021
    %
    %Cette fonction permet l'utilisateur de modifier le type de trace utilise
    %pour afficher le signal ECG

    %On affiche les modes de tracage disponibles
    fprintf('1 - Donnees seules\n');
    fprintf('2 - Donnees + interpollation lineaire\n');
    fprintf('3 - Donnees + interpollation quadratique\n');

    %On demande à l'utilisateur de choisir un mode d'affichage et configure
    %le graphe selon son choix

    choix = SaisirNombre("Comment voulez vous afficher le battement?",1,3);

    if(choix~=-999)
        ConfigurerMode(choix);

    end
end

