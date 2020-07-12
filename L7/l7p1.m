function l7p1
  %the table that was given
	hours = [1 2 3 4 5 6 7];
	temps = [13 15 20 14 15 13 10];
	%best lin sqares that approximates the table
  [a, b] = linear_best_squares(hours, temps);
	printf("temperature at 8:00 ");
  %a*(the hour) + b
	expected = a*8+b
	%find error
  err = error_linear_squares(hours, temps, a, b);
  
	clf; hold on;
  %plot the points
	scatter(hours, temps, "filled");
  %plot the least squares function
  least_squares = [];
  for i=1:length(hours)
    least_squares(i)=a*hours(i)+b;
  endfor
  least_squares(8)=expected;
	plot([hours 8], least_squares);
endfunction