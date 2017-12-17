function range = shooting_range(V1)
  % projection model
  h_shoot = 50;
  h_obj = 20;
  h = h_shoot - h_obj;
  t = sqrt(2 * h / g);
  range = v1 * t;
end
