function [x1,i]=newton(f,derf,x0,err)
  for i=1:100
    x1=x0-f(x0)/derf(x0);
    if abs(x0-x1)<err || abs(f(x1))<err
      return
     endif
     x0=x1;
  endfor
endfunction
