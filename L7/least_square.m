function err=least_squares(k)
  clf;
  axis equal;axis([0 2 0 1]);
  xticks(0:0.1:2);
  grid on;hold on;
  set(gca,"fontsize",15)
  [x,y]=ginput(1);
  nodes=x;
  values=y;
  i=1;
  while ~isempty([x,y])
    plot(x,y,'*k','MarkerSize',10);
    [x,y]=ginput(1);
    i=i+1;
    nodes=[nodes,x];values=[values,y];
  endwhile
  coefs_lsq=polyfit(nodes,values,k);
  poly_lsq=@(x) polyval(coefs_lsq,x);
  fplot(poly_lsq,[0,2],'LineWidth',3);
  legend('off');
  err=norm(values-poly_lsq(nodes));
endfunction