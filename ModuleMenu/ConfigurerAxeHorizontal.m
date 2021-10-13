function ConfigurerAxeHorizontal()
%Auteur: Gayta, Reiner Luis et Rey, Santiago
 %Date: 04-10-2021 
 
 %Cette procedure permettra de modifier la valeur maximale
 %en X utilisé pour afficher le signal ECG
 
%Appel fonction Constantes pour avoir acces
%au constantes
Constantes();
 
 %Evaluation du nombre saisi pour tmax pour qu'il soit bien
 %dans l'intervalle voulu
 tmax = SaisirNombre('Quelle sera le temps maximale affiche?\n',0.01,5);
 
 %On verifie que la valeur entrée soit différente de -999
 if(tmax ~= -999)
 
 %Si l'operateur n'a pas annulee la valeur de tmax est enregistree
 %dans fonction ConfigurerAxes
 ConfigurerAxes(HORIZONTAL,0,tmax);
 end
 
end