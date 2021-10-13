function ConfigurerAxeVertical()
    %Auteur: Gayta, Reiner Luis et Rey, Santiago
    %Date: 04-10-2021
    %
    %Cette fonction permet l'utilisateur de modifier la valeur maximum et
    %minimum de l'axe vertical

    Constantes();

    %On demande à l'utilisateur d'entrer des valeurs maximums et minimums
    %pour l'axe verticale et on le configure selon ce qu'il a entré
    vMax = SaisirNombre("Quelle sera le voltage maximal affichee?",-1.5,1.5);

    if(vMax~=-999)
        vMin = SaisirNombre("Quelle sera le voltage minimal affichee?",-1.5,vMax);

        if(vMin~=-999)
            ConfigurerAxes(VERTICAL, vMin, vMax);
            
        end
    end
end
