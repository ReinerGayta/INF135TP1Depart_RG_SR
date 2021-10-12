function [temps, voltage] = ObtenirProchaineMesure()
%
% Cette fonction permet de simuler un capteur ecg. La prochaine donnée valide sera
% transmises à l'utilisateur. Ce n'est pas toute les données qui seront retransmises à 
% l'utilisateur. En fonction de la 'FIABILITE_CAPTEUR', des mesures 
% seront ignorées.
%
% PARAMÈTRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - temps     : Le temps, en seconde, où la mesure ecg à été prise.
%   - voltage   : L'amplitude, en milivolt, où la mesure ecg à été prise.
%
    Constantes;
    
    global indiceLecture;
    global periodeLecture;
    
    global tempsECG  ;
    global voltageECG;


    % On lit des données jusqu'à ce qu'une d'elle soit retenu.
    donneeObtenue = 0;
    while ~donneeObtenue
    
        
        % On vérifie si l'on transmet la prochaine donnée disponible.
        donneeObtenue = rand() < FIABILITE_CAPTEUR;
        if donneeObtenue 
        
            % On récupère la prochaine donnée disponible.
            temps = tempsECG(indiceLecture) + periodeLecture * TEMPS_PERIODE;
            voltage = voltageECG(indiceLecture);
        end
        
        % On déplace le curseur de lecture pour passer à la prochaine donnée et
        % l'on réinitialise la lecture lorsque le signal à été lu au complet.
        if indiceLecture == 500
            indiceLecture = 1;
            periodeLecture = periodeLecture + 1;
        else
            indiceLecture = indiceLecture + 1;
        end
    end

end