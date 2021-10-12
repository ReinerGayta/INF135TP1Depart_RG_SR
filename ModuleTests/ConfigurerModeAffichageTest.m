ConfigurerModeAffichageTest();
fprintf("---- TEST CONFIGURER MODE AFFICHAGE ----/N");

attendue1 = 1;
attendue2 = 3;

fprintf("Test 1: entrer 1");
ConfigurerModeAffichage();
fprintf("Attendue: %.0f",attendue1);

fprintf("Test 2: entrer 3");
ConfigurerModeAffichage();
fprintf("Attendue: %.0f",attendue2);