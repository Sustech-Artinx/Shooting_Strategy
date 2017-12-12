% V_max : 17mm bullet : 30/ 45mm bullet : 16.5;
global V0 = 30;
% HP : infantry : 750,1000,1500;
% Sentinal : 3000
% Hero : 1500/2500/3500
global HP_max = 750;
% Q0 : infantry : 1600,3000,6000;
% Sentinal 4500
% Hero, 17mm : 1600/3000/6000, 45mm : 3200/6400/12800
global Q0 = 1600;
% colling rate : infantry : 500/1000/2000
% Sentinal : 1500
% Hero : 17mm : 500/1000/2000; 45mm : 1600/3200/6400
global cooling_rate = 500;
global fc = 10; % refresh frequency
global AD = 50; % 17mm: 50, 45mm : 500

% Occasion 1: Find max possible shooting velocity

% Objective function:
f1 = hit(hit_rate,AD,V1) % maximize
f2 = shooting_range(V1) % maximize
% Neat Damage
HP_lose = heating(fc,V0,V1);
f3 = f1 - HP_lose;
% Penalty :
% 1. Stabel & Suggested Shooting Velocity

% Constraint :
UB = [30]
LB = [0]
HP_lose = heating(fc,V0,V1); % HP_lose > 0
