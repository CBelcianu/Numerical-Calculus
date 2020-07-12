function l8p1
  clf; hold on; grid on; 
  set(gca,'FontSize',15);
  %plot the function
  f = @(x) 2 ./ (1 + x.^ 2);
  fplot(f, [0 1]);
  %plot the trapezium with vertices
  %(0,0) (0,f(0)) (1,f(1)) (1,0)
  x = [0 0 1 1];
  y = [0 f(0) f(1) 0];
  plot(x, y);
  
  n = 10; a = 0; b = 1;
  printf("Trapezium formula: ");
  reptrap(f, a, b, n)
  printf("Simpson's formula: ");
  repsim(f, a, b, n)
endfunction