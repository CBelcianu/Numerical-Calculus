function [x_new,contor]=gauss_seidel2(A,b,err)
  x_old=zeros(size(b));
  M=tril(A);
  N=M-A;
  c=M\b;
  T=M\N;
  x_new=c+T*x_old;
  contor=1;
  while norm(x_new-x_old,inf)*norm(T,inf)/(1-norm(T,inf))>err
    x_old=x_new;
    x_new=c+T*x_old;
    contor++;
  endwhile
endfunction
