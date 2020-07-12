function x_new=sor(A,b,iterations, w)
  n=length(b);
  x_old=zeros(n,1);
  x_new=zeros(n,1);
  for k=1:iterations
    for i=1:n
      x_new(i)=(1/A(i,i))*(b(i)-A(i,1:i-1)*x_new(1:i-1)-A(i,i+1:n)*x_old(i+1:n));
    endfor
    x_new=(1-w)*x_old+w*x_new;
    x_old=x_new;
  endfor
endfunction
