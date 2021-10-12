%Auteur
%Date
%
%Description: Programme qui configure le projet et affiche un premier
%graphe
function ApplicationECG()

    %Appel un script qui nettoie l'environement Matlab et fait appel au Modules
    ConfigurerProjet();

    %Appel un script qui affiche un graphe initial sans données
    AfficherECG();
    
    %R�cup�re le mode de tra�age du graphe
    modeTracage = ObtenirMode();
    
    %On traite le signal
    TraiterSignal(modeTracage);
end
