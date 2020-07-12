function absErr=absolute_err(nodes, values, der_vals)
  result=0;
  for i=1:length(nodes)
    result=result+abs(values(i)-Hermite_interp(nodes, values, der_vals, nodes(i)));
  endfor
  absErr = result;
endfunction