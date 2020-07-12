function l8p3
  %r=110, p=75
  %the constant before the integral
  cst = 60 * 110 / (110^2 - 75^2);
  %function in the integral
  f = @(x) (1 - ((75/110)^2) .* sin(x)) .^ (1 / 2);
  %reptrap for n=2
  printf("reptrap n=2: ");
  cst * reptrap(f, 0, 2*pi, 3)
  %reptrap for n=4
  printf("reptrap n=4: ");
  cst * reptrap(f, 0, 2*pi, 4)
endfunction