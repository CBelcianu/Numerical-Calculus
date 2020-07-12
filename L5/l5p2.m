function l5p2
  nodes=[1 2];
  %apply ln on every value
  values=arrayfun(@(x) log(x), nodes);
  %apply 1/x on every value
  der_vals=arrayfun(@(x) 1/x, nodes);
  %find ln(1.5) using hermite interpolation
  [Hx, der]=Hermite_interp(nodes,values,der_vals,1.5)
  %add 1.5 to the nodes
  nodes=[nodes 1.5];
  %add the found value for ln(1.5) to values
  values=[values Hx];
  %add 1/1.5 to der_vals
  der_vals=[der_vals der];
  %find absolute error
  absErr = absolute_err(nodes, values, der_vals)
endfunction
