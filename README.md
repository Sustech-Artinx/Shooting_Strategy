# Shooting_Strategy
---
This rep, created by Si-yu Derrick ZHANG and matined by CV\&AI group of Artinx@SUSTech, is nothing other than a mathematical modeling for the strategy of shooting.

Two parts are contained in this rep:

1. Mathematical Models, both for HP_lose because of a over heating gun and for damage on enemy
2. Optimization Algorithm : At present, only PSO is included. (which is bascially because I'm not familiar with any other optimization method )

#### *Update*
<br>Two optimization algorithm are provided now </br>
1. Naive PSO, as its name, is for naive optimization problems.
2. MOPSO (superposition) is a improved PSO algorithm with feasible area method.

If you are interesetd in the optimization algorithm, you might want to take a look at my previous work as a research assistant of Department of Mechanical and Energy Engineering, Southern University of Science and Technology, with Institude of Manufacturing Engineering, Tsinghua University at :
https://github.com/DeriZSY/hybrid_mopso

---
## Stage One : Naive Model (Already done)

### Assumptions :

1. Continuous shooting without a pause.
2. 100% on-target rate
3. Minimize HP lost due to over heat
4. Maximize Damage
5. Bounded shooting frequency and bounded shooting frequency.


### Result :
  The HP lost increases with the increase of either shooting frequency and shooting speed; while the damage only increases with the incrase of shooting frequency. Obviously, to maximize the damage and minize HP lost, we should first set shooting frequency to the maximum possible value, and then adjust the shooting speed to the maximum possible value with 0 HP lost.

####  *Note*
<br> PSO Algorithm used in this rep cannot find the exact global optima. Instead, it will reach somewhere nearby; I personally believe that this algorithm has some advancement as the requirement of modeling become more and more complex </br>

### GAPS:

1. Real boundary for shooting paramters, and real control model for shooting paramters (e.g. a process of acceleartion might need to be taken into consider )
2. Time gaps between shooting
3. Real on-target rate
4. Real shooting range (e.g. might include a model for long range shooting and a model for short range shooting )

---

## Stage Two :

### Improvement :

1. Using HP lost as a penlaty (instead of an objective )
2. Maximize neat damage

---

## Stage Three :

### Improvement :

1. Shooting with pause model
2. Real shooting model
3. Real shooting range
