function l6p1
  nodes = [0 pi/2 pi 3*pi/2 2*pi];
  values = sin(nodes);
  der_vals = cos(nodes);
  der_der_vals = -sin(nodes);
  %a)
  hold on;
  %natural spline (bondary 0 or free boundary)
  natural = spline(nodes, [der_der_vals(1) values der_der_vals(end)]);
  %evaluate the picewise polynomial at pi/4
  ppval(natural, pi/4)
  %clamped spline (boundary f'(xn) or clamped boundary)
  clamped = spline(nodes, [der_vals(1) values der_vals(end)]);
  %evaluate the picewise polynomial at pi/4
  ppval(clamped, pi/4)
  %b) plot the function, natural spline and cubic spline
  spline_nodes = linspace(0,2*pi,100);
  natural_spline = spline(nodes, [0 values 0], spline_nodes);
  clamped_spline = spline(nodes, [der_vals(1) values der_vals(end)], spline_nodes);
  %plot table
  scatter(nodes, values);
  %plot natural spline
  plot(spline_nodes, natural_spline);
  %plot clamped spline
  plot(spline_nodes, clamped_spline);
endfunction