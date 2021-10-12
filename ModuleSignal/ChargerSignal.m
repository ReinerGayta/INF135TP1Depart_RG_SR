function ChargerSignal()
%
% Cette proc�dure permet de charger les donn�es d'un signal ECG.
% Ces donn�es seront accessibles par l'entremise des autres fonctions du ModuleInterface.
%
% Param�tres:
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
    
    %On ouvre le fichier re�u et on se d�barasse de la ligne d'ent�te.
    fid = fopen('ModuleSignal/Data/signal.ecg', 'rt');
    fgets(fid);
    
    %On charge les donn�es du signal
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