# Shooting_Strategy
---
This rep, created by Si-yu Derrick ZHANG and matined by CV\&AI group of Artinx@SUSTech, is nothing other than a mathematical modeling for the strategy of shooting.

Two parts are contained in this rep:

1. Mathematical Models, both for HP_lose because of a over heating gun and for damage on enemy
2. Optimization Algorithm : At present, only PSO is included. (which is bascially because I'm not familiar with any other optimization method )

---
Result 1:
By miniziing HP lost due to penalty on shooting speed and shooting frequency and maximizing damage on a single car, we got the first version of
global optima:

### Parameters:

  AD = 50;
  Cooling Rate = 500;
  Refreshing Frequency = 10 times/s
  On Target Rate = 1;

### Results :

#### Infantry
##### Grade 1 Infantry
 
  Shooting Frequency : 5 bullets/s
  Shooting Speed     : 14m/s
  Damage             : 250 blood/s

##### Grade 2 Infantry
  Shooting Frequency : 5
  Shooting Speed     : 19
  Damage             : 250

##### Grade 3 Infantry
  Shooting Frequency : 5
  Shooting Speed     : 23
  Damage             : 250

#### Sentinal
Shooting Frequency : 5
Shooting Speed     : 24
Damage             : 250

#### Hero

##### Grade 1 Hero
