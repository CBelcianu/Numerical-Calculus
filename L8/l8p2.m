function l8p2
  f = @(x,y) log(x + 2*y);
  %0.4295545
  double_trap(f, 1.4, 2, 1, 1.5)
endfunction