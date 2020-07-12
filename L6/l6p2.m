function l6p2
  axis equal; clf;
  axis([0 2 0 2]);
  grid on; hold on;
  set(gca, "FontSize", 15);
  
  % Get 5 points by drawing
  [x, y] = ginput(1); X=x; Y=y;
  for i = 1:4
    plot(x, y, "*", 'MarkerSize', 12);
    [x, y] = ginput(1);
    X = [X x];
    Y = [Y y];
  endfor
  plot(x, y, "*", 'MarkerSize', 12);
  
  % Plot the spline for these nodes
  nodes = linspace(0, 1, length(X));
  spline_nodes = linspace(0, 1, 100);
  spline_x = spline(nodes, X, spline_nodes);
  spline_y = spline(nodes, Y, spline_nodes);
  plot(spline_x, spline_y);
endfunction