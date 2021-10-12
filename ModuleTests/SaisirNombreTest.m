function SaisirNombreTest()

clear;
clc;

fprintf("---- SAISIR NOMBRE TEST ----");

test1 = 0;
test2 = 0;

attendue1 = -999;
attendue2 = 4;
etat1 = "";
etat2 = "";

fprintf("\n(Tapez -5, puis 10, puis -999)");

test1 = saisirNombre("\nEntrez un voltage limite\n", -3.3, 3.3);

if(test1==-999)
    
    etat1="Annuler";

else
    
    etat1="Valeur OK";
    
end

fprintf("\n Test 1 : %s", etat1);
fprintf("\n attendue : %.2f", attendue1);
fprintf("\n obtenue : %.2f", test1);


fprintf("\n Tapez -5, puis 10, puis 4");

test2 = saisirNombre("\nEntrer le nombre de cours dans lequel vous êtes inscrit cette session\n", 0, 4);

if(test2==-999)
    
    etat2="Annuler";

else
    
    etat2="Valeur OK";
    
end

fprintf("\n Test 1 : %s", etat2);
fprintf("\n attendue : %.2f", attendue2);
fprintf("\n obtenue : %.2f", test2);


