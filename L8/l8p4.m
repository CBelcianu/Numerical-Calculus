function l8p4
  %function inside integral
  f = @(x) x.*log(x);
  %integral interval
  a = 1; b = 2;
  %start with n from 1
  n = 1;
  expected_result=0.6362943688583;
  %reptrap at n=1
  actual_result=reptrap(f, a, b, n);
  %calculate accuracy of reptrap at n=1;
  accuracy=abs(actual_result-expected_result);
  while accuracy>0.0001
    %increase n 1 at a time
    n++;
    %calculate reptrap at new n value
    actual_result=reptrap(f, a, b, n);
    %update accuracy for new n
    accuracy=abs(actual_result-expected_result);
  endwhile
  %best n
  n
  %reptrap at best n
  reptrap(f, a, b, n)
endfunction