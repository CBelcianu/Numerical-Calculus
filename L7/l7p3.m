function err = l7p3
  axis equal; clf;
  %[0,3]X[0,5]
  axis([0 3 0 5]);
  grid on; hold on;
  set(gca, "FontSize", 15);
  
  % Get 10 points by drawing
  [x, y] = ginput(1); X=x; Y=y;
  for i=1:9
    plot(x, y, "*", 'MarkerSize', 12);
    [x, y] = ginput(1);
    X = [X x];
    Y = [Y y];
  endfor
  plot(x, y, "*", 'MarkerSize', 12);
  %least squares poly degree 2
  coefs_lsq = polyfit(X, Y, 2);
  poly_lsq = @(x) polyval(coefs_lsq,x);
  fplot(poly_lsq, [0, 3]);
endfunction