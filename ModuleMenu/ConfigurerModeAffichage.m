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

    %On utilise la fonction SaisirNombre pour demander l'utilisateur quel mode
    %il ou elle voudrait choisir et pour valider leur choix
    choix = SaisirNombre("Comment voulez vous afficher le battement?",1,3);

    %On verfie si l'utilisateur n'a pas annule l'operation
    if(choix~=-999)

        %Si l'operation n'est pas annule, on appel ConfigurerMode() pour
        %configurer le graphe
        ConfigurerMode(choix);

        %pour tester
        %fprintf('obtenu: %.0f', choix);
        %else
        %fprintf('obtenu: Annuler');
    end
end

