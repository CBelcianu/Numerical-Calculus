function table=div_dif_double(nodes,values,der_values) 
  %nodes: xl,...,xn
  %values:f(x1),...,f(xn)
  %der values:f1(x1),...,f'(xn)
  %table: divided differences
  n=2*length(nodes);table=NaN(n);
  double_nodes=repelem(nodes,2)';
  table(:,1)=repelem(values,2)';
  table(1:2:end-1,2)=der_values';
  table(2:2:end-2,2)=diff(values)'./diff(nodes)';
  for j=3:n
    for i=1:n-j+1 
      table(i,j)=(table(i+1,j-1)-table(i,j-1))/... 
                 (double_nodes(i+j-1)-double_nodes(i));
    endfor 
  endfor 
endfunction