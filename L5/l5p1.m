function l5p1
  %the given table
  %time
  nodes=[0 3 5 8 13];
  %distance
  values=[0 225 383 623 933];
  %speed
  der_values=[75 77 80 74 72];
  t=10; %t=10 as we have to estimate the speed at time=10 
  [distance,speed]=Hermite_interp(nodes,values,der_values,t)
endfunction