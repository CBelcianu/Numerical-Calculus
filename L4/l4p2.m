function l4p2
  %the table given by the problem
  nodes = [1 2 3 4 5];
  values = [22 23 25 30 28];
  %a)approx. pounds of potatoes expected from 2.5 pounds fertilizer
  Newton_interp(nodes, values, [2.5])
  
  clf; hold on; grid on;
  %b)plot the data given in the table
  %plot(nodes, values);
  scatter(nodes, values);
  
  %b)plot the corresponding Newton's interpolation
  points = linspace(1, 5, 50);
  vals = Newton_interp(nodes, values, points);
  plot(points, vals);
  legend("Table data", "Newton's Interpolation");
  legend("boxoff");
endfunction