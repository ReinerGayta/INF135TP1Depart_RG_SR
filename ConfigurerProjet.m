%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 30-09-2021
%Description: Ce script permet d'inclure le répertoire de chaque module du projet courant dans le
%répertoire de travail de Matlab.
%

% On nettoie l'environnement de Matlab.

clear;
clc;

% On ajoute les modules nécessaires au projet.

addpath(pwd,'/','ModuleGraphe');
addpath(pwd,'/','ModuleMenu');
addpath(pwd,'/','ModuleSignal');
addpath(pwd,'/','ModuleTests');
addpath(pwd,'/','ModuleTraitement');
