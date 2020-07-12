function l5p3
  %15 equidistand space on [-5,5]
  nodes=linspace(-5,5,15);
  %apply sin2x for every node
  values=arrayfun(@(x) sin(2*x), nodes);
  %apply 2cos2x for every node
  der_vals=arrayfun(@(x) 2.*cos(2*x), nodes);
  hermite_nodes = linspace(-5, 5, 200);
  n = length(hermite_nodes);
  %column full of zeroes
  hermite = zeros(n,1);
  for i=1:n
    hermite(i) = Hermite_interp(nodes, values, der_vals, hermite_nodes(i));
  endfor
  clf; hold on;
  %plot sin2x
  scatter(nodes, values);
  %plot hermite
  plot(hermite_nodes, hermite);
  legend("sin2x", "Hermite interpolation");
endfunction
