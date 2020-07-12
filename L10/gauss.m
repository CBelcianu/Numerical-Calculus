function x=gauss(A,b)
  n=length(b);
  A=[A b];
  for k=1:n-1
    [max_val, max_pos] = max(abs(A(k:n,k)));
    max_pos=max_pos+k-1;
    if max_val==0
      disp("No unique solution");
    elseif max_pos!=k
      A([k,max_pos],k:n+1)= A([max_pos,k],k:n+1);
    endif
    for i=k+1:n
      A(i,k:n+1)=A(i,k:n+1)-A(k,k:n+1)*(A(i,k)/A(k,k));
    endfor
  endfor
  x=triangularLinSys(A(:, 1:n),A(:,n+1));
endfunction
