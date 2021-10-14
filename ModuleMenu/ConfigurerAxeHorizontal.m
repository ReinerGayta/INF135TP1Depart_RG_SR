function ConfigurerAxeHorizontal()
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 04-10-2021

    %Cette procedure permettra de modifier la valeur maximale
    %en X dans le graphe

    %Fait appel au constants
    Constantes();

    %On demande à l'utilisateur d'entrer un temps maximum et on configure le
    %graphe selon ce qu'il a entré
    tmax = SaisirNombre('Quelle sera le temps maximale affiche?\n',0.01,5);

    if(tmax ~= -999)
        ConfigurerAxes(HORIZONTAL,0,tmax);

    end

end