function result = aitken(x, f, x1)
  n = length(x);
  D = x1 - x; %array with the differences between target and given squares
  A(:,1) = f; %column with the square roots of given squares
  %apply aitken's determinant formula
  for i = 2:n
      for j = 2:i
          A(i,j) = (D(j-1) * A(i,j-1) - D(i) * A(j-1,j-1)) / (x(i) - x(j-1));
      end
  end 
  result = A(n, n);
endfunction