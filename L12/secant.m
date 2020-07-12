function [x2,i]=secant(f,x0,x1,err)
  for i=1:100
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    if abs(x2-x1)<err || abs(f(x2))<err
      return
     endif
     x0=x1;
     x1=x2;
  endfor
endfunction
