function ConfigurerAxeVertical()
%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 04-10-2021 
%
%Cette fonction permet l'utilisateur de modifier la valeur maximum et
%minimum de l'axe vertical

%Fait appel a la fonction Constantes() pour avoir acces au constantes
%utilises
Constantes();
%On utilise la fonction SaisirNombre pour demander l'utilisateur la valeur
%maximum de l'axe vertical
vMax = SaisirNombre("Quelle sera le voltage minimal affichee?",-1.5,1.5);
%On verfie si l'utilisateur n'a pas annule l'operation
if(vMax~=-999)
    %On utilise la fonction SaisirNombre pour demander l'utilisateur la valeur
    %minimum de l'axe vertical
    vMin = SaisirNombre("Quelle sera le voltage minimal affichee?",-1.5,vMax);
    %On verfie si l'utilisateur n'a pas annule l'operation
    if(vMin~=-999)
        %Si l'operation n'est pas annuler, on fait appel a la fonction
        %ConfigurerAxes pour modifier les valeurs minimum et maximum de
        %l'axe vertical
        ConfigurerAxes(VERTICAL, vMin, vMax);
    end
end
end
