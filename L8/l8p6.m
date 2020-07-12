function l8p6
  %const outside integral
  const = 2/sqrt(pi);
  %function inside integral
  f=@(x) exp(-(x.^2));
  %interval is 0 to x, with x given as 0.5
  a=0; b=0.5;
  %n=4
  printf("Simpson's formula n=4: ");
  v1=const * repsim(f,a,b,4)
  %n=10
  printf("Simpson's formula n=10: ");
  v2=const * repsim(f,a,b,10)
  %estimate error given  res=0.520499 exact result
  printf("Accuracy n=4: ");
  res=0.520499;
  abs(v1-res)
  printf("Accuracy n=10: ");
  abs(v2-res)
endfunction