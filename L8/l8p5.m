function l8p5
  %function inside integral
  f = @(x) 1./(4+sin(20*x));
  %integral interval
  a = 0; b = pi;
  %n=10
  printf("Simpson's n=10: ");
  repsim(f, a, b, 10)
  %n=30
  printf("Simpson's n=30: ");
  repsim(f, a, b, 30)
endfunction