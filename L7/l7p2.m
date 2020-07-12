function l7p2
  %the table that was given
	nodes = [0 10 20 30 40 60 80 100];
	values = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];
  %a) polyfit for degree 3
	ls1 = polyfit(nodes, values, 2);
  %polyfit for degree 4
	ls2 = polyfit(nodes, values, 4);
	%T=45
  printf("least squares approx 1: ");
	v1 = polyval(ls1, 45)
  printf("least squares approx 2: ");
	v2 = polyval(ls2, 45)
  %P(45)=0.095848 - exact value
  printf("approx error 1: ");
  aproxErr1 = abs(v1 - 0.095848)
  printf("approx error 2: ");
	aproxErr2 = abs(v2 - 0.095848)
	%b)plot approx points, least squares and interp poly
  values1 = [];
	values2 = [];
  for i=1:length(nodes)
		values1(i) = polyval(ls1, nodes(i));  
		values2(i) = polyval(ls2, nodes(i)); 
	endfor
  clf; hold on;
  %nodes
  scatter(nodes, values, 'filled');
  %poly
	plot(nodes, values, 'r');
  %least squares
	plot(nodes, values1, 'g');
	plot(nodes, values2, 'y');
  legend("interpolation points","interpolation poly","approx1","approx2");
endfunction