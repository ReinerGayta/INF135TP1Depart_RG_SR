%Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 2021-10-12
%Description: fonction qui test le programme EquationParabole en comparant les
%valeur attendue avec ceux obtenue
function EquationParaboleTest()

%Trois variable qui prennent les valeurs de sorties de la fonction
%EquationParabole avec des valeurs en entrees
[x,y,z] = EquationParabole(1,3,2,7,3,13);

%On affiche les valeurs attendue avec les valeurs obtenue
fprintf('Test 1: {1,3},{2,7} et {3,13}\n attendue:[1,1,1]\n obtenue:[%.0f,%.0f,%.0f]\n',x,y,z);

%Trois variable qui prennent les valeurs de sorties de la fonction
%EquationParabole avec des valeurs en entrees
[x2,y2,z2] = EquationParabole(0.75,1.33,1.25,4.25,1.75,1.33);

%On affiche les valeurs attendue avec les valeurs obtenue
fprintf('Test 2: {0.75,1.33},{1.25,4.25} et {1.75,1.33}\n attendue:[-11.68,29.2,-14]\n obtenue:[%.2f,%.1f,%.0f]\n',x2,y2,z2);

%Trois variable qui prennent les valeurs de sorties de la fonction
%EquationParabole avec des valeurs en entrees
[x3,y3,z3] = EquationParabole(2.3,1.25,4.5,-1.25,5.6,0.05);

%On affiche les valeurs attendue avec les valeurs obtenue
fprintf('Test 3: {2.3,1.25},{4.5,-1.25} et {5.6,0.05}\n attendue:[0.702479,-5.91322,11.1343]\n obtenue:[%.6f,%.5f,%.4f]\n',x3,y3,z3);

end