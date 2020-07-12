function l3p1
  %approximate the population between 1955 and 1995
  %the table indicating the population at each year (from 10 in 10).
  nodes = [1930 1940 1950 1960 1970 1980];
  values = [123203 131669 150697 179323 203212 226505];
  %approximate the population between 1955 and 1995
  LagrangeBary2(nodes, values, [1955 1995])
endfunction