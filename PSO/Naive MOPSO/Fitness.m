function value = Fitness(x)
	V1 = x(1);
	sf = x(2);
	hit_rate = 1;
	% AD = 50;
	global AD;
	global fc;

	f1 = -hit(hit_rate,AD,sf);
	f2 = heating (fc,V1,sf);

	%% Model One
	value = [f1  f2]';

	% %% Model Tow
	% f = f1 + f2;
	% value = [f 0]';

	% %% Model Three
	% range = shooting_range(V1);
	% f = f1 + f2;
	% value = [f range]';

end

 %%%% hiting damage %%%%%%

 function damage = hit(hit_rate, AD,sf)
   damage = hit_rate * AD * sf;
 end

 %%%% shooting range  %%%%%%
 function range = shooting_range(V1)
   % projection model
   h_shoot = 50;
   h_obj = 20;
   h = h_shoot - h_obj;
   t = sqrt(2 * h / g);
   range = v1 * t;
 end
