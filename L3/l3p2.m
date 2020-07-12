function l3p2
  %3 nodes representing perfect squares
  nodes = [81 100 121 144];
  %the square root value of each of the numbers
  values = [9 10 11 12];
  %we chose 81,100,121 as they are close to 115.
  %approx square root of 115
  LagrangeBary(nodes, values, 115)
endfunction