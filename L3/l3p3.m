function l3p3
  clf; grid on; hold on;
  %define the function f(x)
  f = @(x) (1 + cos(pi.*x)) ./ (1+x);
  %plot the function on the interval [0,10]
  fplot(f, [0 10]);
  %row vector with 21 equally spaced points on [0,10]
  x = linspace(0, 10, 21);
  %execute function f on every element of x
  interp_points = arrayfun(f, x);
  %row vector with 500 equally spaced points on [0,10]
  points = linspace(0, 10, 500);
  %calculate lagrange interpolation
  lagrange_interp = LagrangeBary2(x, interp_points, points);
  %plot the result
  plot(points, lagrange_interp);
endfunction