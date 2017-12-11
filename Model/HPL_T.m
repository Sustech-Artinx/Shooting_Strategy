function HPL_T = heating (fc,V0,V1)
  cool_times = 1*fc;
  HP_lose = 0;
  [Q1 HP_lose_c] = cool_times * lose_heat(Q1);
  [Q1 HP_lose_g] = gain_heat(Q1);
  HP_lose = HP_lose_c + HP_lose_g;
  if (HP_lose > HP_max)
    HP_lose = HP_max;
  end
end

function [Q1 HP_lose] = gain_heat(Q1,V1)
    HP_lose = 0;
    % for 17mm bullet
    if (AD == 50)
      Q1 = Q1 + V1^2 * V1;

      % Over heating penlaty :
      if (Q1 > 1.5 * Q0)
        HP_lose = HP_lose + HP_max * (Q1 - 1.5 * Q0) / 2000;
        Q1 = 1.5 * Q0;
      end

      % Over shooting_speed penlaty :
      if (V1 - V0 >= 10)
        HP_lose = HP_lose + HP_max;
      elseif (V1 - V0 > 5)
        HP_lose = HP_lose + 0.5 * HP_max;
      elseif (V1 - V0 > 0)
        HP_lose = HP_lose + 0.1 * HP_max;
      end

    % for 45mm bullet
    elseif (AD == 500)
      Q1 = Q1 + 1600 * V1;
      % penalty on heat
      if (Q1 > 1.5 * Q0)
        HP_lose = HP_lose + HP_max * (Q1 - 1.5 * Q0) / 2000;
        Q1 = 1.5 * Q0;
      % Over shooting_speed penlaty :
      elseif (V1 > 1.2 * V0)
        HP_lose = 0.5 * HP_max;
      elseif (V1 > V0)
        HP_lose = 0.2 * HP_max;
      end
    end
end

function [Q1 HP_lose] = lose_heat(Q1,cooling_ratio)
  HP_lose = 0;
  if (Q0 < Q1)
    HP_lose = HP_max * (Q1 - Q0)/2000;
  end
  Q1 = Q1 - cooling_rate * 0.1;
end
