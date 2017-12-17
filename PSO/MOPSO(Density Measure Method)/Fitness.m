function value = Fitness(x)
	V1 = x(1);
	fs = x(2);
	hit_rate = 1;
	% AD = 50;
	global AD;
	f = hit(hit_rate,AD,fs);
	value = f;
end

	%%%%% BfK Function %%%%%
	function value = BfK(X)
		x = X(1);
		y = X(2);
		f1 = 4*x^2 + 4*y^2;
		f2 = (x-5)^2 + (y-5)^2;
		value = [f1
		     f2];
	end

 %%%% hiting damage %%%%%%

 function damage = hit(hit_rate, AD,fs)
   damage = hit_rate * AD * fs;
 end
