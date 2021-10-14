
function ApplicationECG()
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 30-09-2021
    %
    %Description: Programme qui configure le projet et affiche un premier
    %graphe

    %Appel un script qui nettoie l'environement Matlab et fait appel au Modules
    ConfigurerProjet();

    %Appel un script qui affiche un graphe initial sans donnees
    AfficherECG();
    
    %R�cup�re le mode de tra�age du graphe
    modeTracage = ObtenirMode();
    
    %On traite le signal
    TraiterSignal(modeTracage);
end
