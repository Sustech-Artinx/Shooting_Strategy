function optima = findOptima(rep)
  Pos = [rep.Position];
  maxSpeed = max(Pos(1,:));
  % i = find ([rep.Position] = Speed);
  rep(1).Position(1) = maxSpeed;
  optima = rep(1);
end
