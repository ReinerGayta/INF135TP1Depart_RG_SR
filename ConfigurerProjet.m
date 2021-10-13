%Auteur: Gayta, Reiner Luis et Rey, Santiago
%Date: 2021-09-30
%Description: Ce script permet d'inclure le r�pertoire de chaque module du projet courant dans le
%r�pertoire de travail de Matlab.
%

% On nettoie l'environnement de Matlab.

clear;
clc;

% On ajoute les modules n�cessaires au projet.

addpath(pwd,'/','ModuleGraphe');
addpath(pwd,'/','ModuleMenu');
addpath(pwd,'/','ModuleSignal');
addpath(pwd,'/','ModuleTests');
addpath(pwd,'/','ModuleTraitement');
