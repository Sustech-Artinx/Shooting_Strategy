clc
clear
% Run MOPSO
%%% Shooting Parameters
global AD;
global HP_max;
global Q0;
global cooling_rate;
global   V0;
global fc;

% Infantry
% Grade 1
AD = 50;
V0 = 30;
fc = 10;
HP_max = 750;
Q0 = 1600;
cooling_rate = 500;
optima_set = [];
MOPSO;
% optima_set = optima;
%
% % Grade 2
% HP_max = 1000;
% Q0 = 3000;
% cooling_rate = 1000;
% mopso;
% optima_set(end+1) = optima;
%
% % Grade 3
% HP_max = 1500;
% Q0 = 6000;
% cooling_rate = 2000;
% mopso;
% optima_set(end+1) = optima;


% % Sentinal
% HP_max = 3000;
% Q0 = 4500;
% cooling_rate = 1500;
% mopso;

% Hero
% Grade1 Hero
% AD = 500;
% V0 = 16.5;
% fc = 10;
%
% HP_max = 1500;
% Q0 = 3200;
% cooling_rate = 1600;
% MOPSO;
