function l4p3
  clf; hold on; grid on;
  %row vector with 13 eqidistant points on [0,6]
  points = linspace(0, 6, 13);
  %the function given by the problem
  f = @(x) exp(sin(x));
  %plot the function
  fplot(f, [0 6]);
  
  int_values = arrayfun(f, points);
  aux = linspace(0,6,100);
  vls = Newton_interp(points, f(points), aux);
  %plot the interpolation points
  scatter(points, f(points), 'filled');
  %plot interpolation polinomial
  plot(linspace(0,6,100), vls);
  legend("f", "Iterpolation points", "Newton's interpolation");
endfunction