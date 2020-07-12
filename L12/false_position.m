function [c,i]=false_position(f,a,b,err)
  for i=1:100
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
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
