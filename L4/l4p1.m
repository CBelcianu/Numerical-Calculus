function l4p1
  %the table given by the problem
  nodes = [1 1.5 2 3 4];
  values = [0 0.17609 0.30103 0.47712 0.60206];
  %Newton interpolation approximating log10 for 2.5 and 3.25
  Newton_interp(nodes, values, [2.5 3.25])
  
  %define f as lg of a number (lg == log10)
  f = @(x) log10(x);
  numbers = [];
  for i = 10:35
    %on the interval [10,35] calculate 1/i
    numbers = [numbers i/10];
  endfor
  
  %apply lg on the values with the function f
  vals = f(numbers);
  %approximate lg with Newton_interp
  nVals = Newton_interp(nodes, values, numbers);
  
  printf("Maximum interpolation error: ");
  %E = max|f(yi) - (N4f)(yi)|
  max(abs(nVals-vals))
endfunction