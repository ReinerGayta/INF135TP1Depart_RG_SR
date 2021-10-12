function [temps, voltage] = ObtenirProchaineMesure()
%
% Cette fonction permet de simuler un capteur ecg. La prochaine donn�e valide sera
% transmises � l'utilisateur. Ce n'est pas toute les donn�es qui seront retransmises � 
% l'utilisateur. En fonction de la 'FIABILITE_CAPTEUR', des mesures 
% seront ignor�es.
%
% PARAM�TRES:
%   - Aucun.
%
% VALEUR DE RETOUR:
%   - temps     : Le temps, en seconde, o� la mesure ecg � �t� prise.
%   - voltage   : L'amplitude, en milivolt, o� la mesure ecg � �t� prise.
%
    Constantes;
    
    global indiceLecture;
    global periodeLecture;
    
    global tempsECG  ;
    global voltageECG;


    % On lit des donn�es jusqu'� ce qu'une d'elle soit retenu.
    donneeObtenue = 0;
    while ~donneeObtenue
    
        
        % On v�rifie si l'on transmet la prochaine donn�e disponible.
        donneeObtenue = rand() < FIABILITE_CAPTEUR;
        if donneeObtenue 
        
            % On r�cup�re la prochaine donn�e disponible.
            temps = tempsECG(indiceLecture) + periodeLecture * TEMPS_PERIODE;
            voltage = voltageECG(indiceLecture);
        end
        
        % On d�place le curseur de lecture pour passer � la prochaine donn�e et
        % l'on r�initialise la lecture lorsque le signal � �t� lu au complet.
        if indiceLecture == 500
            indiceLecture = 1;
            periodeLecture = periodeLecture + 1;
        else
            indiceLecture = indiceLecture + 1;
        end
    end

end