function [c,i]=bisection(f,a,b,err)
  for i=1:100
    c=(a+b)/2;
    if abs(a-b)<err || abs(f(c))<err
      return
     endif
     if f(a)*f(c)<0
       b=c;
      else
       a=c;
     endif
  endfor
endfunction
