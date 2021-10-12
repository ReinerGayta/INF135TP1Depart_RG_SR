function ChargerSignal()
%
% Cette procédure permet de charger les données d'un signal ECG.
% Ces données seront accessibles par l'entremise des autres fonctions du ModuleInterface.
%
% Paramètres:
%   - Aucun.
%
% Valeur de retour : 
%
%   - Aucun.
%
    global periodeLecture;    
    global indiceLecture;
    global tempsECG  ;
    global voltageECG;

    i = 0;
    
    %On ouvre le fichier reçu et on se débarasse de la ligne d'entête.
    fid = fopen('ModuleSignal/Data/signal.ecg', 'rt');
    fgets(fid);
    
    %On charge les données du signal
    while( ~feof(fid) )
        
        lecture = fscanf(fid, '%g\t%g\n', 2);
        
        i = i + 1;
        tempsECG(i)     = lecture(1);
        voltageECG(i)   = lecture(2);
    end
    
    %On initialiser les curseurs de lecture dans le signal.
    indiceLecture   = 1;
    periodeLecture  = 0;
    
    fclose(fid);
end